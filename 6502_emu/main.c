#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define RAM_BASE 0x0000
#define CIA_BASE 0x4000
#define FDC_BASE 0x6000
#define ROM_BASE 0x8000
#define STACK_TOP 0x0100

#define RAM_SIZE 8192
#define ROM_SIZE 32768
#define CIA_SIZE 16
#define FDC_SIZE 8

unsigned char RAM[RAM_SIZE] = {0};
unsigned char ROM[ROM_SIZE] = {0};
unsigned char CIA[CIA_SIZE] = {0};
unsigned char FDC[FDC_SIZE] = {0};

unsigned char IR;	//instruction register

unsigned short PC;	//program counter

union P{
	unsigned char value;	//status register
	struct{
		unsigned char C:1;
		unsigned char Z:1;
		unsigned char I:1;
		unsigned char D:1;
		unsigned char B:1;
		unsigned char x:1;
		unsigned char V:1;
		unsigned char N:1;
	};
}P;

unsigned char SP;	//stack pointer
unsigned char A;	//accumulator
unsigned char X, Y;	//index registers

unsigned char DBG_FLAG = 0;

unsigned char peek(unsigned int addr){
	unsigned char val = 0;
	if(addr >= RAM_BASE && addr < RAM_BASE+RAM_SIZE){
		val = RAM[addr - RAM_BASE];
	}else if(addr >= CIA_BASE && addr < CIA_BASE+CIA_SIZE){
		val = CIA[addr - CIA_BASE];
		printf("\nread from CIA: %04X : %02X", addr, val);
		//getchar();
	}else if(addr >= FDC_BASE && addr < FDC_BASE+FDC_SIZE){
		val = FDC[addr - FDC_BASE];
		printf("\nread from FDC: %04X : %02X", addr, val);
		//getchar();
	}else if(addr >= ROM_BASE && addr < ROM_BASE+ROM_SIZE){
		val = ROM[addr - ROM_BASE];
	}
	return val;
}

void poke(unsigned int addr, unsigned char val){
	if(addr >= RAM_BASE && addr < RAM_BASE+RAM_SIZE){
		RAM[addr - RAM_BASE] = val;
	}else if(addr >= CIA_BASE && addr < CIA_BASE+CIA_SIZE){
		printf("\nwrite to CIA: %04X <- %02X", addr, val);
		//getchar();
		CIA[addr - CIA_BASE] = val;
	}else if(addr >= FDC_BASE && addr < FDC_BASE+FDC_SIZE){
		printf("\nwrite to FDC: %04X <- %02X", addr, val);
		//getchar();
		FDC[addr - FDC_BASE] = val;
	}else if(addr >= ROM_BASE && addr < ROM_BASE+ROM_SIZE){
		ROM[addr - ROM_BASE] = val;
	}
}

void dump_ROM(void){
	unsigned int block = 16;
	for(unsigned int i=0; i<ROM_SIZE; i+=block){
		printf("%04X:\t", i + ROM_BASE);
		for(unsigned int j=0; j<block; j++){
			printf("%02X ", peek(ROM_BASE+i+j));
		}
		printf("\n");
	}
}

void dump_RAM(void){
	unsigned int block = 16;
	for(unsigned int i=0; i<RAM_SIZE; i+=block){
		printf("%04X:\t", i + RAM_BASE);
		for(unsigned int j=0; j<block; j++){
			printf("%02X ", peek(RAM_BASE+i+j));
		}
		printf("\n");
	}
}

void dump_zeropage(void){
	printf("\n");
	unsigned int block = 16;
	for(unsigned int i=0; i<256; i+=block){
		printf("%04X:\t", i + RAM_BASE);
		for(unsigned int j=0; j<block; j++){
			printf("%02X ", peek(RAM_BASE+i+j));
		}
		printf("\n");
	}
	getc(stdin);
}

void dump_stack(void){
	printf("\n");
	unsigned int block = 16;
	for(unsigned int i=STACK_TOP; i<STACK_TOP+256; i+=block){
		printf("%04X:\t", i);
		for(unsigned int j=0; j<block; j++){
			if(i+j==STACK_TOP+SP){
				printf("\033[0;31m");
			}else if(i+j==STACK_TOP+SP+1){
				printf("\033[0;33m");
			}
			printf("%02X ", peek(i+j));
			printf("\033[0m"); 
		}
		printf("\n");
	}
	printf("\033[1A");
	getc(stdin);
}

void push(unsigned char val){
	poke(SP+0x0100, val);
	SP--;
	if(SP==0xFF){
		printf("Stack overflow!\n");
		dump_stack();
	}
}

unsigned char pop(){
	SP++;
	if(SP==0x00){
		printf("Stack underflow!\n");
		dump_stack();
	}
	return peek(SP+0x0100);
}

void breakpoint(void){
	static unsigned char brpcount = 0;
	printf("\n\t\033[0;31mBREAKPOINT %d\033[0m", brpcount);
	brpcount++;
	getchar();
}

void dump_CIA(void){
	printf("PRA:\t%02X\n", peek(CIA_BASE + 0));
	printf("PRB:\t%02X\n", peek(CIA_BASE + 1));
	printf("DDRA:\t%02X\n", peek(CIA_BASE + 2));
	printf("DDRB:\t%02X\n", peek(CIA_BASE + 3));
	printf("TA:\t%04X\n", peek(CIA_BASE + 4) | (peek(CIA_BASE + 5)<<8));
	printf("TB:\t%04X\n", peek(CIA_BASE + 6) | (peek(CIA_BASE + 7)<<8));
	printf("EVT:\t%06X\n", peek(CIA_BASE + 8) | (peek(CIA_BASE + 9)<<8) | (peek(CIA_BASE + 10)<<16));
	printf("SDR:\t%02X\n", peek(CIA_BASE + 12));
	printf("ICR:\t%02X\n", peek(CIA_BASE + 13));
	printf("CRA:\t%02X\n", peek(CIA_BASE + 14));
	printf("CRB:\t%02X\n", peek(CIA_BASE + 15));
}

unsigned char bcd(unsigned char hex){
	unsigned char bcdnum = hex % 10;
	bcdnum += (hex / 10) << 4;
	return bcdnum;
}

void reset(){
	P.value = 0;
	P.I = 1;
	P.x = 1; //(as in the implementation)
	PC = peek(0xFFFC) | (peek(0xFFFD)<<8);
	printf("%04X\n", PC);
}

void Handle_IRQ(){
	if(P.I==0){
		printf("\n\t\033[0;33mEXTERNAL INTERRUPT\033[0m PC=%04X\n",PC);
		push(PC >> 8);
		push(PC & 0xFF);
		P.I = 1;
		push(P.value);
		PC = (peek(0xFFFE) | (peek(0xFFFF) << 8));
		//dump_stack();
	}
}

unsigned char msb(unsigned char B){
	return ((B & 0x80) == 0) ? 0:1;
}

unsigned char lsb(unsigned char B){
	return ((B & 0x01) == 0) ? 0:1;
}


unsigned char zero(unsigned char B){
	return ((B==0) ? 1:0);
}

int fetch(){
	unsigned char operand = 0;
	unsigned short result = 0;
	IR = peek(PC);
	printf("%04X: %02X ", PC, IR);

/*BRK*/ if(IR==0x00){
		printf("BRK");
		PC++;
		push(PC >> 8);
		push((PC+1) & 0xFF);
		push(P.value|0x10);
		P.I = 1;
		PC = (peek(0xFFFE) | (peek(0xFFFF) << 8));
		//dump_stack();
/*NOP*/ }else if(IR==0xEA){
		PC++;
		printf("NOP");
/*ORA*/ }else if(IR==0x09 || IR==0x05 || IR==0x15 || IR==0x0D || IR==0x1D || IR==0x19 /*|| IR==0x01 || IR==0x11*/){
		printf("ORA ");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x09:	//immediate
			result = operand;
			break;
		case 0x05:	//zero page
			result = peek(operand);
			break;
		case 0x15:	//zero page, x
			result = peek(X + operand);
			break;
		case 0x0D:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0x1D:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0x19:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		//indirect addressing modes not implemented yet
		}
		A |= result;
		P.N = msb(A);
		P.Z = zero(A);
		PC++;
		printf("%02X", result);
/*EOR*/ }else if(IR==0x49 || IR==0x45 || IR==0x55 || IR==0x4D || IR==0x5D || IR==0x59 || IR==0x41 || IR==0x51){
		printf("EOR ");
		unsigned short t, cy, addr;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x49:	//immediate
			result = operand;
			break;
		case 0x45:	//zero page
			result = peek(operand);
			break;
		case 0x55:	//zero page, x
			result = peek(X + operand);
			break;
		case 0x4D:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0x5D:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0x59:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		case 0x41:	//indirext x
			result = peek(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8);
			break;
		case 0x51:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			result = peek(addr);
			break;
		}
		A = A ^ result;
		P.N = msb(A);
		P.Z = zero(A);
		PC++;
		printf("%02X", result);
/*AND*/ }else if(IR==0x29 || IR==0x25 || IR==0x35 || IR==0x2D || IR==0x3D || IR==0x39 || IR==0x21 || IR==0x31){
		printf("AND ");
		unsigned short t, cy, addr;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x29:	//immediate
			result = operand;
			break;
		case 0x25:	//zero page
			result = peek(operand);
			break;
		case 0x35:	//zero page, x
			result = peek(X + operand);
			break;
		case 0x2D:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0x3D:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0x39:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		case 0x21:	//indirext x
			result = peek(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8);
			break;
		case 0x31:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			result = peek(addr);
			break;
		}
		A = A & result;
		P.N = msb(A);
		P.Z = zero(A);
		PC++;
		printf("%02X, A=%02X", result, A);
/*ASL*/ }else if(IR==0x0A || IR==0x06 || IR==0x16 || IR==0x0E || IR==0x1E){
		printf("ASL");
		switch(IR){
		case 0x0A:
			result = A;
			P.C = msb(A);
			A = (A<<1) & 0xFE;
			P.N = msb(A);
			P.Z = zero(A);
			break;
		case 0x06:
			PC++;
			operand = peek(PC);
			result = peek(operand);
			P.C = msb(result);
			result = (result << 1) & 0xFE;
			poke(operand, result);
			P.N = msb(result);
			P.Z = zero(result);
			break;
		case 0x16:
			PC++;
			operand = peek(PC);
			result = peek(X + operand);
			P.C = msb(result);
			result = (result << 1) & 0xFE;
			poke(X + operand, result);
			P.N = msb(result);
			P.Z = zero(result);
			break;
		case 0x0E:
			PC++;
			operand = peek(PC);
			result = peek(operand | peek(PC+1)<<8);
			P.C = msb(result);
			result = (result << 1) & 0xFE;
			poke(operand | peek(PC+1)<<8, result);
			P.N = msb(result);
			P.Z = zero(result);
			PC++;
			break;
		case 0x1E:
			PC++;
			operand = peek(PC);
			result = peek((operand | peek(PC+1)<<8) + X);
			P.C = msb(result);
			result = (result << 1) & 0xFE;
			poke((operand | peek(PC+1)<<8) + X, result);
			P.N = msb(result);
			P.Z = zero(result);
			PC++;
			break;
		}
		PC++;
/*LSR*/ }else if(IR==0x4A || IR==0x46 || IR==0x56 || IR==0x4E || IR==0x5E){
		printf("LSR");
		P.N = 0;
		switch(IR){
		case 0x4A:
			P.C = lsb(A);
			A = (A>>1) & 0x7F;
			P.Z = zero(A);
			result = A;
			break;
		case 0x46:
			PC++;
			operand = peek(PC);
			result = peek(operand);
			P.C = lsb(result);
			result = (result >> 1) & 0x7F;
			poke(operand, result);
			P.Z = zero(result);
			break;
		case 0x56:
			PC++;
			operand = peek(PC);
			result = peek(X + operand);
			P.C = lsb(result);
			result = (result >> 1) & 0x7F;
			poke(X + operand, result);
			P.Z = zero(result);
			break;
		case 0x4E:
			PC++;
			operand = peek(PC);
			result = peek(operand | peek(PC+1)<<8);
			P.C = lsb(result);
			result = (result >> 1) & 0x7F;
			poke(operand | peek(PC+1)<<8, result);
			P.Z = zero(result);
			PC++;
			break;
		case 0x5E:
			PC++;
			operand = peek(PC);
			result = peek((operand | peek(PC+1)<<8) + X);
			P.C = lsb(result);
			result = (result >> 1) & 0x7F;
			poke((operand | peek(PC+1)<<8) + X, result);
			P.Z = zero(result);
			PC++;
			break;
		}
		PC++;
		printf("%02X", result);
/*PHP*/ }else if(IR==0x08){
		printf("PHP");
		push(P.value);
		//dump_stack();
		PC++;
/*PLP*/ }else if(IR==0x28){
		printf("PLP");
		P.value = pop();
		//dump_stack();
		PC++;
/*PHA*/ }else if(IR==0x48){
		printf("PHA");
		push(A);
		//dump_stack();
		PC++;
/*PLA*/ }else if(IR==0x68){
		printf("PLA");
		A = pop();
		//dump_stack();
		PC++;
/*TXS*/ }else if(IR==0x9A){
		SP=X;
		PC++;
		printf("\033[0;31m");
		printf("TXS SP=%02X", X);
		printf("\033[0m");
		//dump_stack();
/*TSX*/ }else if(IR==0xBA){
		X=SP;
		P.N = msb(X);
		P.Z = zero(X);
		PC++;
		printf("TSX");
/*TAY*/ }else if(IR==0xA8){
		Y = A;
		P.N = msb(Y);
		P.Z = zero(Y);
		PC++;
		printf("TAY");
/*TAX*/ }else if(IR==0xAA){
		X = A;
		P.N = msb(X);
		P.Z = zero(X);
		PC++;
		printf("TAX");
/*BPL*/ }else if(IR==0x10){
		printf("BPL");
		PC++;
		if(P.N==0){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf(" %d", (signed char)operand);
		}
		PC++;
/*BMI*/ }else if(IR==0x30){
		printf("BMI");
		PC++;
		if(P.N==1){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf(" %d", (signed char)operand);
		}
		PC++;
/*BVS*/ }else if(IR==0x70){
		printf("BVS");
		PC++;
		if(P.V==1){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf(" %d", (signed char)operand);
		}
		breakpoint();
		PC++;
/*CLC*/ }else if(IR==0x18){
		P.C = 0;
		PC++;
		printf("CLC");
/*SEI*/ }else if(IR==0x78){
		P.I = 1;
		PC++;
		printf("SEI");
/*CLI*/ }else if(IR==0x58){
		P.I = 0;
		PC++;
		printf("CLI");
/*SEC*/ }else if(IR==0x38){
		P.C = 1;
		PC++;
		printf("SEC");
/*CLD*/ }else if(IR==0xD8){
		P.D = 0;
		PC++;
		printf("CLD");
/*JSR*/ }else if(IR==0x20){
		printf("JSR ");
		push(((PC+2)>>8)&0xFF);
		push((PC+2)&0xFF);
		PC = peek(PC+1) | (peek(PC+2)<<8);
		printf("PC=%04X", PC);
		//dump_stack();
/*JMP*/ }else if(IR==0x4C || IR==0x6C){
		PC++;
		operand = peek(PC);
		unsigned short addr = operand | (peek(PC+1)<< 8);
		switch(IR){
		case 0x4C:	//immediate
			PC = addr;
			break;
		case 0x6C:	//absolute indirect
			PC = peek(addr) | (peek(addr+1)<<8);
			break;
		}
		printf("JMP %04X", PC);
/*RTS*/ }else if(IR==0x60){
		PC = pop();
		PC |= (pop()<<8);
		PC++;
		printf("RTS %04X", PC);
/*RTI*/ }else if(IR==0x40){
		P.value = pop();
		PC = pop();
		PC |= (pop()<<8);
		
		//TODO validate these:
		P.I = 0;
		P.B = 0;
		
		printf("RTI %04X", PC);
		//breakpoint();
		//dump_stack();
/*LDA*/ }else if(IR==0xA9 || IR==0xA5 || IR==0xB5 || IR==0xAD || IR==0xBD || IR==0xB9 /*|| IR==0xA1 || IR==0xB1*/){
		printf("LDA");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xA9:	//immediate
			result = operand;
			break;
		case 0xA5:	//zero page
			result = peek(operand);
			break;
		case 0xB5:	//zero page, x
			result = peek(X + operand);
			break;
		case 0xAD:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0xBD:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0xB9:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		//indirect addressing modes not implemented yet
		}
		A = result;
		P.N = msb(A);
		P.Z = zero(A);
		PC++;
/*STA*/ }else if(IR==0x85 || IR==0x95 || IR==0x8D || IR==0x9D || IR==0x99 || IR==0x81 || IR==0x91){
		printf("STA");
		PC++;
		unsigned short t, cy, addr;
		operand = peek(PC);
		switch(IR){
		case 0x85:	//zero page
			poke(operand, A);
			break;
		case 0x95:	//zero page, x
			poke(X + operand, A);
			break;
		case 0x8D:	//absolute
			poke(operand | peek(PC+1)<<8, A);
			PC++;
			break;
		case 0x9D:	//absolute, x
			poke((operand | peek(PC+1)<<8) + X, A);
			PC++;
			break;
		case 0x99:	//absolute, y
			poke((operand | peek(PC+1)<<8) + Y, A);
			PC++;
			break;
		case 0x81:	//indirext x
			poke(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8, A);
			break;
		case 0x91:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			poke(addr, A);
			break;
		}
		PC++;
/*STY*/ }else if(IR==0x84 || IR==0x94 || IR==0x8C){
		printf("STY");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x84:	//zero page
			poke(operand, Y);
			break;
		case 0x94:	//zero page, x
			poke(X + operand, Y);
			break;
		case 0x8C:	//absolute
			poke(operand | peek(PC+1)<<8, Y);
			PC++;
			break;
		}
		PC++;
/*STX*/ }else if(IR==0x86 || IR==0x96 || IR==0x8E){
		printf("STX");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x86:	//zero page
			poke(operand, X);
			break;
		case 0x96:	//zero page, y
			poke(Y + operand, X);
			break;
		case 0x8E:	//absolute
			poke(operand | peek(PC+1)<<8, X);
			PC++;
			break;
		}
		PC++;
/*LDY*/ }else if(IR==0xA0 || IR==0xA4 || IR==0xB4 || IR==0xAC || IR==0xBC){
		printf("LDY ");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xA0:	//immediate
			result = operand;
			break;
		case 0xA4:	//zero page
			result = peek(operand);
			break;
		case 0xB4:	//zero page, x
			result = peek(X + operand);
			break;
		case 0xAC:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0xBC:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		}
		Y = result;
		P.N = msb(Y);
		P.Z = zero(Y);
		PC++;
		printf("Y=%02X", result);
		
/*LDX*/ }else if(IR==0xA2 || IR==0xA6 || IR==0xB6 || IR==0xAE || IR==0xBE){
		printf("LDX ");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xA2:	//immediate
			result = operand;
			break;
		case 0xA6:	//zero page
			result = peek(operand);
			break;
		case 0xB6:	//zero page, x
			result = peek(X + operand);
			break;
		case 0xAE:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0xBE:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		}
		X = result;
		P.N = msb(X);
		P.Z = zero(X);
		PC++;
		printf("X=%02X", result);
/*TXA*/ }else if(IR==0x8A){
		printf("TXA ");
		A = X;
		P.N = msb(A);
		P.Z = zero(A);
		printf("A=%02X", A);
		PC++;
/*TYA*/ }else if(IR==0x98){
		printf("TYA ");
		A = Y;
		P.N = msb(A);
		P.Z = zero(A);
		printf("A=%02X", A);
		PC++;
/*INX*/ }else if(IR==0xE8){
		printf("INX ");
		X++;
		P.N = msb(X);
		P.Z = zero(X);
		printf("X=%02X", X);
		PC++;
/*INY*/ }else if(IR==0xC8){
		printf("INX ");
		Y++;
		P.N = msb(Y);
		P.Z = zero(Y);
		printf("Y=%02X", Y);
		PC++;
/*DEX*/ }else if(IR==0xCA){
		printf("DEX ");
		X--;
		P.Z = zero(X);
		P.N = msb(X);
		printf("X=%02X", X);
		PC++;
/*DEY*/ }else if(IR==0x88){
		printf("DEY ");
		Y--;
		P.Z = zero(Y);
		P.N = msb(Y);
		printf("Y=%02X", Y);
		PC++;
/*BNE*/ }else if(IR==0xD0){
		printf("BNE");
		PC++;
		if(P.Z==0){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf(" %d", (signed char)operand);
		}
		PC++;
/*BEQ*/ }else if(IR==0xF0){
		printf("BEQ ");
		PC++;
		if(P.Z==1){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf("%d", (signed char)operand);
		}
		PC++;
/*BCS*/ }else if(IR==0xB0){
		printf("BCS ");
		PC++;
		if(P.C==1){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf("%d", (signed char)operand);
		}
		PC++;
/*BCC*/ }else if(IR==0x90){
		printf("BCC ");
		PC++;
		if(P.C==0){
			operand = peek(PC);
			PC = PC + (signed char)operand;
			printf("%d", (signed char)operand);
		}
		PC++;
/*CMP*/ }else if(IR==0xC9 || IR==0xC5 || IR==0xD5 || IR==0xCD || IR==0xDD || IR==0xD9 || IR==0xC1 || IR==0xD1){
		printf("CMP ");
		unsigned short t, cy, addr;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xC9:	//immediate
			result = operand;
			break;
		case 0xC5:	//zero page
			result = peek(operand);
			break;
		case 0xD5:	//zero page, x
			result = peek(X + operand);
			break;
		case 0xCD:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0xDD:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0xD9:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		case 0xC1:	//indirect x
			result = peek(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8);
			break;
		case 0xD1:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			result = peek(addr);
			break;
		}
		t = (unsigned char)(A - result);
		P.N = msb(t);
		P.C = (A>=result) ? 1:0;
		P.Z = zero(t);
		printf("%02X", t);
		PC++;
/*CPY*/ }else if(IR==0xC0 || IR==0xC4 || IR==0xCC){
		printf("CPY ");
		unsigned short t;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xC0:	//immediate
			result = operand;
			break;
		case 0xC4:	//zero page
			result = peek(operand);
			break;
		case 0xCC:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		}
		t = Y - result;
		P.N = msb(t);
		P.C = (Y>=result) ? 1:0;
		P.Z = zero(t);
		PC++;
/*CPX*/ }else if(IR==0xE0 || IR==0xE4 || IR==0xEC){
		printf("CPX ");
		unsigned short t;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xE0:	//immediate
			result = operand;
			break;
		case 0xE4:	//zero page
			result = peek(operand);
			break;
		case 0xEC:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		}
		t = X - result;
		P.N = msb(t);
		P.C = (X>=result) ? 1:0;
		P.Z = zero(t);
		PC++;
/*BIT*/ }else if(IR==0x24 || IR==0x2C){
		printf("BIT ");
		PC++;
		unsigned char t;
		operand = peek(PC);
		switch(IR){
		case 0x24:	//zero page
			result = peek(operand);
			break;
		case 0x2C:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		}
		t = A & result;
		P.N = msb(result);
		P.V = result & (1<<6);
		P.Z = zero(t);
		printf("A=%02X M=%02X", A, result);
		PC++;		
/*INC*/ }else if(IR==0xE6 || IR==0xF6 || IR==0xEE || IR==0xFE){
		printf("INC ");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xE6:	//zero page
			result = (peek(operand)+1) & 0xFF;
			poke(operand, result);
			break;
		case 0xF6:	//zero page, x
			result = (peek(X + operand)+1) & 0xFF;
			poke(X + operand, result);
			break;
		case 0xEE:	//absolute
			result = (peek(operand | peek(PC+1)<<8)+1) & 0xFF;
			poke((operand | peek(PC+1)<<8), result);
			PC++;
			break;
		case 0xFE:	//absolute, x
			result = (peek((operand | peek(PC+1)<<8) + X)+1) & 0xFF;
			poke((operand | peek(PC+1)<<8) + X, result);
			PC++;
			break;
		}
		P.N = msb(result);
		P.Z = zero(result);
		printf("%02X", result);
		PC++;
/*DEC*/ }else if(IR==0xC6 || IR==0xD6 || IR==0xCE || IR==0xDE){
		printf("DEC ");
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0xC6:	//zero page
			result = (peek(operand)-1) & 0xFF;
			poke(operand, result);
			break;
		case 0xD6:	//zero page, x
			result = (peek(X + operand)-1) & 0xFF;
			poke(X + operand, result);
			break;
		case 0xCE:	//absolute
			result = (peek(operand | peek(PC+1)<<8)-1) & 0xFF;
			poke((operand | peek(PC+1)<<8), result);
			PC++;
			break;
		case 0xDE:	//absolute, x
			result = (peek((operand | peek(PC+1)<<8) + X)-1) & 0xFF;
			poke((operand | peek(PC+1)<<8) + X, result);
			PC++;
			break;
		}
		P.N = msb(result);
		P.Z = zero(result);
		printf("%02X", result);
		PC++;
/*ADC*/ }else if(IR==0x69 || IR==0x65 || IR==0x75 || IR==0x6D || IR==0x7D || IR==0x79 || IR==0x61 || IR==0x71){
		printf("ADC ");
		unsigned short t, cy;
		unsigned short addr;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x69:	//immediate
			result = operand;
			break;
		case 0x65:	//zero page
			result = peek(operand);
			break;
		case 0x75:	//zero page, x
			result = peek(X + operand);
			break;
		case 0x6D:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0x7D:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0x79:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		case 0x61:	//indirect x
			result = peek(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8);
			break;
		case 0x71:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			result = peek(addr);
			break;
		}
		printf("A:%02X ", A);
		t = A + result + (P.C==0 ? 0:1);
		P.V = (msb(A)!=msb(t)) ? 1:0;
		P.N = msb(A);
		P.Z = zero(t);
		if(P.D==1){
			t = bcd(A) + bcd(result) + (P.C==0 ? 0:1);
			P.C = (t>99) ? 1:0;
		}else{
			P.C = (t>255) ? 1:0;
		}
		A = t & 0xFF;
		printf("%02X", A);
		PC++;
/*SBC*/ }else if(IR==0xE9 || IR==0xE5 || IR==0xF5 || IR==0xED || IR==0xFD || IR==0xF9 || IR==0xE1 || IR==0xF1){
		printf("SBC ");
		short t, cy;
		unsigned short addr;
		PC++;
		operand = peek(PC);
		switch(IR){
		case 0x69:	//immediate
			result = operand;
			break;
		case 0x65:	//zero page
			result = peek(operand);
			break;
		case 0x75:	//zero page, x
			result = peek(X + operand);
			break;
		case 0x6D:	//absolute
			result = peek(operand | peek(PC+1)<<8);
			PC++;
			break;
		case 0x7D:	//absolute, x
			result = peek((operand | peek(PC+1)<<8) + X);
			PC++;
			break;
		case 0x79:	//absolute, y
			result = peek((operand | peek(PC+1)<<8) + Y);
			PC++;
			break;
		case 0x61:	//indirect x
			result = peek(peek((operand + X) & 0xFF) | peek((operand + X + 1) & 0xFF)<<8);
			break;
		case 0x71:	//indirect y
			cy = ((peek(operand) + Y < Y) || (peek(operand) + Y < peek(operand)) ? 1:0);
			addr = (peek(operand) + Y) & 0xFF | ((peek(operand+1) + cy) << 8);
			result = peek(addr);
			break;
		}
		printf("A:%02X ", A);
		if(P.D==1){
			t = bcd(A) - bcd(result) - (P.C!=0 ? 0:1);
			P.V = (t>99 || t<0) ? 1:0;
		}else{
			t = A - result - (P.C!=0 ? 0:1);
			P.V = (t>127 || t<-128) ? 1:0;
		}

		P.C = (t>=0) ? 1:0;
		P.N = msb(t);
		P.Z = zero(t);
		A = t & 0xFF;
		printf("%02X", A);
		PC++;
	}else{
		PC++;
		printf("Illegal opcode!\n");
		return 1;
	}
	printf("\n");
	return 0;
}

int main(void){
	FILE* binary = fopen("1581-rom.318045-02.bin","r");
	if(binary==NULL){
		printf("Executable binary code not found!\n");
		return -1;
	}
	fread(ROM, ROM_SIZE, 1, binary);
	fclose(binary);
	printf("ROM load complete.\n");
	dump_ROM();
	reset();
	char it_prev = P.I;
	unsigned char votma = 0;
	while(!fetch()){
		if(it_prev!=P.I){
			it_prev = P.I;
			if(P.I){
				printf("\033[0;41m");
				printf("Extrenal interrupts disabled");
				printf("\033[0m\n");
			}else{
				printf("\033[0;42m");
				printf("External interrupts enabled");
				printf("\033[0m\n");
			}
		}
		if(PC==0xAFE9){
			CIA[0x00] = 0xE6;	//read input as in simulation
		}
		if(PC==0xAF56){
			CIA[0x0D] = 0x01;	//Timer A expires as in simulation
		}
		if(PC==0xCBEC){
			FDC[0x00] = 0x90;	//fake index signals
		}
		if(PC==0x95A3 && !(P.I) && votma==0){
			CIA[0x0D] = 0x83;	//match IT status flags on cia
			Handle_IRQ();		//Timer B interrupt occurs
			votma++;
		}
		if(PC==0xDB02){
			votma++;
			if(votma==2){
				CIA[0x0D] = 0x01;
			}
		}
		if(PC==0x95A5){			//timer interrupt after motor startup
			votma++;
			if(votma>=3){
				CIA[0x0D] = 0x83;	//match IT status flags on cia
				Handle_IRQ();		//Timer B interrupt occurs
				//dump_zeropage();
			}
		}
		if(PC==0xAFD6){
			votma++;
			//TODO: update CIA flags majd
			printf("\n\tWIN! %u\n", votma);
			breakpoint();
		}
		/*
		if(DBG_FLAG){
			dump_zeropage();
			DBG_FLAG = 0;
		}*/
	}
	dump_zeropage();
	dump_stack();
	return 0;
}
