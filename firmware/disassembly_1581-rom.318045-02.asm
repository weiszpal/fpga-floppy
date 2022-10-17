                     * = $8000
8000   4D 19 CD      EOR $CD19
8003   01 A9         ORA ($A9,X)
8005   00            BRK
8006   85 35         STA $35
8008   20 62 A8      JSR $A862
800B   A5 53         LDA $53
800D   10 09         BPL $8018
800F   29 0F         AND #$0F
8011   C9 0F         CMP #$0F
8013   F0 03         BEQ $8018
8015   4C 78 96      JMP $9678
8018   20 65 81      JSR $8165
801B   B1 CD         LDA ($CD),Y
801D   8D 8F 02      STA $028F
8020   A2 0B         LDX #$0B
8022   BD 78 DB      LDA $DB78,X
8025   CD 8F 02      CMP $028F
8028   F0 08         BEQ $8032
802A   CA            DEX
802B   10 F5         BPL $8022
802D   A9 31         LDA #$31
802F   4C 7C 80      JMP $807C
8032   8E 2A 02      STX $022A
8035   E0 09         CPX #$09
8037   90 03         BCC $803C
8039   20 A2 80      JSR $80A2
803C   AE 2A 02      LDX $022A
803F   BD 84 DB      LDA $DB84,X
8042   85 40         STA $40
8044   BD 90 DB      LDA $DB90,X
8047   85 41         STA $41
8049   6C 40 00      JMP ($0040)
804C   A9 00         LDA #$00
804E   85 35         STA $35
8050   AD AB 02      LDA $02AB
8053   F0 03         BEQ $8058
8055   4C 7C 80      JMP $807C
8058   A0 00         LDY #$00
805A   98            TYA
805B   85 4D         STA $4D
805D   84 4E         STY $4E
805F   84 CD         STY $CD
8061   20 6D A8      JSR $A86D
8064   20 E5 81      JSR $81E5
8067   A9 00         LDA #$00
8069   85 6E         STA $6E
806B   20 71 80      JSR $8071
806E   4C 34 94      JMP $9434
8071   A0 28         LDY #$28
8073   A9 00         LDA #$00
8075   99 00 02      STA $0200,Y
8078   88            DEY
8079   10 FA         BPL $8075
807B   60            RTS
807C   A0 00         LDY #$00
807E   84 4D         STY $4D
8080   84 4E         STY $4E
8082   4C 3F FF      JMP $FF3F
8085   A2 00         LDX #$00
8087   8E 91 02      STX $0291
808A   A9 3A         LDA #$3A
808C   20 1C 81      JSR $811C
808F   F0 05         BEQ $8096
8091   88            DEY
8092   88            DEY
8093   8C 91 02      STY $0291
8096   4C 51 82      JMP $8251
8099   A0 00         LDY #$00
809B   A2 00         LDX #$00
809D   A9 3A         LDA #$3A
809F   4C 1C 81      JMP $811C
80A2   20 99 80      JSR $8099
80A5   D0 05         BNE $80AC
80A7   A9 34         LDA #$34
80A9   4C 7C 80      JMP $807C
80AC   88            DEY
80AD   88            DEY
80AE   8C 91 02      STY $0291
80B1   8A            TXA
80B2   D0 F3         BNE $80A7
80B4   A9 3D         LDA #$3D
80B6   20 1C 81      JSR $811C
80B9   8A            TXA
80BA   F0 02         BEQ $80BE
80BC   A9 40         LDA #$40
80BE   09 21         ORA #$21
80C0   8D A2 02      STA $02A2
80C3   E8            INX
80C4   8E 2E 02      STX $022E
80C7   8E 2F 02      STX $022F
80CA   AD A1 02      LDA $02A1
80CD   F0 0D         BEQ $80DC
80CF   A9 80         LDA #$80
80D1   0D A2 02      ORA $02A2
80D4   8D A2 02      STA $02A2
80D7   A9 00         LDA #$00
80D9   8D A1 02      STA $02A1
80DC   98            TYA
80DD   F0 29         BEQ $8108
80DF   9D 91 02      STA $0291,X
80E2   AD 2E 02      LDA $022E
80E5   8D 30 02      STA $0230
80E8   A9 8D         LDA #$8D
80EA   20 1C 81      JSR $811C
80ED   E8            INX
80EE   8E 2F 02      STX $022F
80F1   CA            DEX
80F2   AD A1 02      LDA $02A1
80F5   F0 02         BEQ $80F9
80F7   A9 08         LDA #$08
80F9   EC 2E 02      CPX $022E
80FC   F0 02         BEQ $8100
80FE   09 04         ORA #$04
8100   09 03         ORA #$03
8102   4D A2 02      EOR $02A2
8105   8D A2 02      STA $02A2
8108   AD A2 02      LDA $02A2
810B   AE 2A 02      LDX $022A
810E   3D 94 DB      AND $DB94,X
8111   D0 01         BNE $8114
8113   60            RTS
8114   8D AB 02      STA $02AB
8117   A9 30         LDA #$30
8119   4C 7C 80      JMP $807C
811C   8D 8F 02      STA $028F
811F   C4 29         CPY $29
8121   B0 2E         BCS $8151
8123   B1 CD         LDA ($CD),Y
8125   C8            INY
8126   CD 8F 02      CMP $028F
8129   F0 28         BEQ $8153
812B   C9 2A         CMP #$2A
812D   F0 04         BEQ $8133
812F   C9 3F         CMP #$3F
8131   D0 03         BNE $8136
8133   EE A1 02      INC $02A1
8136   C9 2C         CMP #$2C
8138   D0 E5         BNE $811F
813A   98            TYA
813B   9D 92 02      STA $0292,X
813E   AD A1 02      LDA $02A1
8141   29 7F         AND #$7F
8143   F0 07         BEQ $814C
8145   A9 80         LDA #$80
8147   95 F4         STA $F4,X
8149   8D A1 02      STA $02A1
814C   E8            INX
814D   E0 04         CPX #$04
814F   90 CE         BCC $811F
8151   A0 00         LDY #$00
8153   A5 29         LDA $29
8155   9D 92 02      STA $0292,X
8158   AD A1 02      LDA $02A1
815B   29 7F         AND #$7F
815D   F0 04         BEQ $8163
815F   A9 80         LDA #$80
8161   95 F4         STA $F4,X
8163   98            TYA
8164   60            RTS
8165   A4 CD         LDY $CD
8167   F0 36         BEQ $819F
8169   88            DEY
816A   F0 32         BEQ $819E
816C   AD 00 02      LDA $0200
816F   C9 55         CMP #$55
8171   D0 07         BNE $817A
8173   AD 01 02      LDA $0201
8176   C9 30         CMP #$30
8178   F0 04         BEQ $817E
817A   B9 00 02      LDA $0200,Y
817D   2C A9 00      BIT $00A9
8180   C9 0D         CMP #$0D
8182   F0 1B         BEQ $819F
8184   88            DEY
8185   AD 00 02      LDA $0200
8188   C9 55         CMP #$55
818A   D0 07         BNE $8193
818C   AD 01 02      LDA $0201
818F   C9 30         CMP #$30
8191   F0 04         BEQ $8197
8193   B9 00 02      LDA $0200,Y
8196   2C A9 00      BIT $00A9
8199   C9 0D         CMP #$0D
819B   F0 02         BEQ $819F
819D   C8            INY
819E   C8            INY
819F   84 29         STY $29
81A1   C0 2A         CPY #$2A
81A3   A0 FF         LDY #$FF
81A5   90 08         BCC $81AF
81A7   8C 2A 02      STY $022A
81AA   A9 32         LDA #$32
81AC   4C 7C 80      JMP $807C
81AF   A0 00         LDY #$00
81B1   98            TYA
81B2   85 CD         STA $CD
81B4   8D 6F 02      STA $026F
81B7   8D 2D 02      STA $022D
81BA   8D 33 02      STA $0233
81BD   85 67         STA $67
81BF   8D 30 02      STA $0230
81C2   8D 2E 02      STA $022E
81C5   8D 2F 02      STA $022F
81C8   8D A1 02      STA $02A1
81CB   8D AB 02      STA $02AB
81CE   A2 05         LDX #$05
81D0   9D 90 02      STA $0290,X
81D3   95 E4         STA $E4,X
81D5   95 E9         STA $E9,X
81D7   95 EE         STA $EE,X
81D9   95 F3         STA $F3,X
81DB   9D 96 02      STA $0296,X
81DE   9D 9B 02      STA $029B,X
81E1   CA            DEX
81E2   D0 EC         BNE $81D0
81E4   60            RTS
81E5   A9 00         LDA #$00
81E7   8D AB 02      STA $02AB
81EA   A5 79         LDA $79
81EC   29 DF         AND #$DF
81EE   85 79         STA $79
81F0   60            RTS
81F1   A9 50         LDA #$50
81F3   8D AB 02      STA $02AB
81F6   A5 79         LDA $79
81F8   09 40         ORA #$40
81FA   85 79         STA $79
81FC   60            RTS
81FD   AD 2F 02      LDA $022F
8200   8D 2E 02      STA $022E
8203   A9 01         LDA #$01
8205   8D 2F 02      STA $022F
8208   8D 30 02      STA $0230
820B   A2 00         LDX #$00
820D   86 67         STX $67
820F   BD 91 02      LDA $0291,X
8212   20 24 82      JSR $8224
8215   A6 67         LDX $67
8217   9D 91 02      STA $0291,X
821A   98            TYA
821B   95 EF         STA $EF,X
821D   E8            INX
821E   EC 2F 02      CPX $022F
8221   90 EA         BCC $820D
8223   60            RTS
8224   AA            TAX
8225   A0 00         LDY #$00
8227   A9 3A         LDA #$3A
8229   DD 01 02      CMP $0201,X
822C   F0 0C         BEQ $823A
822E   DD 00 02      CMP $0200,X
8231   D0 17         BNE $824A
8233   E8            INX
8234   98            TYA
8235   29 01         AND #$01
8237   A8            TAY
8238   8A            TXA
8239   60            RTS
823A   BD 00 02      LDA $0200,X
823D   E8            INX
823E   E8            INX
823F   C9 30         CMP #$30
8241   F0 F2         BEQ $8235
8243   C9 31         CMP #$31
8245   D0 ED         BNE $8234
8247   4C 2D 80      JMP $802D
824A   98            TYA
824B   09 80         ORA #$80
824D   29 81         AND #$81
824F   D0 E6         BNE $8237
8251   A9 00         LDA #$00
8253   8D A2 02      STA $02A2
8256   AC 91 02      LDY $0291
8259   B1 CD         LDA ($CD),Y
825B   20 95 82      JSR $8295
825E   10 0D         BPL $826D
8260   C8            INY
8261   C4 29         CPY $29
8263   B0 05         BCS $826A
8265   A4 29         LDY $29
8267   88            DEY
8268   D0 EF         BNE $8259
826A   CE A2 02      DEC $02A2
826D   4C F6 81      JMP $81F6
8270   A0 00         LDY #$00
8272   AD 2E 02      LDA $022E
8275   CD 2F 02      CMP $022F
8278   F0 16         BEQ $8290
827A   CE 2F 02      DEC $022F
827D   AC 2F 02      LDY $022F
8280   B9 91 02      LDA $0291,Y
8283   A8            TAY
8284   B1 CD         LDA ($CD),Y
8286   A0 05         LDY #$05
8288   D9 AB DB      CMP $DBAB,Y
828B   F0 03         BEQ $8290
828D   88            DEY
828E   D0 F8         BNE $8288
8290   98            TYA
8291   8D 33 02      STA $0233
8294   60            RTS
8295   C9 30         CMP #$30
8297   F0 06         BEQ $829F
8299   C9 31         CMP #$31
829B   F0 02         BEQ $829F
829D   09 80         ORA #$80
829F   29 81         AND #$81
82A1   60            RTS
82A2   A9 00         LDA #$00
82A4   85 40         STA $40
82A6   8D A4 02      STA $02A4
82A9   8D A3 02      STA $02A3
82AC   20 AE 84      JSR $84AE
82AF   F0 05         BEQ $82B6
82B1   A9 74         LDA #$74
82B3   20 7C 80      JSR $807C
82B6   4C F6 81      JMP $81F6
82B9   20 A2 82      JSR $82A2
82BC   A9 00         LDA #$00
82BE   85 73         STA $73
82C0   20 24 84      JSR $8424
82C3   D0 0B         BNE $82D0
82C5   CE A3 02      DEC $02A3
82C8   10 F2         BPL $82BC
82CA   60            RTS
82CB   20 89 84      JSR $8489
82CE   F0 10         BEQ $82E0
82D0   20 27 83      JSR $8327
82D3   AD A5 02      LDA $02A5
82D6   F0 01         BEQ $82D9
82D8   60            RTS
82D9   AD 6D 02      LDA $026D
82DC   30 ED         BMI $82CB
82DE   10 F0         BPL $82D0
82E0   AD A5 02      LDA $02A5
82E3   F0 E0         BEQ $82C5
82E5   60            RTS
82E6   20 77 84      JSR $8477
82E9   F0 0E         BEQ $82F9
82EB   D0 1C         BNE $8309
82ED   A9 00         LDA #$00
82EF   85 73         STA $73
82F1   20 24 84      JSR $8424
82F4   D0 13         BNE $8309
82F6   8D A5 02      STA $02A5
82F9   AD A5 02      LDA $02A5
82FC   D0 28         BNE $8326
82FE   CE A3 02      DEC $02A3
8301   10 EA         BPL $82ED
8303   60            RTS
8304   20 89 84      JSR $8489
8307   F0 F0         BEQ $82F9
8309   20 27 83      JSR $8327
830C   AE 6D 02      LDX $026D
830F   10 07         BPL $8318
8311   AD A5 02      LDA $02A5
8314   F0 EE         BEQ $8304
8316   D0 0E         BNE $8326
8318   AD 33 02      LDA $0233
831B   F0 09         BEQ $8326
831D   B5 F4         LDA $F4,X
831F   29 07         AND #$07
8321   CD 33 02      CMP $0233
8324   D0 DE         BNE $8304
8326   60            RTS
8327   A2 FF         LDX #$FF
8329   8E 6D 02      STX $026D
832C   E8            INX
832D   8E A1 02      STX $02A1
8330   20 D7 83      JSR $83D7
8333   F0 06         BEQ $833B
8335   60            RTS
8336   20 E2 83      JSR $83E2
8339   D0 FA         BNE $8335
833B   A9 00         LDA #$00
833D   55 EF         EOR $EF,X
833F   4A            LSR A
8340   90 0B         BCC $834D
8342   29 40         AND #$40
8344   F0 F0         BEQ $8336
8346   A9 02         LDA #$02
8348   CD A3 02      CMP $02A3
834B   F0 E9         BEQ $8336
834D   BD 91 02      LDA $0291,X
8350   AA            TAX
8351   20 26 85      JSR $8526
8354   A0 03         LDY #$03
8356   4C 6C 83      JMP $836C
8359   BD 00 02      LDA $0200,X
835C   D1 64         CMP ($64),Y
835E   F0 0A         BEQ $836A
8360   C9 3F         CMP #$3F
8362   D0 D2         BNE $8336
8364   B1 64         LDA ($64),Y
8366   C9 A0         CMP #$A0
8368   F0 CC         BEQ $8336
836A   E8            INX
836B   C8            INY
836C   EC 90 02      CPX $0290
836F   B0 0A         BCS $837B
8371   BD 00 02      LDA $0200,X
8374   C9 2A         CMP #$2A
8376   D0 E1         BNE $8359
8378   4C FA 83      JMP $83FA
837B   C0 13         CPY #$13
837D   B0 06         BCS $8385
837F   B1 64         LDA ($64),Y
8381   C9 A0         CMP #$A0
8383   D0 B1         BNE $8336
8385   AE 30 02      LDX $0230
8388   8E 6D 02      STX $026D
838B   B5 F4         LDA $F4,X
838D   29 80         AND #$80
838F   8D A1 02      STA $02A1
8392   AD 32 02      LDA $0232
8395   95 EA         STA $EA,X
8397   A5 4E         LDA $4E
8399   95 E5         STA $E5,X
839B   A0 00         LDY #$00
839D   B1 64         LDA ($64),Y
839F   C8            INY
83A0   48            PHA
83A1   29 40         AND #$40
83A3   85 40         STA $40
83A5   68            PLA
83A6   29 DF         AND #$DF
83A8   30 02         BMI $83AC
83AA   09 20         ORA #$20
83AC   29 27         AND #$27
83AE   05 40         ORA $40
83B0   85 40         STA $40
83B2   A9 80         LDA #$80
83B4   35 F4         AND $F4,X
83B6   05 40         ORA $40
83B8   95 F4         STA $F4,X
83BA   B5 EF         LDA $EF,X
83BC   29 80         AND #$80
83BE   95 EF         STA $EF,X
83C0   B1 64         LDA ($64),Y
83C2   9D 97 02      STA $0297,X
83C5   C8            INY
83C6   B1 64         LDA ($64),Y
83C8   9D 9C 02      STA $029C,X
83CB   AD 6F 02      LDA $026F
83CE   D0 07         BNE $83D7
83D0   A0 15         LDY #$15
83D2   B1 64         LDA ($64),Y
83D4   8D 6F 02      STA $026F
83D7   A9 FF         LDA #$FF
83D9   8D A5 02      STA $02A5
83DC   AD 2F 02      LDA $022F
83DF   8D 30 02      STA $0230
83E2   CE 30 02      DEC $0230
83E5   10 01         BPL $83E8
83E7   60            RTS
83E8   AE 30 02      LDX $0230
83EB   B5 F4         LDA $F4,X
83ED   30 05         BMI $83F4
83EF   BD 97 02      LDA $0297,X
83F2   D0 EE         BNE $83E2
83F4   A9 00         LDA #$00
83F6   8D A5 02      STA $02A5
83F9   60            RTS
83FA   86 3B         STX $3B
83FC   AE 90 02      LDX $0290
83FF   CA            DEX
8400   E4 3B         CPX $3B
8402   F0 1A         BEQ $841E
8404   A0 13         LDY #$13
8406   88            DEY
8407   B1 64         LDA ($64),Y
8409   C9 A0         CMP #$A0
840B   F0 F9         BEQ $8406
840D   BD 00 02      LDA $0200,X
8410   D1 64         CMP ($64),Y
8412   F0 04         BEQ $8418
8414   C9 3F         CMP #$3F
8416   D0 09         BNE $8421
8418   88            DEY
8419   CA            DEX
841A   E4 3B         CPX $3B
841C   D0 EF         BNE $840D
841E   4C 85 83      JMP $8385
8421   4C 36 83      JMP $8336
8424   A0 00         LDY #$00
8426   84 72         STY $72
8428   88            DEY
8429   8C 6D 02      STY $026D
842C   AD 2B 02      LDA $022B
842F   85 4D         STA $4D
8431   AD E5 01      LDA $01E5
8434   85 4E         STA $4E
8436   8D A6 02      STA $02A6
8439   20 CF 93      JSR $93CF
843C   AD A6 02      LDA $02A6
843F   D0 01         BNE $8442
8441   60            RTS
8442   A9 07         LDA #$07
8444   8D 31 02      STA $0231
8447   A9 00         LDA #$00
8449   20 50 94      JSR $9450
844C   8D A6 02      STA $02A6
844F   20 42 94      JSR $9442
8452   CE 31 02      DEC $0231
8455   A0 00         LDY #$00
8457   B1 64         LDA ($64),Y
8459   D0 14         BNE $846F
845B   A5 72         LDA $72
845D   D0 2A         BNE $8489
845F   20 79 9D      JSR $9D79
8462   A5 4E         LDA $4E
8464   85 72         STA $72
8466   A5 64         LDA $64
8468   A6 73         LDX $73
846A   85 73         STA $73
846C   F0 1B         BEQ $8489
846E   60            RTS
846F   A2 01         LDX #$01
8471   E4 73         CPX $73
8473   D0 2C         BNE $84A1
8475   F0 12         BEQ $8489
8477   AD 2B 02      LDA $022B
847A   85 4D         STA $4D
847C   A5 71         LDA $71
847E   85 4E         STA $4E
8480   20 CF 93      JSR $93CF
8483   AD 32 02      LDA $0232
8486   20 22 94      JSR $9422
8489   A9 FF         LDA #$FF
848B   8D 6D 02      STA $026D
848E   AD 31 02      LDA $0231
8491   30 08         BMI $849B
8493   A9 20         LDA #$20
8495   20 38 91      JSR $9138
8498   4C 4F 84      JMP $844F
849B   20 AA 93      JSR $93AA
849E   4C 3C 84      JMP $843C
84A1   A5 64         LDA $64
84A3   8D 32 02      STA $0232
84A6   20 79 9D      JSR $9D79
84A9   A5 4E         LDA $4E
84AB   85 71         STA $71
84AD   60            RTS
84AE   A5 2D         LDA $2D
84B0   D0 31         BNE $84E3
84B2   A9 01         LDA #$01
84B4   24 25         BIT $25
84B6   F0 2B         BEQ $84E3
84B8   20 CF B0      JSR $B0CF
84BB   20 B3 B0      JSR $B0B3
84BE   A9 80         LDA #$80
84C0   8D A8 02      STA $02A8
84C3   20 DC 8E      JSR $8EDC
84C6   A0 FF         LDY #$FF
84C8   C9 02         CMP #$02
84CA   F0 0A         BEQ $84D6
84CC   C9 03         CMP #$03
84CE   F0 06         BEQ $84D6
84D0   C9 0F         CMP #$0F
84D2   F0 02         BEQ $84D6
84D4   A0 00         LDY #$00
84D6   98            TYA
84D7   85 6E         STA $6E
84D9   D0 08         BNE $84E3
84DB   A9 80         LDA #$80
84DD   8D A8 02      STA $02A8
84E0   20 03 8F      JSR $8F03
84E3   24 8A         BIT $8A
84E5   10 04         BPL $84EB
84E7   A9 FF         LDA #$FF
84E9   85 6E         STA $6E
84EB   A5 6E         LDA $6E
84ED   60            RTS
84EE   48            PHA
84EF   20 26 85      JSR $8526
84F2   20 08 85      JSR $8508
84F5   68            PLA
84F6   38            SEC
84F7   ED 6C 02      SBC $026C
84FA   AA            TAX
84FB   F0 0A         BEQ $8507
84FD   90 08         BCC $8507
84FF   A9 A0         LDA #$A0
8501   91 64         STA ($64),Y
8503   C8            INY
8504   CA            DEX
8505   D0 FA         BNE $8501
8507   60            RTS
8508   98            TYA
8509   0A            ASL A
850A   A8            TAY
850B   B9 BB 00      LDA $00BB,Y
850E   85 64         STA $64
8510   B9 BC 00      LDA $00BC,Y
8513   85 65         STA $65
8515   A0 00         LDY #$00
8517   BD 00 02      LDA $0200,X
851A   91 64         STA ($64),Y
851C   C8            INY
851D   F0 06         BEQ $8525
851F   E8            INX
8520   EC 90 02      CPX $0290
8523   90 F2         BCC $8517
8525   60            RTS
8526   A9 00         LDA #$00
8528   8D 6C 02      STA $026C
852B   8A            TXA
852C   48            PHA
852D   BD 00 02      LDA $0200,X
8530   C9 2C         CMP #$2C
8532   F0 13         BEQ $8547
8534   C9 3D         CMP #$3D
8536   F0 0F         BEQ $8547
8538   EE 6C 02      INC $026C
853B   E8            INX
853C   A9 0F         LDA #$0F
853E   CD 6C 02      CMP $026C
8541   90 04         BCC $8547
8543   E4 29         CPX $29
8545   90 E6         BCC $852D
8547   8E 90 02      STX $0290
854A   68            PLA
854B   AA            TAX
854C   60            RTS
854D   A5 52         LDA $52
854F   48            PHA
8550   A5 50         LDA $50
8552   48            PHA
8553   20 5D 85      JSR $855D
8556   68            PLA
8557   85 50         STA $50
8559   68            PLA
855A   85 52         STA $52
855C   60            RTS
855D   A9 11         LDA #$11
855F   85 52         STA $52
8561   20 27 90      JSR $9027
8564   20 42 94      JSR $9442
8567   AD 6D 02      LDA $026D
856A   10 05         BPL $8571
856C   20 6B 86      JSR $866B
856F   18            CLC
8570   60            RTS
8571   AD A4 02      LDA $02A4
8574   F0 15         BEQ $858B
8576   CE A4 02      DEC $02A4
8579   D0 03         BNE $857E
857B   4C 2D 80      JMP $802D
857E   A9 00         LDA #$00
8580   8D 8E 02      STA $028E
8583   8D A4 02      STA $02A4
8586   20 27 86      JSR $8627
8589   38            SEC
858A   60            RTS
858B   A2 18         LDX #$18
858D   A0 1D         LDY #$1D
858F   B1 64         LDA ($64),Y
8591   8D 8E 02      STA $028E
8594   F0 02         BEQ $8598
8596   A2 16         LDX #$16
8598   88            DEY
8599   B1 64         LDA ($64),Y
859B   8D 8D 02      STA $028D
859E   E0 16         CPX #$16
85A0   F0 0A         BEQ $85AC
85A2   C9 0A         CMP #$0A
85A4   90 06         BCC $85AC
85A6   CA            DEX
85A7   C9 64         CMP #$64
85A9   90 01         BCC $85AC
85AB   CA            DEX
85AC   20 1C 86      JSR $861C
85AF   B1 64         LDA ($64),Y
85B1   48            PHA
85B2   0A            ASL A
85B3   10 05         BPL $85BA
85B5   A9 3C         LDA #$3C
85B7   9D AD 02      STA $02AD,X
85BA   68            PLA
85BB   29 0F         AND #$0F
85BD   A8            TAY
85BE   B9 B7 DB      LDA $DBB7,Y
85C1   9D AC 02      STA $02AC,X
85C4   CA            DEX
85C5   B9 B1 DB      LDA $DBB1,Y
85C8   9D AC 02      STA $02AC,X
85CB   CA            DEX
85CC   B9 AB DB      LDA $DBAB,Y
85CF   9D AC 02      STA $02AC,X
85D2   CA            DEX
85D3   CA            DEX
85D4   B0 05         BCS $85DB
85D6   A9 2A         LDA #$2A
85D8   9D AD 02      STA $02AD,X
85DB   A9 A0         LDA #$A0
85DD   9D AC 02      STA $02AC,X
85E0   CA            DEX
85E1   A0 12         LDY #$12
85E3   B1 64         LDA ($64),Y
85E5   9D AC 02      STA $02AC,X
85E8   CA            DEX
85E9   88            DEY
85EA   C0 03         CPY #$03
85EC   B0 F5         BCS $85E3
85EE   A9 22         LDA #$22
85F0   9D AC 02      STA $02AC,X
85F3   E8            INX
85F4   E0 20         CPX #$20
85F6   B0 0B         BCS $8603
85F8   BD AC 02      LDA $02AC,X
85FB   C9 22         CMP #$22
85FD   F0 04         BEQ $8603
85FF   C9 A0         CMP #$A0
8601   D0 F0         BNE $85F3
8603   A9 22         LDA #$22
8605   9D AC 02      STA $02AC,X
8608   E8            INX
8609   E0 20         CPX #$20
860B   B0 0A         BCS $8617
860D   A9 7F         LDA #$7F
860F   3D AC 02      AND $02AC,X
8612   9D AC 02      STA $02AC,X
8615   10 F1         BPL $8608
8617   20 04 83      JSR $8304
861A   38            SEC
861B   60            RTS
861C   A0 1B         LDY #$1B
861E   A9 20         LDA #$20
8620   99 AB 02      STA $02AB,Y
8623   88            DEY
8624   D0 FA         BNE $8620
8626   60            RTS
8627   20 AE 84      JSR $84AE
862A   20 33 B6      JSR $B633
862D   20 1C 86      JSR $861C
8630   A9 FF         LDA #$FF
8632   85 40         STA $40
8634   A9 00         LDA #$00
8636   8D 8D 02      STA $028D
8639   8D 8E 02      STA $028E
863C   A6 6C         LDX $6C
863E   BD F1 01      LDA $01F1,X
8641   85 65         STA $65
8643   AD 77 DB      LDA $DB77
8646   85 64         STA $64
8648   A0 16         LDY #$16
864A   B1 64         LDA ($64),Y
864C   C9 A0         CMP #$A0
864E   D0 02         BNE $8652
8650   A9 20         LDA #$20
8652   99 AE 02      STA $02AE,Y
8655   88            DEY
8656   10 F2         BPL $864A
8658   A9 12         LDA #$12
865A   8D AC 02      STA $02AC
865D   A9 22         LDA #$22
865F   8D AD 02      STA $02AD
8662   8D BE 02      STA $02BE
8665   A9 20         LDA #$20
8667   8D BF 02      STA $02BF
866A   60            RTS
866B   20 1C 86      JSR $861C
866E   A0 0B         LDY #$0B
8670   B9 7C 86      LDA $867C,Y
8673   99 AC 02      STA $02AC,Y
8676   88            DEY
8677   10 F7         BPL $8670
8679   4C 5B B6      JMP $B65B
867C   42            ???                ;01000010 'B'
867D   4C 4F 43      JMP $434F
8680   4B            ???                ;01001011 'K'
8681   53            ???                ;01010011 'S'
8682   20 46 52      JSR $5246
8685   45 45         EOR $45
8687   2E 20 70      ROL $7020
868A   82            ???                ;10000010
868B   20 0B 82      JSR $820B
868E   20 A2 82      JSR $82A2
8691   A9 00         LDA #$00
8693   85 55         STA $55
8695   20 ED 82      JSR $82ED
8698   30 6E         BMI $8708
869A   20 F5 9C      JSR $9CF5
869D   90 64         BCC $8703
869F   A0 00         LDY #$00
86A1   B1 64         LDA ($64),Y
86A3   8D EE 01      STA $01EE
86A6   29 40         AND #$40
86A8   D0 59         BNE $8703
86AA   20 3B 87      JSR $873B
86AD   AD EE 01      LDA $01EE
86B0   29 07         AND #$07
86B2   C9 05         CMP #$05
86B4   D0 25         BNE $86DB
86B6   C8            INY
86B7   B1 64         LDA ($64),Y
86B9   85 4D         STA $4D
86BB   C8            INY
86BC   B1 64         LDA ($64),Y
86BE   85 4E         STA $4E
86C0   A0 1C         LDY #$1C
86C2   B1 64         LDA ($64),Y
86C4   8D EE 01      STA $01EE
86C7   C8            INY
86C8   B1 64         LDA ($64),Y
86CA   8D ED 01      STA $01ED
86CD   20 B5 94      JSR $94B5
86D0   20 46 B5      JSR $B546
86D3   20 EF B2      JSR $B2EF
86D6   D0 F5         BNE $86CD
86D8   4C EE DB      JMP $DBEE
86DB   A0 13         LDY #$13
86DD   B1 64         LDA ($64),Y
86DF   F0 0A         BEQ $86EB
86E1   85 4D         STA $4D
86E3   C8            INY
86E4   B1 64         LDA ($64),Y
86E6   85 4E         STA $4E
86E8   20 13 87      JSR $8713
86EB   AE 6D 02      LDX $026D
86EE   A9 20         LDA #$20
86F0   35 F4         AND $F4,X
86F2   D0 0D         BNE $8701
86F4   BD 97 02      LDA $0297,X
86F7   85 4D         STA $4D
86F9   BD 9C 02      LDA $029C,X
86FC   85 4E         STA $4E
86FE   20 13 87      JSR $8713
8701   E6 55         INC $55
8703   20 E6 82      JSR $82E6
8706   10 92         BPL $869A
8708   A5 55         LDA $55
870A   85 4D         STA $4D
870C   A0 00         LDY #$00
870E   A9 01         LDA #$01
8710   4C 5D 80      JMP $805D
8713   20 46 B5      JSR $B546
8716   20 CF 93      JSR $93CF
8719   A9 00         LDA #$00
871B   20 22 94      JSR $9422
871E   20 9B 90      JSR $909B
8721   85 4D         STA $4D
8723   20 9B 90      JSR $909B
8726   85 4E         STA $4E
8728   A5 4D         LDA $4D
872A   D0 06         BNE $8732
872C   20 15 B5      JSR $B515
872F   4C 9E 91      JMP $919E
8732   20 46 B5      JSR $B546
8735   20 AA 93      JSR $93AA
8738   4C 19 87      JMP $8719
873B   A0 00         LDY #$00
873D   98            TYA
873E   91 64         STA ($64),Y
8740   20 9A 9D      JSR $9D9A
8743   4C ED 94      JMP $94ED
8746   A5 90         LDA $90
8748   85 4D         STA $4D
874A   A9 00         LDA #$00
874C   85 4E         STA $4E
874E   20 88 95      JSR $9588
8751   20 CF B0      JSR $B0CF
8754   A9 C0         LDA #$C0
8756   20 9D 95      JSR $959D
8759   A4 9B         LDY $9B
875B   A9 00         LDA #$00
875D   85 9B         STA $9B
875F   A9 F0         LDA #$F0
8761   20 9D 95      JSR $959D
8764   84 9B         STY $9B
8766   C9 02         CMP #$02
8768   90 03         BCC $876D
876A   4C 2D FF      JMP $FF2D
876D   60            RTS
876E   A9 00         LDA #$00
8770   8D 00 0A      STA $0A00
8773   A9 1F         LDA #$1F
8775   85 70         STA $70
8777   20 99 80      JSR $8099
877A   D0 03         BNE $877F
877C   4C 7E 89      JMP $897E
877F   20 AC 80      JSR $80AC
8782   20 0B 82      JSR $820B
8785   AD A2 02      LDA $02A2
8788   29 55         AND #$55
878A   D0 0F         BNE $879B
878C   AE 91 02      LDX $0291
878F   BD 00 02      LDA $0200,X
8792   C9 2A         CMP #$2A
8794   D0 05         BNE $879B
8796   A9 30         LDA #$30
8798   4C 7C 80      JMP $807C
879B   AD A2 02      LDA $02A2
879E   29 D9         AND #$D9
87A0   D0 F4         BNE $8796
87A2   20 B9 82      JSR $82B9
87A5   AD 2F 02      LDA $022F
87A8   C9 03         CMP #$03
87AA   90 42         BCC $87EE
87AC   A5 EF         LDA $EF
87AE   C5 F0         CMP $F0
87B0   D0 3C         BNE $87EE
87B2   A5 EA         LDA $EA
87B4   C5 EB         CMP $EB
87B6   D0 36         BNE $87EE
87B8   A5 E5         LDA $E5
87BA   C5 E6         CMP $E6
87BC   D0 30         BNE $87EE
87BE   20 03 89      JSR $8903
87C1   A9 01         LDA #$01
87C3   8D 30 02      STA $0230
87C6   20 41 88      JSR $8841
87C9   20 5F 90      JSR $905F
87CC   B0 04         BCS $87D2
87CE   C9 02         CMP #$02
87D0   D0 05         BNE $87D7
87D2   A9 64         LDA #$64
87D4   20 7C 80      JSR $807C
87D7   A9 12         LDA #$12
87D9   85 52         STA $52
87DB   A5 B9         LDA $B9
87DD   85 BA         STA $BA
87DF   A9 FF         LDA #$FF
87E1   85 B9         STA $B9
87E3   20 CC 98      JSR $98CC
87E6   A2 02         LDX #$02
87E8   20 00 88      JSR $8800
87EB   4C 4C 80      JMP $804C
87EE   20 F4 87      JSR $87F4
87F1   4C 4C 80      JMP $804C
87F4   20 1E 89      JSR $891E
87F7   20 E0 93      JSR $93E0
87FA   20 AB 95      JSR $95AB
87FD   AE 2E 02      LDX $022E
8800   8E 30 02      STX $0230
8803   20 41 88      JSR $8841
8806   A9 11         LDA #$11
8808   85 52         STA $52
880A   20 27 90      JSR $9027
880D   20 5F 90      JSR $905F
8810   D0 03         BNE $8815
8812   20 95 88      JSR $8895
8815   A9 08         LDA #$08
8817   85 51         STA $51
8819   4C 1F 88      JMP $881F
881C   20 5C 8E      JSR $8E5C
881F   20 76 88      JSR $8876
8822   A9 80         LDA #$80
8824   20 E4 9C      JSR $9CE4
8827   F0 F3         BEQ $881C
8829   20 5F 90      JSR $905F
882C   F0 03         BEQ $8831
882E   20 5C 8E      JSR $8E5C
8831   AE 30 02      LDX $0230
8834   E8            INX
8835   EC 2F 02      CPX $022F
8838   90 C6         BCC $8800
883A   A9 12         LDA #$12
883C   85 52         STA $52
883E   4C 9F 99      JMP $999F
8841   AE 30 02      LDX $0230
8844   AD 2B 02      LDA $022B
8847   85 4D         STA $4D
8849   B5 E5         LDA $E5,X
884B   85 4E         STA $4E
884D   20 CF 93      JSR $93CF
8850   AE 30 02      LDX $0230
8853   B5 EA         LDA $EA,X
8855   20 22 94      JSR $9422
8858   AE 30 02      LDX $0230
885B   B5 F4         LDA $F4,X
885D   29 07         AND #$07
885F   8D 2D 02      STA $022D
8862   A9 00         LDA #$00
8864   8D 6F 02      STA $026F
8867   20 4D 98      JSR $984D
886A   A0 01         LDY #$01
886C   20 5F 90      JSR $905F
886F   F0 01         BEQ $8872
8871   C8            INY
8872   98            TYA
8873   4C 22 94      JMP $9422
8876   A9 11         LDA #$11
8878   85 52         STA $52
887A   20 F4 92      JSR $92F4
887D   85 54         STA $54
887F   A6 50         LDX $50
8881   BD 34 02      LDA $0234,X
8884   29 08         AND #$08
8886   85 51         STA $51
8888   D0 0A         BNE $8894
888A   20 5F 90      JSR $905F
888D   F0 05         BEQ $8894
888F   A9 80         LDA #$80
8891   20 D5 9C      JSR $9CD5
8894   60            RTS
8895   20 5C A1      JSR $A15C
8898   20 6E A5      JSR $A56E
889B   D0 04         BNE $88A1
889D   AD 00 01      LDA $0100
88A0   48            PHA
88A1   A5 6A         LDA $6A
88A3   48            PHA
88A4   A5 69         LDA $69
88A6   48            PHA
88A7   A9 12         LDA #$12
88A9   85 52         STA $52
88AB   20 42 90      JSR $9042
88AE   20 38 A4      JSR $A438
88B1   85 6B         STA $6B
88B3   68            PLA
88B4   85 69         STA $69
88B6   68            PLA
88B7   85 6A         STA $6A
88B9   20 6E A5      JSR $A56E
88BC   D0 04         BNE $88C2
88BE   68            PLA
88BF   8D 00 01      STA $0100
88C2   4C DC A2      JMP $A2DC
88C5   20 0B 82      JSR $820B
88C8   A5 F0         LDA $F0
88CA   29 01         AND #$01
88CC   85 F0         STA $F0
88CE   C5 EF         CMP $EF
88D0   F0 02         BEQ $88D4
88D2   09 80         ORA #$80
88D4   85 EF         STA $EF
88D6   20 B9 82      JSR $82B9
88D9   20 1E 89      JSR $891E
88DC   A5 E6         LDA $E6
88DE   85 4E         STA $4E
88E0   20 94 9D      JSR $9D94
88E3   20 ED 94      JSR $94ED
88E6   A5 EB         LDA $EB
88E8   18            CLC
88E9   69 03         ADC #$03
88EB   20 22 94      JSR $9422
88EE   20 11 9F      JSR $9F11
88F1   A8            TAY
88F2   AE 91 02      LDX $0291
88F5   A9 10         LDA #$10
88F7   20 EE 84      JSR $84EE
88FA   20 9A 9D      JSR $9D9A
88FD   20 ED 94      JSR $94ED
8900   4C 4C 80      JMP $804C
8903   A5 F5         LDA $F5
8905   29 07         AND #$07
8907   8D 2D 02      STA $022D
890A   AE 2F 02      LDX $022F
890D   CA            DEX
890E   EC 2E 02      CPX $022E
8911   90 0A         BCC $891D
8913   BD 97 02      LDA $0297,X
8916   D0 F5         BNE $890D
8918   A9 62         LDA #$62
891A   4C 7C 80      JMP $807C
891D   60            RTS
891E   20 03 89      JSR $8903
8921   BD 97 02      LDA $0297,X
8924   F0 05         BEQ $892B
8926   A9 63         LDA #$63
8928   4C 7C 80      JMP $807C
892B   CA            DEX
892C   10 F3         BPL $8921
892E   60            RTS
892F   AD 01 02      LDA $0201
8932   C9 2D         CMP #$2D
8934   D0 48         BNE $897E
8936   AD 03 02      LDA $0203
8939   85 40         STA $40
893B   AD 04 02      LDA $0204
893E   85 41         STA $41
8940   A0 00         LDY #$00
8942   AD 02 02      LDA $0202
8945   C9 52         CMP #$52
8947   F0 0B         BEQ $8954
8949   C9 57         CMP #$57
894B   F0 36         BEQ $8983
894D   C9 45         CMP #$45
894F   D0 2D         BNE $897E
8951   6C 40 00      JMP ($0040)
8954   B1 40         LDA ($40),Y
8956   85 54         STA $54
8958   A5 29         LDA $29
895A   C9 06         CMP #$06
895C   90 1A         BCC $8978
895E   AE 05 02      LDX $0205
8961   CA            DEX
8962   F0 14         BEQ $8978
8964   8A            TXA
8965   18            CLC
8966   65 40         ADC $40
8968   E6 40         INC $40
896A   8D 48 02      STA $0248
896D   A5 40         LDA $40
896F   85 CF         STA $CF
8971   A5 41         LDA $41
8973   85 D0         STA $D0
8975   4C 9F 93      JMP $939F
8978   20 27 90      JSR $9027
897B   4C 96 93      JMP $9396
897E   A9 31         LDA #$31
8980   4C 7C 80      JMP $807C
8983   B9 06 02      LDA $0206,Y
8986   91 40         STA ($40),Y
8988   C8            INY
8989   CC 05 02      CPY $0205
898C   90 F5         BCC $8983
898E   60            RTS
898F   AC 01 02      LDY $0201
8992   C0 30         CPY #$30
8994   D0 36         BNE $89CC
8996   A5 29         LDA $29
8998   C9 03         CMP #$03
899A   90 27         BCC $89C3
899C   78            SEI
899D   AD 02 02      LDA $0202
89A0   85 7C         STA $7C
89A2   29 1F         AND #$1F
89A4   AA            TAX
89A5   0A            ASL A
89A6   A8            TAY
89A7   B9 36 DB      LDA $DB36,Y
89AA   85 46         STA $46
89AC   B9 37 DB      LDA $DB37,Y
89AF   85 47         STA $47
89B1   20 F6 81      JSR $81F6
89B4   A5 76         LDA $76
89B6   29 FB         AND #$FB
89B8   85 76         STA $76
89BA   20 C0 89      JSR $89C0
89BD   4C 4C 80      JMP $804C
89C0   6C 46 00      JMP ($0046)
89C3   A9 EA         LDA #$EA
89C5   85 33         STA $33
89C7   A9 FF         LDA #$FF
89C9   85 34         STA $34
89CB   60            RTS
89CC   20 D2 89      JSR $89D2
89CF   4C 4C 80      JMP $804C
89D2   88            DEY
89D3   98            TYA
89D4   29 0F         AND #$0F
89D6   0A            ASL A
89D7   A8            TAY
89D8   B1 33         LDA ($33),Y
89DA   85 46         STA $46
89DC   C8            INY
89DD   B1 33         LDA ($33),Y
89DF   85 47         STA $47
89E1   6C 46 00      JMP ($0046)
89E4   A5 52         LDA $52
89E6   48            PHA
89E7   20 AE 84      JSR $84AE
89EA   68            PLA
89EB   85 52         STA $52
89ED   A6 29         LDX $29
89EF   CA            DEX
89F0   D0 0D         BNE $89FF
89F2   A9 01         LDA #$01
89F4   20 5A 91      JSR $915A
89F7   4C 35 8A      JMP $8A35
89FA   A9 70         LDA #$70
89FC   4C 7C 80      JMP $807C
89FF   A0 01         LDY #$01
8A01   20 AC 8A      JSR $8AAC
8A04   AE 9C 02      LDX $029C
8A07   E0 08         CPX #$08
8A09   B0 EF         BCS $89FA
8A0B   A9 00         LDA #$00
8A0D   85 40         STA $40
8A0F   38            SEC
8A10   26 40         ROL $40
8A12   CA            DEX
8A13   10 FB         BPL $8A10
8A15   A5 40         LDA $40
8A17   25 6D         AND $6D
8A19   D0 DF         BNE $89FA
8A1B   A5 40         LDA $40
8A1D   05 6D         ORA $6D
8A1F   85 6D         STA $6D
8A21   A9 00         LDA #$00
8A23   20 5A 91      JSR $915A
8A26   A6 50         LDX $50
8A28   AD 9C 02      LDA $029C
8A2B   95 D1         STA $D1,X
8A2D   AA            TAX
8A2E   A9 00         LDA #$00
8A30   95 02         STA $02,X
8A32   9D 72 02      STA $0272,X
8A35   A6 52         LDX $52
8A37   B5 A8         LDA $A8,X
8A39   09 40         ORA #$40
8A3B   95 A8         STA $A8,X
8A3D   A4 50         LDY $50
8A3F   A9 FF         LDA #$FF
8A41   99 42 02      STA $0242,Y
8A44   A9 89         LDA #$89
8A46   99 34 02      STA $0234,Y
8A49   B9 D1 00      LDA $00D1,Y
8A4C   99 3B 02      STA $023B,Y
8A4F   0A            ASL A
8A50   AA            TAX
8A51   A9 01         LDA #$01
8A53   95 BB         STA $BB,X
8A55   A9 0E         LDA #$0E
8A57   99 F9 00      STA $00F9,Y
8A5A   4C 4C 80      JMP $804C
8A5D   A0 00         LDY #$00
8A5F   A2 00         LDX #$00
8A61   A9 2D         LDA #$2D
8A63   20 1C 81      JSR $811C
8A66   D0 0A         BNE $8A72
8A68   A9 31         LDA #$31
8A6A   4C 7C 80      JMP $807C
8A6D   A9 30         LDA #$30
8A6F   4C 7C 80      JMP $807C
8A72   8A            TXA
8A73   D0 F8         BNE $8A6D
8A75   A2 09         LDX #$09
8A77   B9 00 02      LDA $0200,Y
8A7A   DD 61 8C      CMP $8C61,X
8A7D   F0 05         BEQ $8A84
8A7F   CA            DEX
8A80   10 F8         BPL $8A7A
8A82   30 E4         BMI $8A68
8A84   8A            TXA
8A85   09 80         ORA #$80
8A87   8D 2A 02      STA $022A
8A8A   20 9F 8A      JSR $8A9F
8A8D   AD 2A 02      LDA $022A
8A90   0A            ASL A
8A91   AA            TAX
8A92   BD 6C 8C      LDA $8C6C,X
8A95   85 41         STA $41
8A97   BD 6B 8C      LDA $8C6B,X
8A9A   85 40         STA $40
8A9C   6C 40 00      JMP ($0040)
8A9F   A0 00         LDY #$00
8AA1   A2 00         LDX #$00
8AA3   A9 3A         LDA #$3A
8AA5   20 1C 81      JSR $811C
8AA8   D0 02         BNE $8AAC
8AAA   A0 03         LDY #$03
8AAC   B9 00 02      LDA $0200,Y
8AAF   C9 20         CMP #$20
8AB1   F0 08         BEQ $8ABB
8AB3   C9 1D         CMP #$1D
8AB5   F0 04         BEQ $8ABB
8AB7   C9 2C         CMP #$2C
8AB9   D0 06         BNE $8AC1
8ABB   C8            INY
8ABC   C4 29         CPY $29
8ABE   90 EC         BCC $8AAC
8AC0   60            RTS
8AC1   20 D0 8A      JSR $8AD0
8AC4   EE 2E 02      INC $022E
8AC7   AC 30 02      LDY $0230
8ACA   E0 04         CPX #$04
8ACC   90 ED         BCC $8ABB
8ACE   B0 9D         BCS $8A6D
8AD0   A9 00         LDA #$00
8AD2   85 40         STA $40
8AD4   85 41         STA $41
8AD6   85 43         STA $43
8AD8   A2 FF         LDX #$FF
8ADA   B9 00 02      LDA $0200,Y
8ADD   C9 40         CMP #$40
8ADF   B0 17         BCS $8AF8
8AE1   C9 30         CMP #$30
8AE3   90 13         BCC $8AF8
8AE5   29 0F         AND #$0F
8AE7   48            PHA
8AE8   A5 41         LDA $41
8AEA   85 42         STA $42
8AEC   A5 40         LDA $40
8AEE   85 41         STA $41
8AF0   68            PLA
8AF1   85 40         STA $40
8AF3   C8            INY
8AF4   C4 29         CPY $29
8AF6   90 E2         BCC $8ADA
8AF8   8C 30 02      STY $0230
8AFB   18            CLC
8AFC   A9 00         LDA #$00
8AFE   E8            INX
8AFF   E0 03         CPX #$03
8B01   B0 0F         BCS $8B12
8B03   B4 40         LDY $40,X
8B05   88            DEY
8B06   30 F6         BMI $8AFE
8B08   7D 20 8B      ADC $8B20,X
8B0B   90 F8         BCC $8B05
8B0D   18            CLC
8B0E   E6 43         INC $43
8B10   D0 F3         BNE $8B05
8B12   48            PHA
8B13   AE 2E 02      LDX $022E
8B16   A5 43         LDA $43
8B18   9D 97 02      STA $0297,X
8B1B   68            PLA
8B1C   9D 9C 02      STA $029C,X
8B1F   60            RTS
8B20   01 0A         ORA ($0A,X)
8B22   64            ???                ;01100100 'd'
8B23   20 AE 84      JSR $84AE
8B26   20 32 8C      JSR $8C32
8B29   20 46 B5      JSR $B546
8B2C   4C 50 80      JMP $8050
8B2F   20 AE 84      JSR $84AE
8B32   20 32 8C      JSR $8C32
8B35   A5 4E         LDA $4E
8B37   48            PHA
8B38   20 46 B7      JSR $B746
8B3B   F0 0B         BEQ $8B48
8B3D   68            PLA
8B3E   C5 4E         CMP $4E
8B40   D0 19         BNE $8B5B
8B42   20 72 B5      JSR $B572
8B45   4C 50 80      JMP $8050
8B48   68            PLA
8B49   A9 00         LDA #$00
8B4B   85 4E         STA $4E
8B4D   E6 4D         INC $4D
8B4F   A5 4D         LDA $4D
8B51   CD 2C 02      CMP $022C
8B54   B0 0A         BCS $8B60
8B56   20 46 B7      JSR $B746
8B59   F0 EE         BEQ $8B49
8B5B   A9 65         LDA #$65
8B5D   20 3F FF      JSR $FF3F
8B60   A9 65         LDA #$65
8B62   20 7C 80      JSR $807C
8B65   20 2F 8C      JSR $8C2F
8B68   4C BD 93      JMP $93BD
8B6B   20 69 90      JSR $9069
8B6E   A1 BB         LDA ($BB,X)
8B70   60            RTS
8B71   20 65 8B      JSR $8B65
8B74   A9 00         LDA #$00
8B76   20 22 94      JSR $9422
8B79   20 6B 8B      JSR $8B6B
8B7C   99 42 02      STA $0242,Y
8B7F   A9 89         LDA #$89
8B81   99 34 02      STA $0234,Y
8B84   60            RTS
8B85   20 71 8B      JSR $8B71
8B88   20 48 93      JSR $9348
8B8B   4C 4C 80      JMP $804C
8B8E   20 44 8C      JSR $8C44
8B91   20 BD 93      JSR $93BD
8B94   20 74 8B      JSR $8B74
8B97   4C A0 8B      JMP $8BA0
8B9A   20 9F 8A      JSR $8A9F
8B9D   20 71 8B      JSR $8B71
8BA0   B9 42 02      LDA $0242,Y
8BA3   99 3B 02      STA $023B,Y
8BA6   A9 FF         LDA #$FF
8BA8   99 42 02      STA $0242,Y
8BAB   4C 4C 80      JMP $804C
8BAE   20 2F 8C      JSR $8C2F
8BB1   20 42 94      JSR $9442
8BB4   A8            TAY
8BB5   88            DEY
8BB6   C9 02         CMP #$02
8BB8   B0 02         BCS $8BBC
8BBA   A0 01         LDY #$01
8BBC   A9 00         LDA #$00
8BBE   20 22 94      JSR $9422
8BC1   98            TYA
8BC2   20 B1 8E      JSR $8EB1
8BC5   8A            TXA
8BC6   48            PHA
8BC7   20 C1 93      JSR $93C1
8BCA   68            PLA
8BCB   AA            TAX
8BCC   A4 50         LDY $50
8BCE   4C 09 8C      JMP $8C09
8BD1   20 44 8C      JSR $8C44
8BD4   4C DD 8B      JMP $8BDD
8BD7   20 9F 8A      JSR $8A9F
8BDA   20 2F 8C      JSR $8C2F
8BDD   20 C1 93      JSR $93C1
8BE0   4C 4C 80      JMP $804C
8BE3   20 65 8B      JSR $8B65
8BE6   A9 00         LDA #$00
8BE8   85 40         STA $40
8BEA   A6 6C         LDX $6C
8BEC   BD F1 01      LDA $01F1,X
8BEF   85 41         STA $41
8BF1   20 F7 8B      JSR $8BF7
8BF4   4C 4C 80      JMP $804C
8BF7   6C 40 00      JMP ($0040)
8BFA   20 0F 8C      JSR $8C0F
8BFD   A5 6C         LDA $6C
8BFF   0A            ASL A
8C00   AA            TAX
8C01   AD 9D 02      LDA $029D
8C04   95 BB         STA $BB,X
8C06   20 69 90      JSR $9069
8C09   20 4A 93      JSR $934A
8C0C   4C 4C 80      JMP $804C
8C0F   A6 67         LDX $67
8C11   E6 67         INC $67
8C13   BD 9C 02      LDA $029C,X
8C16   A8            TAY
8C17   88            DEY
8C18   88            DEY
8C19   C0 0D         CPY #$0D
8C1B   90 05         BCC $8C22
8C1D   A9 70         LDA #$70
8C1F   4C 7C 80      JMP $807C
8C22   85 52         STA $52
8C24   20 27 90      JSR $9027
8C27   B0 F4         BCS $8C1D
8C29   20 11 9F      JSR $9F11
8C2C   85 6C         STA $6C
8C2E   60            RTS
8C2F   20 0F 8C      JSR $8C0F
8C32   A6 67         LDX $67
8C34   BD 9E 02      LDA $029E,X
8C37   85 4E         STA $4E
8C39   BD 9D 02      LDA $029D,X
8C3C   85 4D         STA $4D
8C3E   20 B5 94      JSR $94B5
8C41   4C F6 81      JMP $81F6
8C44   20 0F 8C      JSR $8C0F
8C47   A6 67         LDX $67
8C49   BD 9E 02      LDA $029E,X
8C4C   85 4E         STA $4E
8C4E   BD 9D 02      LDA $029D,X
8C51   85 4D         STA $4D
8C53   20 F6 81      JSR $81F6
8C56   A9 40         LDA #$40
8C58   8D A8 02      STA $02A8
8C5B   60            RTS
8C5C   05 6D         ORA $6D
8C5E   85 6D         STA $6D
8C60   60            RTS
8C61   41 46         EOR ($46,X)
8C63   52            ???                ;01010010 'R'
8C64   57            ???                ;01010111 'W'
8C65   45 50         EOR $50
8C67   D2            ???                ;11010010
8C68   D7            ???                ;11010111
8C69   3F            ???                ;00111111 '?'
8C6A   2A            ROL A
8C6B   2F            ???                ;00101111 '/'
8C6C   8B            ???                ;10001011
8C6D   23            ???                ;00100011 '#'
8C6E   8B            ???                ;10001011
8C6F   85 8B         STA $8B
8C71   AE 8B E3      LDX $E38B
8C74   8B            ???                ;10001011
8C75   FA            ???                ;11111010
8C76   8B            ???                ;10001011
8C77   8E 8B D1      STX $D18B
8C7A   8B            ???                ;10001011
8C7B   7F            ???                ;01111111
8C7C   8C 84 8C      STY $8C84
8C7F   A9 79         LDA #$79
8C81   4C 67 A8      JMP $A867
8C84   A9 7A         LDA #$7A
8C86   4C 67 A8      JMP $A867
8C89   20 C1 8C      JSR $8CC1
8C8C   20 06 8D      JSR $8D06
8C8F   A5 60         LDA $60
8C91   85 6B         STA $6B
8C93   20 09 8D      JSR $8D09
8C96   E6 6B         INC $6B
8C98   E6 6B         INC $6B
8C9A   20 6E A5      JSR $A56E
8C9D   F0 0D         BEQ $8CAC
8C9F   A5 5B         LDA $5B
8CA1   85 69         STA $69
8CA3   A5 60         LDA $60
8CA5   0A            ASL A
8CA6   18            CLC
8CA7   69 10         ADC #$10
8CA9   85 6A         STA $6A
8CAB   60            RTS
8CAC   A5 60         LDA $60
8CAE   0A            ASL A
8CAF   18            CLC
8CB0   69 10         ADC #$10
8CB2   85 6A         STA $6A
8CB4   20 0C 8D      JSR $8D0C
8CB7   A5 60         LDA $60
8CB9   85 69         STA $69
8CBB   A5 5B         LDA $5B
8CBD   8D 00 01      STA $0100
8CC0   60            RTS
8CC1   20 38 8D      JSR $8D38
8CC4   85 62         STA $62
8CC6   A6 50         LDX $50
8CC8   BD 49 02      LDA $0249,X
8CCB   85 60         STA $60
8CCD   BD 50 02      LDA $0250,X
8CD0   85 61         STA $61
8CD2   D0 04         BNE $8CD8
8CD4   A5 60         LDA $60
8CD6   F0 0B         BEQ $8CE3
8CD8   A5 60         LDA $60
8CDA   38            SEC
8CDB   E9 01         SBC #$01
8CDD   85 60         STA $60
8CDF   B0 02         BCS $8CE3
8CE1   C6 61         DEC $61
8CE3   BD 5E 02      LDA $025E,X
8CE6   85 40         STA $40
8CE8   46 40         LSR $40
8CEA   90 03         BCC $8CEF
8CEC   20 4C 8D      JSR $8D4C
8CEF   20 44 8D      JSR $8D44
8CF2   A5 40         LDA $40
8CF4   D0 F2         BNE $8CE8
8CF6   A5 68         LDA $68
8CF8   18            CLC
8CF9   65 5B         ADC $5B
8CFB   85 5B         STA $5B
8CFD   90 06         BCC $8D05
8CFF   E6 5C         INC $5C
8D01   D0 02         BNE $8D05
8D03   E6 5D         INC $5D
8D05   60            RTS
8D06   A9 FE         LDA #$FE
8D08   2C A9 78      BIT $78A9
8D0B   2C A9 06      BIT $06A9
8D0E   85 40         STA $40
8D10   A9 00         LDA #$00
8D12   85 60         STA $60
8D14   85 61         STA $61
8D16   A2 18         LDX #$18
8D18   06 5B         ASL $5B
8D1A   26 5C         ROL $5C
8D1C   26 5D         ROL $5D
8D1E   26 60         ROL $60
8D20   26 61         ROL $61
8D22   A5 60         LDA $60
8D24   38            SEC
8D25   E5 40         SBC $40
8D27   A8            TAY
8D28   A5 61         LDA $61
8D2A   E9 00         SBC #$00
8D2C   90 06         BCC $8D34
8D2E   E6 5B         INC $5B
8D30   85 61         STA $61
8D32   84 60         STY $60
8D34   CA            DEX
8D35   D0 E1         BNE $8D18
8D37   60            RTS
8D38   A9 00         LDA #$00
8D3A   85 5B         STA $5B
8D3C   85 5C         STA $5C
8D3E   85 5D         STA $5D
8D40   60            RTS
8D41   20 44 8D      JSR $8D44
8D44   18            CLC
8D45   26 60         ROL $60
8D47   26 61         ROL $61
8D49   26 62         ROL $62
8D4B   60            RTS
8D4C   18            CLC
8D4D   A2 FD         LDX #$FD
8D4F   B5 5E         LDA $5E,X
8D51   75 63         ADC $63,X
8D53   95 5E         STA $5E,X
8D55   E8            INX
8D56   D0 F7         BNE $8D4F
8D58   60            RTS
8D59   A2 00         LDX #$00
8D5B   8A            TXA
8D5C   95 DF         STA $DF,X
8D5E   E8            INX
8D5F   E0 05         CPX #$05
8D61   D0 F8         BNE $8D5B
8D63   A9 05         LDA #$05
8D65   95 DF         STA $DF,X
8D67   60            RTS
8D68   A0 05         LDY #$05
8D6A   A6 50         LDX $50
8D6C   B9 DF 00      LDA $00DF,Y
8D6F   96 DF         STX $DF,Y
8D71   C5 50         CMP $50
8D73   F0 07         BEQ $8D7C
8D75   88            DEY
8D76   30 E1         BMI $8D59
8D78   AA            TAX
8D79   4C 6C 8D      JMP $8D6C
8D7C   60            RTS
8D7D   20 68 8D      JSR $8D68
8D80   A6 50         LDX $50
8D82   B5 D1         LDA $D1,X
8D84   30 02         BMI $8D88
8D86   B5 D8         LDA $D8,X
8D88   C9 FF         CMP #$FF
8D8A   F0 18         BEQ $8DA4
8D8C   B5 D1         LDA $D1,X
8D8E   49 80         EOR #$80
8D90   95 D1         STA $D1,X
8D92   48            PHA
8D93   B5 D8         LDA $D8,X
8D95   49 80         EOR #$80
8D97   95 D8         STA $D8,X
8D99   A8            TAY
8D9A   68            PLA
8D9B   10 01         BPL $8D9E
8D9D   98            TYA
8D9E   29 BF         AND #$BF
8DA0   AA            TAX
8DA1   4C ED 94      JMP $94ED
8DA4   B5 D1         LDA $D1,X
8DA6   10 02         BPL $8DAA
8DA8   B5 D8         LDA $D8,X
8DAA   29 BF         AND #$BF
8DAC   A8            TAY
8DAD   20 04 92      JSR $9204
8DB0   10 05         BPL $8DB7
8DB2   A9 70         LDA #$70
8DB4   4C 7C 80      JMP $807C
8DB7   A6 50         LDX $50
8DB9   09 80         ORA #$80
8DBB   B4 D1         LDY $D1,X
8DBD   10 04         BPL $8DC3
8DBF   95 D1         STA $D1,X
8DC1   30 02         BMI $8DC5
8DC3   95 D8         STA $D8,X
8DC5   A5 4D         LDA $4D
8DC7   48            PHA
8DC8   A5 4E         LDA $4E
8DCA   48            PHA
8DCB   A9 01         LDA #$01
8DCD   85 42         STA $42
8DCF   B5 D1         LDA $D1,X
8DD1   10 02         BPL $8DD5
8DD3   B5 D8         LDA $D8,X
8DD5   29 BF         AND #$BF
8DD7   A8            TAY
8DD8   B9 F1 01      LDA $01F1,Y
8DDB   85 43         STA $43
8DDD   A0 00         LDY #$00
8DDF   B1 42         LDA ($42),Y
8DE1   85 4E         STA $4E
8DE3   A9 00         LDA #$00
8DE5   85 42         STA $42
8DE7   B5 D1         LDA $D1,X
8DE9   10 02         BPL $8DED
8DEB   B5 D8         LDA $D8,X
8DED   29 BF         AND #$BF
8DEF   A8            TAY
8DF0   B9 F1 01      LDA $01F1,Y
8DF3   85 43         STA $43
8DF5   A0 00         LDY #$00
8DF7   B1 42         LDA ($42),Y
8DF9   85 4D         STA $4D
8DFB   F0 2A         BEQ $8E27
8DFD   20 5F 90      JSR $905F
8E00   F0 0B         BEQ $8E0D
8E02   20 E9 9C      JSR $9CE9
8E05   D0 06         BNE $8E0D
8E07   20 4D 8E      JSR $8E4D
8E0A   4C 1E 8E      JMP $8E1E
8E0D   A6 50         LDX $50
8E0F   B5 D1         LDA $D1,X
8E11   49 80         EOR #$80
8E13   95 D1         STA $D1,X
8E15   B5 D8         LDA $D8,X
8E17   49 80         EOR #$80
8E19   95 D8         STA $D8,X
8E1B   20 94 9D      JSR $9D94
8E1E   68            PLA
8E1F   85 4E         STA $4E
8E21   68            PLA
8E22   85 4D         STA $4D
8E24   4C 30 8E      JMP $8E30
8E27   68            PLA
8E28   85 4E         STA $4E
8E2A   68            PLA
8E2B   85 4D         STA $4D
8E2D   20 4D 8E      JSR $8E4D
8E30   20 11 9F      JSR $9F11
8E33   AA            TAX
8E34   4C ED 94      JMP $94ED
8E37   A9 70         LDA #$70
8E39   4C 7C 80      JMP $807C
8E3C   20 68 8D      JSR $8D68
8E3F   20 33 9F      JSR $9F33
8E42   D0 08         BNE $8E4C
8E44   20 04 92      JSR $9204
8E47   30 EE         BMI $8E37
8E49   4C 3E 9F      JMP $9F3E
8E4C   60            RTS
8E4D   A6 50         LDX $50
8E4F   B5 D1         LDA $D1,X
8E51   49 80         EOR #$80
8E53   95 D1         STA $D1,X
8E55   B5 D8         LDA $D8,X
8E57   49 80         EOR #$80
8E59   95 D8         STA $D8,X
8E5B   60            RTS
8E5C   A2 12         LDX #$12
8E5E   86 52         STX $52
8E60   20 42 90      JSR $9042
8E63   20 F6 81      JSR $81F6
8E66   20 5F 90      JSR $905F
8E69   90 05         BCC $8E70
8E6B   A9 20         LDA #$20
8E6D   20 DB 9C      JSR $9CDB
8E70   A5 52         LDA $52
8E72   C9 0F         CMP #$0F
8E74   F0 23         BEQ $8E99
8E76   D0 08         BNE $8E80
8E78   A5 53         LDA $53
8E7A   29 8F         AND #$8F
8E7C   C9 0F         CMP #$0F
8E7E   B0 19         BCS $8E99
8E80   20 5F 90      JSR $905F
8E83   B0 05         BCS $8E8A
8E85   A5 54         LDA $54
8E87   4C 12 91      JMP $9112
8E8A   D0 03         BNE $8E8F
8E8C   4C 33 A0      JMP $A033
8E8F   A5 54         LDA $54
8E91   20 B1 8E      JSR $8EB1
8E94   A4 50         LDY $50
8E96   4C 4A 93      JMP $934A
8E99   A9 05         LDA #$05
8E9B   85 50         STA $50
8E9D   20 42 94      JSR $9442
8EA0   C9 2A         CMP #$2A
8EA2   F0 05         BEQ $8EA9
8EA4   A5 54         LDA $54
8EA6   20 B1 8E      JSR $8EB1
8EA9   A5 51         LDA $51
8EAB   F0 01         BEQ $8EAE
8EAD   60            RTS
8EAE   E6 7B         INC $7B
8EB0   60            RTS
8EB1   48            PHA
8EB2   20 11 9F      JSR $9F11
8EB5   10 06         BPL $8EBD
8EB7   68            PLA
8EB8   A9 61         LDA #$61
8EBA   4C 7C 80      JMP $807C
8EBD   0A            ASL A
8EBE   AA            TAX
8EBF   68            PLA
8EC0   81 BB         STA ($BB,X)
8EC2   F6 BB         INC $BB,X
8EC4   60            RTS
8EC5   20 85 80      JSR $8085
8EC8   20 CF B0      JSR $B0CF
8ECB   20 B3 B0      JSR $B0B3
8ECE   20 03 8F      JSR $8F03
8ED1   2C FB 01      BIT $01FB
8ED4   50 03         BVC $8ED9
8ED6   4C 38 A9      JMP $A938
8ED9   4C 4C 80      JMP $804C
8EDC   20 04 92      JSR $9204
8EDF   85 6C         STA $6C
8EE1   AA            TAX
8EE2   20 35 92      JSR $9235
8EE5   A2 00         LDX #$00
8EE7   86 4E         STX $4E
8EE9   AE 2B 02      LDX $022B
8EEC   86 4D         STX $4D
8EEE   20 88 95      JSR $9588
8EF1   A9 B0         LDA #$B0
8EF3   20 E4 94      JSR $94E4
8EF6   A6 6C         LDX $6C
8EF8   48            PHA
8EF9   A9 B6         LDA #$B6
8EFB   20 9D 95      JSR $959D
8EFE   8D FA 01      STA $01FA
8F01   68            PLA
8F02   60            RTS
8F03   AD FB 01      LDA $01FB
8F06   29 BF         AND #$BF
8F08   8D FB 01      STA $01FB
8F0B   A5 8A         LDA $8A
8F0D   09 80         ORA #$80
8F0F   85 8A         STA $8A
8F11   20 6E 92      JSR $926E
8F14   20 DC 8E      JSR $8EDC
8F17   C9 02         CMP #$02
8F19   B0 06         BCS $8F21
8F1B   A5 91         LDA $91
8F1D   C9 02         CMP #$02
8F1F   F0 03         BEQ $8F24
8F21   4C B9 8F      JMP $8FB9
8F24   20 DE 94      JSR $94DE
8F27   A5 6C         LDA $6C
8F29   0A            ASL A
8F2A   AA            TAX
8F2B   A9 01         LDA #$01
8F2D   95 BB         STA $BB,X
8F2F   A1 BB         LDA ($BB,X)
8F31   8D E5 01      STA $01E5
8F34   A9 02         LDA #$02
8F36   95 BB         STA $BB,X
8F38   A1 BB         LDA ($BB,X)
8F3A   85 6F         STA $6F
8F3C   A9 00         LDA #$00
8F3E   8D 00 0A      STA $0A00
8F41   20 4F B6      JSR $B64F
8F44   A9 00         LDA #$00
8F46   85 25         STA $25
8F48   85 6E         STA $6E
8F4A   A0 02         LDY #$02
8F4C   B1 31         LDA ($31),Y
8F4E   CD EB 01      CMP $01EB
8F51   D0 66         BNE $8FB9
8F53   C8            INY
8F54   B1 31         LDA ($31),Y
8F56   49 FF         EOR #$FF
8F58   CD EB 01      CMP $01EB
8F5B   D0 5C         BNE $8FB9
8F5D   A5 8A         LDA $8A
8F5F   29 7F         AND #$7F
8F61   85 8A         STA $8A
8F63   A0 04         LDY #$04
8F65   B1 31         LDA ($31),Y
8F67   85 1D         STA $1D
8F69   C8            INY
8F6A   B1 31         LDA ($31),Y
8F6C   85 1E         STA $1E
8F6E   C8            INY
8F6F   B1 31         LDA ($31),Y
8F71   85 8D         STA $8D
8F73   29 20         AND #$20
8F75   8D 01 01      STA $0101
8F78   C8            INY
8F79   B1 31         LDA ($31),Y
8F7B   10 08         BPL $8F85
8F7D   AD FB 01      LDA $01FB
8F80   09 40         ORA #$40
8F82   8D FB 01      STA $01FB
8F85   A5 4D         LDA $4D
8F87   48            PHA
8F88   A2 00         LDX #$00
8F8A   8E A9 02      STX $02A9
8F8D   8E AA 02      STX $02AA
8F90   A6 90         LDX $90
8F92   24 E8         BIT $E8
8F94   86 4D         STX $4D
8F96   EC 2B 02      CPX $022B
8F99   F0 F8         BEQ $8F93
8F9B   EC 2C 02      CPX $022C
8F9E   B0 13         BCS $8FB3
8FA0   20 BD B5      JSR $B5BD
8FA3   B1 31         LDA ($31),Y
8FA5   18            CLC
8FA6   6D A9 02      ADC $02A9
8FA9   8D A9 02      STA $02A9
8FAC   90 E5         BCC $8F93
8FAE   EE AA 02      INC $02AA
8FB1   D0 E0         BNE $8F93
8FB3   68            PLA
8FB4   85 4D         STA $4D
8FB6   A2 00         LDX #$00
8FB8   60            RTS
8FB9   A2 03         LDX #$03
8FBB   8E E5 01      STX $01E5
8FBE   A2 C0         LDX #$C0
8FC0   86 8D         STX $8D
8FC2   A2 00         LDX #$00
8FC4   8E 01 01      STX $0101
8FC7   86 25         STX $25
8FC9   86 6E         STX $6E
8FCB   8E A9 02      STX $02A9
8FCE   8E AA 02      STX $02AA
8FD1   86 1D         STX $1D
8FD3   86 1E         STX $1E
8FD5   60            RTS
8FD6   20 85 95      JSR $9585
8FD9   20 FE 8F      JSR $8FFE
8FDC   20 ED 94      JSR $94ED
8FDF   20 71 90      JSR $9071
8FE2   85 4D         STA $4D
8FE4   20 71 90      JSR $9071
8FE7   85 4E         STA $4E
8FE9   60            RTS
8FEA   20 D6 8F      JSR $8FD6
8FED   A5 4D         LDA $4D
8FEF   D0 01         BNE $8FF2
8FF1   60            RTS
8FF2   20 7D 8D      JSR $8D7D
8FF5   20 85 95      JSR $9585
8FF8   20 FE 8F      JSR $8FFE
8FFB   4C 7D 8D      JMP $8D7D
8FFE   A9 80         LDA #$80
9000   D0 02         BNE $9004
9002   A9 90         LDA #$90
9004   85 28         STA $28
9006   20 11 9F      JSR $9F11
9009   AA            TAX
900A   20 71 94      JSR $9471
900D   8A            TXA
900E   48            PHA
900F   0A            ASL A
9010   AA            TAX
9011   A9 00         LDA #$00
9013   95 BB         STA $BB,X
9015   20 5F 90      JSR $905F
9018   C9 04         CMP #$04
901A   B0 08         BCS $9024
901C   FE 49 02      INC $0249,X
901F   D0 03         BNE $9024
9021   FE 50 02      INC $0250,X
9024   68            PLA
9025   AA            TAX
9026   60            RTS
9027   A5 52         LDA $52
9029   C9 13         CMP #$13
902B   90 02         BCC $902F
902D   29 0F         AND #$0F
902F   C9 0F         CMP #$0F
9031   D0 02         BNE $9035
9033   A9 10         LDA #$10
9035   AA            TAX
9036   38            SEC
9037   B5 A8         LDA $A8,X
9039   30 06         BMI $9041
903B   29 0F         AND #$0F
903D   85 50         STA $50
903F   AA            TAX
9040   18            CLC
9041   60            RTS
9042   A5 52         LDA $52
9044   C9 13         CMP #$13
9046   90 02         BCC $904A
9048   29 0F         AND #$0F
904A   AA            TAX
904B   B5 A8         LDA $A8,X
904D   A8            TAY
904E   0A            ASL A
904F   90 0A         BCC $905B
9051   30 0A         BMI $905D
9053   98            TYA
9054   29 0F         AND #$0F
9056   85 50         STA $50
9058   AA            TAX
9059   18            CLC
905A   60            RTS
905B   30 F6         BMI $9053
905D   38            SEC
905E   60            RTS
905F   A6 50         LDX $50
9061   B5 F9         LDA $F9,X
9063   4A            LSR A
9064   29 07         AND #$07
9066   C9 04         CMP #$04
9068   60            RTS
9069   20 11 9F      JSR $9F11
906C   0A            ASL A
906D   AA            TAX
906E   A4 50         LDY $50
9070   60            RTS
9071   A6 50         LDX $50
9073   B5 D1         LDA $D1,X
9075   10 02         BPL $9079
9077   B5 D8         LDA $D8,X
9079   29 BF         AND #$BF
907B   0A            ASL A
907C   AA            TAX
907D   A4 50         LDY $50
907F   B9 42 02      LDA $0242,Y
9082   F0 12         BEQ $9096
9084   A1 BB         LDA ($BB,X)
9086   48            PHA
9087   B5 BB         LDA $BB,X
9089   D9 42 02      CMP $0242,Y
908C   D0 04         BNE $9092
908E   A9 FF         LDA #$FF
9090   95 BB         STA $BB,X
9092   68            PLA
9093   F6 BB         INC $BB,X
9095   60            RTS
9096   A1 BB         LDA ($BB,X)
9098   F6 BB         INC $BB,X
909A   60            RTS
909B   20 71 90      JSR $9071
909E   D0 66         BNE $9106
90A0   85 54         STA $54
90A2   B9 42 02      LDA $0242,Y
90A5   F0 08         BEQ $90AF
90A7   A9 80         LDA #$80
90A9   99 34 02      STA $0234,Y
90AC   A5 54         LDA $54
90AE   60            RTS
90AF   20 7D 8D      JSR $8D7D
90B2   A9 00         LDA #$00
90B4   85 40         STA $40
90B6   A6 50         LDX $50
90B8   B5 D1         LDA $D1,X
90BA   10 02         BPL $90BE
90BC   B5 D8         LDA $D8,X
90BE   29 BF         AND #$BF
90C0   0A            ASL A
90C1   AA            TAX
90C2   B5 BC         LDA $BC,X
90C4   85 65         STA $65
90C6   A5 40         LDA $40
90C8   95 BB         STA $BB,X
90CA   85 64         STA $64
90CC   20 71 90      JSR $9071
90CF   C9 00         CMP #$00
90D1   F0 34         BEQ $9107
90D3   85 4D         STA $4D
90D5   20 71 90      JSR $9071
90D8   85 4E         STA $4E
90DA   20 7D 8D      JSR $8D7D
90DD   A6 50         LDX $50
90DF   B5 D1         LDA $D1,X
90E1   10 02         BPL $90E5
90E3   B5 D8         LDA $D8,X
90E5   29 BF         AND #$BF
90E7   AA            TAX
90E8   A6 50         LDX $50
90EA   B5 D1         LDA $D1,X
90EC   10 02         BPL $90F0
90EE   B5 D8         LDA $D8,X
90F0   29 BF         AND #$BF
90F2   0A            ASL A
90F3   A8            TAY
90F4   A5 4D         LDA $4D
90F6   99 0B 00      STA $000B,Y
90F9   A5 4E         LDA $4E
90FB   99 0C 00      STA $000C,Y
90FE   20 FE 8F      JSR $8FFE
9101   20 7D 8D      JSR $8D7D
9104   A5 54         LDA $54
9106   60            RTS
9107   20 71 90      JSR $9071
910A   A4 50         LDY $50
910C   99 42 02      STA $0242,Y
910F   A5 54         LDA $54
9111   60            RTS
9112   20 B1 8E      JSR $8EB1
9115   F0 01         BEQ $9118
9117   60            RTS
9118   20 68 B6      JSR $B668
911B   A9 00         LDA #$00
911D   20 22 94      JSR $9422
9120   A5 4D         LDA $4D
9122   20 B1 8E      JSR $8EB1
9125   A5 4E         LDA $4E
9127   20 B1 8E      JSR $8EB1
912A   20 02 90      JSR $9002
912D   20 7D 8D      JSR $8D7D
9130   20 85 95      JSR $9585
9133   A9 02         LDA #$02
9135   4C 22 94      JMP $9422
9138   85 40         STA $40
913A   20 42 94      JSR $9442
913D   18            CLC
913E   65 40         ADC $40
9140   95 BB         STA $BB,X
9142   85 64         STA $64
9144   60            RTS
9145   AD FB 01      LDA $01FB
9148   29 7F         AND #$7F
914A   8D FB 01      STA $01FB
914D   A9 00         LDA #$00
914F   6A            ROR A
9150   0D FB 01      ORA $01FB
9153   8D FB 01      STA $01FB
9156   60            RTS
9157   38            SEC
9158   B0 01         BCS $915B
915A   18            CLC
915B   08            PHP
915C   85 40         STA $40
915E   20 9E 91      JSR $919E
9161   20 DB 92      JSR $92DB
9164   85 50         STA $50
9166   A6 52         LDX $52
9168   28            PLP
9169   90 02         BCC $916D
916B   09 80         ORA #$80
916D   95 A8         STA $A8,X
916F   29 3F         AND #$3F
9171   A8            TAY
9172   A9 FF         LDA #$FF
9174   99 D1 00      STA $00D1,Y
9177   99 D8 00      STA $00D8,Y
917A   99 65 02      STA $0265,Y
917D   C6 40         DEC $40
917F   30 1C         BMI $919D
9181   20 04 92      JSR $9204
9184   10 08         BPL $918E
9186   20 CE 91      JSR $91CE
9189   A9 70         LDA #$70
918B   4C 7C 80      JMP $807C
918E   99 D1 00      STA $00D1,Y
9191   C6 40         DEC $40
9193   30 08         BMI $919D
9195   20 04 92      JSR $9204
9198   30 EC         BMI $9186
919A   99 D8 00      STA $00D8,Y
919D   60            RTS
919E   A5 52         LDA $52
91A0   C9 0F         CMP #$0F
91A2   D0 01         BNE $91A5
91A4   60            RTS
91A5   A6 52         LDX $52
91A7   B5 A8         LDA $A8,X
91A9   C9 FF         CMP #$FF
91AB   F0 20         BEQ $91CD
91AD   29 3F         AND #$3F
91AF   85 50         STA $50
91B1   A9 FF         LDA #$FF
91B3   95 A8         STA $A8,X
91B5   A6 50         LDX $50
91B7   A9 00         LDA #$00
91B9   9D 34 02      STA $0234,X
91BC   20 CE 91      JSR $91CE
91BF   A6 50         LDX $50
91C1   A9 01         LDA #$01
91C3   CA            DEX
91C4   30 03         BMI $91C9
91C6   0A            ASL A
91C7   D0 FA         BNE $91C3
91C9   05 70         ORA $70
91CB   85 70         STA $70
91CD   60            RTS
91CE   A6 50         LDX $50
91D0   B5 D1         LDA $D1,X
91D2   C9 FF         CMP #$FF
91D4   F0 09         BEQ $91DF
91D6   48            PHA
91D7   A9 FF         LDA #$FF
91D9   95 D1         STA $D1,X
91DB   68            PLA
91DC   20 52 92      JSR $9252
91DF   A6 50         LDX $50
91E1   B5 D8         LDA $D8,X
91E3   C9 FF         CMP #$FF
91E5   F0 09         BEQ $91F0
91E7   48            PHA
91E8   A9 FF         LDA #$FF
91EA   95 D8         STA $D8,X
91EC   68            PLA
91ED   20 52 92      JSR $9252
91F0   A6 50         LDX $50
91F2   BD 65 02      LDA $0265,X
91F5   C9 FF         CMP #$FF
91F7   F0 0A         BEQ $9203
91F9   48            PHA
91FA   A9 FF         LDA #$FF
91FC   9D 65 02      STA $0265,X
91FF   68            PLA
9200   4C 52 92      JMP $9252
9203   60            RTS
9204   98            TYA
9205   48            PHA
9206   20 28 92      JSR $9228
9209   10 06         BPL $9211
920B   20 91 92      JSR $9291
920E   AA            TAX
920F   30 13         BMI $9224
9211   B5 02         LDA $02,X
9213   30 FC         BMI $9211
9215   A9 00         LDA #$00
9217   95 02         STA $02,X
9219   9D 72 02      STA $0272,X
921C   8A            TXA
921D   0A            ASL A
921E   A8            TAY
921F   A9 02         LDA #$02
9221   99 BB 00      STA $00BB,Y
9224   68            PLA
9225   A8            TAY
9226   8A            TXA
9227   60            RTS
9228   A2 07         LDX #$07
922A   A5 6D         LDA $6D
922C   3D EA B5      AND $B5EA,X
922F   F0 04         BEQ $9235
9231   CA            DEX
9232   10 F6         BPL $922A
9234   60            RTS
9235   A5 6D         LDA $6D
9237   5D EA B5      EOR $B5EA,X
923A   85 6D         STA $6D
923C   8A            TXA
923D   60            RTS
923E   A6 50         LDX $50
9240   B5 D1         LDA $D1,X
9242   30 04         BMI $9248
9244   B5 D8         LDA $D8,X
9246   10 19         BPL $9261
9248   C9 FF         CMP #$FF
924A   F0 15         BEQ $9261
924C   48            PHA
924D   A9 FF         LDA #$FF
924F   95 D1         STA $D1,X
9251   68            PLA
9252   29 0F         AND #$0F
9254   A8            TAY
9255   C8            INY
9256   A2 08         LDX #$08
9258   66 6D         ROR $6D
925A   88            DEY
925B   D0 01         BNE $925E
925D   18            CLC
925E   CA            DEX
925F   10 F7         BPL $9258
9261   60            RTS
9262   A9 0E         LDA #$0E
9264   85 52         STA $52
9266   20 9E 91      JSR $919E
9269   C6 52         DEC $52
926B   D0 F9         BNE $9266
926D   60            RTS
926E   A9 0E         LDA #$0E
9270   85 52         STA $52
9272   A6 52         LDX $52
9274   B5 A8         LDA $A8,X
9276   C9 FF         CMP #$FF
9278   F0 12         BEQ $928C
927A   29 3F         AND #$3F
927C   85 50         STA $50
927E   20 11 9F      JSR $9F11
9281   AA            TAX
9282   BD 72 02      LDA $0272,X
9285   29 01         AND #$01
9287   D0 03         BNE $928C
9289   20 9E 91      JSR $919E
928C   C6 52         DEC $52
928E   10 E2         BPL $9272
9290   60            RTS
9291   A5 40         LDA $40
9293   48            PHA
9294   A0 00         LDY #$00
9296   B6 DF         LDX $DF,Y
9298   B5 D1         LDA $D1,X
929A   10 04         BPL $92A0
929C   C9 FF         CMP #$FF
929E   D0 16         BNE $92B6
92A0   8A            TXA
92A1   18            CLC
92A2   69 08         ADC #$08
92A4   AA            TAX
92A5   B5 D1         LDA $D1,X
92A7   10 04         BPL $92AD
92A9   C9 FF         CMP #$FF
92AB   D0 09         BNE $92B6
92AD   C8            INY
92AE   C0 06         CPY #$06
92B0   90 E4         BCC $9296
92B2   A2 FF         LDX #$FF
92B4   D0 20         BNE $92D6
92B6   86 40         STX $40
92B8   29 3F         AND #$3F
92BA   AA            TAX
92BB   B5 02         LDA $02,X
92BD   30 FC         BMI $92BB
92BF   C9 02         CMP #$02
92C1   90 0C         BCC $92CF
92C3   C9 0F         CMP #$0F
92C5   F0 08         BEQ $92CF
92C7   A6 40         LDX $40
92C9   E0 08         CPX #$08
92CB   90 D3         BCC $92A0
92CD   B0 DE         BCS $92AD
92CF   A4 40         LDY $40
92D1   A9 FF         LDA #$FF
92D3   99 D1 00      STA $00D1,Y
92D6   68            PLA
92D7   85 40         STA $40
92D9   8A            TXA
92DA   60            RTS
92DB   A0 00         LDY #$00
92DD   A9 01         LDA #$01
92DF   24 70         BIT $70
92E1   D0 09         BNE $92EC
92E3   C8            INY
92E4   0A            ASL A
92E5   D0 F8         BNE $92DF
92E7   A9 70         LDA #$70
92E9   4C 7C 80      JMP $807C
92EC   49 FF         EOR #$FF
92EE   25 70         AND $70
92F0   85 70         STA $70
92F2   98            TYA
92F3   60            RTS
92F4   20 27 90      JSR $9027
92F7   20 F6 81      JSR $81F6
92FA   20 03 93      JSR $9303
92FD   A6 50         LDX $50
92FF   BD 3B 02      LDA $023B,X
9302   60            RTS
9303   A6 50         LDX $50
9305   20 5F 90      JSR $905F
9308   D0 03         BNE $930D
930A   4C A6 A0      JMP $A0A6
930D   A5 52         LDA $52
930F   C9 0F         CMP #$0F
9311   F0 5D         BEQ $9370
9313   BD 34 02      LDA $0234,X
9316   29 08         AND #$08
9318   D0 15         BNE $932F
931A   20 5F 90      JSR $905F
931D   C9 07         CMP #$07
931F   D0 08         BNE $9329
9321   A9 89         LDA #$89
9323   9D 34 02      STA $0234,X
9326   4C 3A 93      JMP $933A
9329   A9 00         LDA #$00
932B   9D 34 02      STA $0234,X
932E   60            RTS
932F   A5 52         LDA $52
9331   F0 32         BEQ $9365
9333   20 5F 90      JSR $905F
9336   C9 04         CMP #$04
9338   90 22         BCC $935C
933A   20 69 90      JSR $9069
933D   B5 BB         LDA $BB,X
933F   D9 42 02      CMP $0242,Y
9342   D0 04         BNE $9348
9344   A9 00         LDA #$00
9346   95 BB         STA $BB,X
9348   F6 BB         INC $BB,X
934A   A1 BB         LDA ($BB,X)
934C   99 3B 02      STA $023B,Y
934F   B5 BB         LDA $BB,X
9351   D9 42 02      CMP $0242,Y
9354   D0 05         BNE $935B
9356   A9 81         LDA #$81
9358   99 34 02      STA $0234,Y
935B   60            RTS
935C   20 9B 90      JSR $909B
935F   A6 50         LDX $50
9361   9D 3B 02      STA $023B,X
9364   60            RTS
9365   AD 6E 02      LDA $026E
9368   F0 F2         BEQ $935C
936A   20 45 B2      JSR $B245
936D   4C 5F 93      JMP $935F
9370   20 42 94      JSR $9442
9373   C9 CF         CMP #$CF
9375   D0 18         BNE $938F
9377   A5 65         LDA $65
9379   C9 02         CMP #$02
937B   D0 12         BNE $938F
937D   A9 0D         LDA #$0D
937F   85 54         STA $54
9381   20 E5 81      JSR $81E5
9384   A9 00         LDA #$00
9386   20 67 A8      JSR $A867
9389   C6 CF         DEC $CF
938B   A9 80         LDA #$80
938D   D0 12         BNE $93A1
938F   20 71 90      JSR $9071
9392   85 54         STA $54
9394   D0 09         BNE $939F
9396   A9 CF         LDA #$CF
9398   20 22 94      JSR $9422
939B   A9 02         LDA #$02
939D   95 BC         STA $BC,X
939F   A9 88         LDA #$88
93A1   8D 3A 02      STA $023A
93A4   A5 54         LDA $54
93A6   8D 41 02      STA $0241
93A9   60            RTS
93AA   20 11 9F      JSR $9F11
93AD   0A            ASL A
93AE   AA            TAX
93AF   A9 00         LDA #$00
93B1   95 BB         STA $BB,X
93B3   A1 BB         LDA ($BB,X)
93B5   F0 05         BEQ $93BC
93B7   D6 BB         DEC $BB,X
93B9   4C 9B 90      JMP $909B
93BC   60            RTS
93BD   A9 80         LDA #$80
93BF   D0 02         BNE $93C3
93C1   A9 90         LDA #$90
93C3   85 28         STA $28
93C5   A5 6C         LDA $6C
93C7   20 88 95      JSR $9588
93CA   A6 6C         LDX $6C
93CC   4C E8 94      JMP $94E8
93CF   A9 01         LDA #$01
93D1   8D 2D 02      STA $022D
93D4   A9 11         LDA #$11
93D6   85 52         STA $52
93D8   20 0D 9B      JSR $9B0D
93DB   A9 02         LDA #$02
93DD   4C 22 94      JMP $9422
93E0   A9 12         LDA #$12
93E2   85 52         STA $52
93E4   4C C3 9B      JMP $9BC3
93E7   20 79 9D      JSR $9D79
93EA   A9 01         LDA #$01
93EC   85 40         STA $40
93EE   A5 2E         LDA $2E
93F0   48            PHA
93F1   A9 01         LDA #$01
93F3   85 2E         STA $2E
93F5   20 75 B6      JSR $B675
93F8   68            PLA
93F9   85 2E         STA $2E
93FB   A9 00         LDA #$00
93FD   20 22 94      JSR $9422
9400   A5 4D         LDA $4D
9402   20 B1 8E      JSR $8EB1
9405   A5 4E         LDA $4E
9407   20 B1 8E      JSR $8EB1
940A   20 02 90      JSR $9002
940D   20 ED 94      JSR $94ED
9410   A9 00         LDA #$00
9412   20 22 94      JSR $9422
9415   20 B1 8E      JSR $8EB1
9418   D0 FB         BNE $9415
941A   20 B1 8E      JSR $8EB1
941D   A9 FF         LDA #$FF
941F   4C B1 8E      JMP $8EB1
9422   85 40         STA $40
9424   20 11 9F      JSR $9F11
9427   0A            ASL A
9428   AA            TAX
9429   B5 BC         LDA $BC,X
942B   85 65         STA $65
942D   A5 40         LDA $40
942F   95 BB         STA $BB,X
9431   85 64         STA $64
9433   60            RTS
9434   A9 11         LDA #$11
9436   85 52         STA $52
9438   20 9E 91      JSR $919E
943B   A9 12         LDA #$12
943D   85 52         STA $52
943F   4C 9E 91      JMP $919E
9442   20 11 9F      JSR $9F11
9445   0A            ASL A
9446   AA            TAX
9447   B5 BC         LDA $BC,X
9449   85 65         STA $65
944B   B5 BB         LDA $BB,X
944D   85 64         STA $64
944F   60            RTS
9450   85 42         STA $42
9452   20 11 9F      JSR $9F11
9455   AA            TAX
9456   BD F1 01      LDA $01F1,X
9459   85 43         STA $43
945B   A0 00         LDY #$00
945D   B1 42         LDA ($42),Y
945F   60            RTS
9460   A9 01         LDA #$01
9462   24 25         BIT $25
9464   F0 0A         BEQ $9470
9466   49 01         EOR #$01
9468   85 25         STA $25
946A   20 CF B0      JSR $B0CF
946D   4C B3 B0      JMP $B0B3
9470   60            RTS
9471   A5 28         LDA $28
9473   48            PHA
9474   86 6C         STX $6C
9476   2C A8 02      BIT $02A8
9479   70 58         BVS $94D3
947B   8A            TXA
947C   0A            ASL A
947D   AA            TAX
947E   B5 0C         LDA $0C,X
9480   85 28         STA $28
9482   B5 0B         LDA $0B,X
9484   F0 1A         BEQ $94A0
9486   CD 2C 02      CMP $022C
9489   B0 15         BCS $94A0
948B   68            PLA
948C   48            PHA
948D   C9 90         CMP #$90
948F   D0 42         BNE $94D3
9491   A5 6F         LDA $6F
9493   CD EB 01      CMP $01EB
9496   D0 33         BNE $94CB
9498   A5 75         LDA $75
949A   C5 28         CMP $28
949C   F0 02         BEQ $94A0
949E   B0 33         BCS $94D3
94A0   20 A8 94      JSR $94A8
94A3   A9 66         LDA #$66
94A5   4C 3F FF      JMP $FF3F
94A8   A5 6C         LDA $6C
94AA   0A            ASL A
94AB   AA            TAX
94AC   B5 0B         LDA $0B,X
94AE   85 4D         STA $4D
94B0   B5 0C         LDA $0C,X
94B2   85 4E         STA $4E
94B4   60            RTS
94B5   A5 4D         LDA $4D
94B7   F0 EA         BEQ $94A3
94B9   CD 2C 02      CMP $022C
94BC   B0 E5         BCS $94A3
94BE   C5 90         CMP $90
94C0   90 E1         BCC $94A3
94C2   A5 75         LDA $75
94C4   C5 4E         CMP $4E
94C6   F0 DB         BEQ $94A3
94C8   90 D9         BCC $94A3
94CA   60            RTS
94CB   20 A8 94      JSR $94A8
94CE   A9 73         LDA #$73
94D0   4C 3F FF      JMP $FF3F
94D3   A6 6C         LDX $6C
94D5   68            PLA
94D6   85 28         STA $28
94D8   9D 72 02      STA $0272,X
94DB   4C 9D 95      JMP $959D
94DE   A9 80         LDA #$80
94E0   D0 02         BNE $94E4
94E2   A9 90         LDA #$90
94E4   A6 6C         LDX $6C
94E6   85 28         STA $28
94E8   A5 28         LDA $28
94EA   20 73 94      JSR $9473
94ED   20 F8 94      JSR $94F8
94F0   48            PHA
94F1   A9 00         LDA #$00
94F3   8D A8 02      STA $02A8
94F6   68            PLA
94F7   60            RTS
94F8   20 98 95      JSR $9598
94FB   C9 02         CMP #$02
94FD   90 19         BCC $9518
94FF   C9 08         CMP #$08
9501   F0 0C         BEQ $950F
9503   C9 0B         CMP #$0B
9505   F0 08         BEQ $950F
9507   C9 03         CMP #$03
9509   F0 04         BEQ $950F
950B   C9 0F         CMP #$0F
950D   D0 0B         BNE $951A
950F   24 81         BIT $81
9511   30 05         BMI $9518
9513   2C A8 02      BIT $02A8
9516   10 17         BPL $952F
9518   18            CLC
9519   60            RTS
951A   98            TYA
951B   48            PHA
951C   20 64 95      JSR $9564
951F   C9 02         CMP #$02
9521   90 37         BCC $955A
9523   24 30         BIT $30
9525   10 12         BPL $9539
9527   68            PLA
9528   C9 90         CMP #$90
952A   D0 03         BNE $952F
952C   9D 72 02      STA $0272,X
952F   A9 00         LDA #$00
9531   8D A8 02      STA $02A8
9534   B5 02         LDA $02,X
9536   20 2D FF      JSR $FF2D
9539   24 81         BIT $81
953B   30 21         BMI $955E
953D   2C A8 02      BIT $02A8
9540   30 1C         BMI $955E
9542   48            PHA
9543   A9 C0         LDA #$C0
9545   20 9D 95      JSR $959D
9548   20 64 95      JSR $9564
954B   C9 02         CMP #$02
954D   B0 D8         BCS $9527
954F   68            PLA
9550   C9 90         CMP #$90
9552   D0 0A         BNE $955E
9554   9D 72 02      STA $0272,X
9557   20 64 95      JSR $9564
955A   C9 02         CMP #$02
955C   B0 D1         BCS $952F
955E   68            PLA
955F   A8            TAY
9560   B5 02         LDA $02,X
9562   18            CLC
9563   60            RTS
9564   A5 30         LDA $30
9566   29 3F         AND #$3F
9568   A8            TAY
9569   A5 79         LDA $79
956B   09 20         ORA #$20
956D   85 79         STA $79
956F   BD 72 02      LDA $0272,X
9572   20 9D 95      JSR $959D
9575   C9 02         CMP #$02
9577   90 03         BCC $957C
9579   88            DEY
957A   D0 ED         BNE $9569
957C   48            PHA
957D   A5 79         LDA $79
957F   29 DF         AND #$DF
9581   85 79         STA $79
9583   68            PLA
9584   60            RTS
9585   20 11 9F      JSR $9F11
9588   0A            ASL A
9589   A8            TAY
958A   A5 4D         LDA $4D
958C   99 0B 00      STA $000B,Y
958F   A5 4E         LDA $4E
9591   99 0C 00      STA $000C,Y
9594   A9 00         LDA #$00
9596   AA            TAX
9597   60            RTS
9598   08            PHP
9599   58            CLI
959A   4C A1 95      JMP $95A1
959D   08            PHP
959E   58            CLI
959F   95 02         STA $02,X
95A1   00            BRK
95A2   EA            NOP
95A3   B5 02         LDA $02,X
95A5   30 FC         BMI $95A3
95A7   28            PLP
95A8   B5 02         LDA $02,X
95AA   60            RTS
95AB   A5 52         LDA $52
95AD   48            PHA
95AE   A5 50         LDA $50
95B0   48            PHA
95B1   A5 4E         LDA $4E
95B3   48            PHA
95B4   A5 4D         LDA $4D
95B6   48            PHA
95B7   A9 11         LDA #$11
95B9   85 52         STA $52
95BB   20 79 9D      JSR $9D79
95BE   AD 2D 02      LDA $022D
95C1   48            PHA
95C2   A6 6C         LDX $6C
95C4   A5 EF         LDA $EF
95C6   5D 72 02      EOR $0272,X
95C9   4A            LSR A
95CA   90 0B         BCC $95D7
95CC   A2 01         LDX #$01
95CE   86 73         STX $73
95D0   20 24 84      JSR $8424
95D3   F0 20         BEQ $95F5
95D5   D0 2D         BNE $9604
95D7   A5 72         LDA $72
95D9   F0 11         BEQ $95EC
95DB   C5 4E         CMP $4E
95DD   F0 25         BEQ $9604
95DF   85 4E         STA $4E
95E1   20 BD 93      JSR $93BD
95E4   4C 04 96      JMP $9604
95E7   A9 72         LDA #$72
95E9   20 7C 80      JSR $807C
95EC   A9 01         LDA #$01
95EE   85 73         STA $73
95F0   20 89 84      JSR $8489
95F3   D0 0F         BNE $9604
95F5   20 E7 93      JSR $93E7
95F8   A5 4E         LDA $4E
95FA   C9 03         CMP #$03
95FC   90 E9         BCC $95E7
95FE   85 72         STA $72
9600   A9 02         LDA #$02
9602   85 73         STA $73
9604   A5 73         LDA $73
9606   20 22 94      JSR $9422
9609   68            PLA
960A   8D 2D 02      STA $022D
960D   C9 04         CMP #$04
960F   D0 02         BNE $9613
9611   09 80         ORA #$80
9613   20 B1 8E      JSR $8EB1
9616   68            PLA
9617   8D 97 02      STA $0297
961A   20 B1 8E      JSR $8EB1
961D   68            PLA
961E   8D 9C 02      STA $029C
9621   20 B1 8E      JSR $8EB1
9624   20 11 9F      JSR $9F11
9627   A8            TAY
9628   AD 91 02      LDA $0291
962B   AA            TAX
962C   A9 10         LDA #$10
962E   20 EE 84      JSR $84EE
9631   A0 10         LDY #$10
9633   A9 00         LDA #$00
9635   91 64         STA ($64),Y
9637   C8            INY
9638   C0 1B         CPY #$1B
963A   90 F9         BCC $9635
963C   AD 2D 02      LDA $022D
963F   C9 04         CMP #$04
9641   D0 13         BNE $9656
9643   A0 10         LDY #$10
9645   AD 70 02      LDA $0270
9648   91 64         STA ($64),Y
964A   C8            INY
964B   AD 71 02      LDA $0271
964E   91 64         STA ($64),Y
9650   C8            INY
9651   AD 6F 02      LDA $026F
9654   91 64         STA ($64),Y
9656   20 C1 93      JSR $93C1
9659   68            PLA
965A   85 50         STA $50
965C   AA            TAX
965D   68            PLA
965E   85 52         STA $52
9660   A5 72         LDA $72
9662   85 E5         STA $E5
9664   9D 7D 02      STA $027D,X
9667   A5 73         LDA $73
9669   85 EA         STA $EA
966B   9D 84 02      STA $0284,X
966E   AD 2D 02      LDA $022D
9671   85 F4         STA $F4
9673   A9 00         LDA #$00
9675   85 EF         STA $EF
9677   60            RTS
9678   A5 52         LDA $52
967A   85 7A         STA $7A
967C   20 65 81      JSR $8165
967F   8E 2A 02      STX $022A
9682   AE 00 02      LDX $0200
9685   A5 7A         LDA $7A
9687   D0 27         BNE $96B0
9689   E0 2A         CPX #$2A
968B   D0 23         BNE $96B0
968D   A5 4C         LDA $4C
968F   F0 45         BEQ $96D6
9691   85 4D         STA $4D
9693   A9 00         LDA #$00
9695   85 EF         STA $EF
9697   A9 02         LDA #$02
9699   85 F4         STA $F4
969B   AD 8B 02      LDA $028B
969E   85 4E         STA $4E
96A0   20 F6 81      JSR $81F6
96A3   20 0D 9B      JSR $9B0D
96A6   A9 04         LDA #$04
96A8   A6 50         LDX $50
96AA   99 F9 00      STA $00F9,Y
96AD   4C 4C 80      JMP $804C
96B0   E0 24         CPX #$24
96B2   D0 1B         BNE $96CF
96B4   A5 7A         LDA $7A
96B6   D0 03         BNE $96BB
96B8   4C F7 98      JMP $98F7
96BB   20 85 80      JSR $8085
96BE   AD 2B 02      LDA $022B
96C1   85 4D         STA $4D
96C3   A9 00         LDA #$00
96C5   85 4E         STA $4E
96C7   20 0D 9B      JSR $9B0D
96CA   A9 02         LDA #$02
96CC   4C A8 96      JMP $96A8
96CF   E0 23         CPX #$23
96D1   D0 0B         BNE $96DE
96D3   4C E4 89      JMP $89E4
96D6   A9 02         LDA #$02
96D8   8D 33 02      STA $0233
96DB   20 03 8F      JSR $8F03
96DE   20 99 80      JSR $8099
96E1   D0 04         BNE $96E7
96E3   A2 00         LDX #$00
96E5   F0 0C         BEQ $96F3
96E7   8A            TXA
96E8   F0 05         BEQ $96EF
96EA   A9 30         LDA #$30
96EC   4C 7C 80      JMP $807C
96EF   88            DEY
96F0   F0 01         BEQ $96F3
96F2   88            DEY
96F3   8C 91 02      STY $0291
96F6   A9 8D         LDA #$8D
96F8   20 1C 81      JSR $811C
96FB   E8            INX
96FC   8E 2F 02      STX $022F
96FF   20 FD 81      JSR $81FD
9702   20 A2 82      JSR $82A2
9705   20 ED 82      JSR $82ED
9708   A2 00         LDX #$00
970A   8E 6F 02      STX $026F
970D   8E A7 02      STX $02A7
9710   8E 2D 02      STX $022D
9713   E8            INX
9714   EC 2E 02      CPX $022E
9717   B0 10         BCS $9729
9719   20 AB 98      JSR $98AB
971C   E8            INX
971D   EC 2E 02      CPX $022E
9720   B0 07         BCS $9729
9722   C0 04         CPY #$04
9724   F0 38         BEQ $975E
9726   20 AB 98      JSR $98AB
9729   A6 7A         LDX $7A
972B   86 52         STX $52
972D   E0 02         CPX #$02
972F   B0 0D         BCS $973E
9731   8E A7 02      STX $02A7
9734   AD 2D 02      LDA $022D
9737   D0 1B         BNE $9754
9739   A9 02         LDA #$02
973B   8D 2D 02      STA $022D
973E   AD 2D 02      LDA $022D
9741   D0 11         BNE $9754
9743   A5 F4         LDA $F4
9745   29 07         AND #$07
9747   8D 2D 02      STA $022D
974A   AD 97 02      LDA $0297
974D   D0 05         BNE $9754
974F   A9 01         LDA #$01
9751   8D 2D 02      STA $022D
9754   AD A7 02      LDA $02A7
9757   C9 01         CMP #$01
9759   F0 18         BEQ $9773
975B   4C ED 97      JMP $97ED
975E   BC 91 02      LDY $0291,X
9761   B9 00 02      LDA $0200,Y
9764   8D 6F 02      STA $026F
9767   AD 97 02      LDA $0297
976A   D0 BD         BNE $9729
976C   A9 01         LDA #$01
976E   8D A7 02      STA $02A7
9771   D0 B6         BNE $9729
9773   A5 F4         LDA $F4
9775   29 80         AND #$80
9777   AA            TAX
9778   D0 14         BNE $978E
977A   A9 20         LDA #$20
977C   24 F4         BIT $F4
977E   F0 06         BEQ $9786
9780   20 3B 87      JSR $873B
9783   4C 90 98      JMP $9890
9786   AD 97 02      LDA $0297
9789   D0 03         BNE $978E
978B   4C 90 98      JMP $9890
978E   AD 00 02      LDA $0200
9791   C9 40         CMP #$40
9793   F0 0D         BEQ $97A2
9795   8A            TXA
9796   D0 05         BNE $979D
9798   A9 63         LDA #$63
979A   4C 7C 80      JMP $807C
979D   A9 33         LDA #$33
979F   4C 7C 80      JMP $807C
97A2   A5 F4         LDA $F4
97A4   29 07         AND #$07
97A6   CD 2D 02      CMP $022D
97A9   D0 67         BNE $9812
97AB   C9 04         CMP #$04
97AD   F0 63         BEQ $9812
97AF   20 C3 9B      JSR $9BC3
97B2   A5 50         LDA $50
97B4   8D 8C 02      STA $028C
97B7   A9 11         LDA #$11
97B9   85 52         STA $52
97BB   20 27 90      JSR $9027
97BE   AD 32 02      LDA $0232
97C1   20 22 94      JSR $9422
97C4   A0 00         LDY #$00
97C6   B1 64         LDA ($64),Y
97C8   09 20         ORA #$20
97CA   91 64         STA ($64),Y
97CC   A0 1A         LDY #$1A
97CE   A5 4D         LDA $4D
97D0   91 64         STA ($64),Y
97D2   C8            INY
97D3   A5 4E         LDA $4E
97D5   91 64         STA ($64),Y
97D7   AE 8C 02      LDX $028C
97DA   A5 E5         LDA $E5
97DC   9D 7D 02      STA $027D,X
97DF   A5 EA         LDA $EA
97E1   9D 84 02      STA $0284,X
97E4   20 79 9D      JSR $9D79
97E7   20 C1 93      JSR $93C1
97EA   4C 96 98      JMP $9896
97ED   AD 97 02      LDA $0297
97F0   D0 05         BNE $97F7
97F2   A9 62         LDA #$62
97F4   4C 7C 80      JMP $807C
97F7   AD A7 02      LDA $02A7
97FA   C9 03         CMP #$03
97FC   F0 0B         BEQ $9809
97FE   A9 20         LDA #$20
9800   24 F4         BIT $F4
9802   F0 05         BEQ $9809
9804   A9 60         LDA #$60
9806   4C 7C 80      JMP $807C
9809   A5 F4         LDA $F4
980B   29 07         AND #$07
980D   CD 2D 02      CMP $022D
9810   F0 05         BEQ $9817
9812   A9 64         LDA #$64
9814   4C 7C 80      JMP $807C
9817   A0 00         LDY #$00
9819   8C 30 02      STY $0230
981C   AE A7 02      LDX $02A7
981F   E0 02         CPX #$02
9821   D0 1A         BNE $983D
9823   C9 04         CMP #$04
9825   F0 EB         BEQ $9812
9827   B1 64         LDA ($64),Y
9829   29 4F         AND #$4F
982B   91 64         STA ($64),Y
982D   A5 52         LDA $52
982F   48            PHA
9830   A9 11         LDA #$11
9832   85 52         STA $52
9834   20 79 9D      JSR $9D79
9837   20 C1 93      JSR $93C1
983A   68            PLA
983B   85 52         STA $52
983D   20 4D 98      JSR $984D
9840   AD A7 02      LDA $02A7
9843   C9 02         CMP #$02
9845   D0 4F         BNE $9896
9847   20 CC 98      JSR $98CC
984A   4C 4C 80      JMP $804C
984D   A0 13         LDY #$13
984F   B1 64         LDA ($64),Y
9851   8D 70 02      STA $0270
9854   C8            INY
9855   B1 64         LDA ($64),Y
9857   8D 71 02      STA $0271
985A   C8            INY
985B   B1 64         LDA ($64),Y
985D   AE 6F 02      LDX $026F
9860   8D 6F 02      STA $026F
9863   8A            TXA
9864   F0 0A         BEQ $9870
9866   CD 6F 02      CMP $026F
9869   F0 05         BEQ $9870
986B   A9 50         LDA #$50
986D   20 7C 80      JSR $807C
9870   AE 30 02      LDX $0230
9873   BD 97 02      LDA $0297,X
9876   85 4D         STA $4D
9878   BD 9C 02      LDA $029C,X
987B   85 4E         STA $4E
987D   20 0D 9B      JSR $9B0D
9880   A4 50         LDY $50
9882   AE 30 02      LDX $0230
9885   B5 E5         LDA $E5,X
9887   99 7D 02      STA $027D,Y
988A   B5 EA         LDA $EA,X
988C   99 84 02      STA $0284,Y
988F   60            RTS
9890   20 C3 9B      JSR $9BC3
9893   20 AB 95      JSR $95AB
9896   A5 52         LDA $52
9898   C9 02         CMP #$02
989A   B0 0C         BCS $98A8
989C   20 7C 9D      JSR $9D7C
989F   A5 4D         LDA $4D
98A1   85 4C         STA $4C
98A3   A5 4E         LDA $4E
98A5   8D 8B 02      STA $028B
98A8   4C 50 80      JMP $8050
98AB   BC 91 02      LDY $0291,X
98AE   B9 00 02      LDA $0200,Y
98B1   A0 04         LDY #$04
98B3   88            DEY
98B4   30 08         BMI $98BE
98B6   D9 A1 DB      CMP $DBA1,Y
98B9   D0 F8         BNE $98B3
98BB   8C A7 02      STY $02A7
98BE   A0 06         LDY #$06
98C0   88            DEY
98C1   30 08         BMI $98CB
98C3   D9 A5 DB      CMP $DBA5,Y
98C6   D0 F8         BNE $98C0
98C8   8C 2D 02      STY $022D
98CB   60            RTS
98CC   20 7A 88      JSR $887A
98CF   A9 80         LDA #$80
98D1   20 E4 9C      JSR $9CE4
98D4   F0 F6         BEQ $98CC
98D6   20 CE 9D      JSR $9DCE
98D9   A6 4E         LDX $4E
98DB   E8            INX
98DC   8A            TXA
98DD   D0 05         BNE $98E4
98DF   20 18 91      JSR $9118
98E2   A9 02         LDA #$02
98E4   20 22 94      JSR $9422
98E7   A6 50         LDX $50
98E9   A9 01         LDA #$01
98EB   9D 34 02      STA $0234,X
98EE   A9 80         LDA #$80
98F0   05 50         ORA $50
98F2   A6 52         LDX $52
98F4   95 A8         STA $A8,X
98F6   60            RTS
98F7   A9 0C         LDA #$0C
98F9   8D 2A 02      STA $022A
98FC   A9 00         LDA #$00
98FE   A6 29         LDX $29
9900   CA            DEX
9901   F0 0B         BEQ $990E
9903   CA            DEX
9904   D0 21         BNE $9927
9906   AD 01 02      LDA $0201
9909   20 95 82      JSR $8295
990C   30 19         BMI $9927
990E   85 EF         STA $EF
9910   EE 2E 02      INC $022E
9913   EE 2F 02      INC $022F
9916   EE 91 02      INC $0291
9919   A9 80         LDA #$80
991B   85 F4         STA $F4
991D   A9 2A         LDA #$2A
991F   8D 00 02      STA $0200
9922   8D 01 02      STA $0201
9925   D0 18         BNE $993F
9927   20 99 80      JSR $8099
992A   D0 05         BNE $9931
992C   20 AF 81      JSR $81AF
992F   A0 03         LDY #$03
9931   88            DEY
9932   88            DEY
9933   8C 91 02      STY $0291
9936   20 B4 80      JSR $80B4
9939   20 70 82      JSR $8270
993C   20 0B 82      JSR $820B
993F   20 A2 82      JSR $82A2
9942   20 27 86      JSR $8627
9945   20 ED 82      JSR $82ED
9948   20 7C B1      JSR $B17C
994B   20 71 90      JSR $9071
994E   A6 50         LDX $50
9950   9D 3B 02      STA $023B,X
9953   A9 04         LDA #$04
9955   95 F9         STA $F9,X
9957   A9 00         LDA #$00
9959   85 CD         STA $CD
995B   60            RTS
995C   A5 52         LDA $52
995E   D0 0B         BNE $996B
9960   A9 00         LDA #$00
9962   8D 6E 02      STA $026E
9965   20 9E 91      JSR $919E
9968   4C 34 94      JMP $9434
996B   C9 0F         CMP #$0F
996D   F0 17         BEQ $9986
996F   20 9F 99      JSR $999F
9972   A5 52         LDA $52
9974   C9 02         CMP #$02
9976   90 F0         BCC $9968
9978   AD AB 02      LDA $02AB
997B   D0 06         BNE $9983
997D   20 15 B5      JSR $B515
9980   4C 4C 80      JMP $804C
9983   4C 67 80      JMP $8067
9986   A9 0E         LDA #$0E
9988   85 52         STA $52
998A   20 9F 99      JSR $999F
998D   C6 52         DEC $52
998F   10 F9         BPL $998A
9991   AD AB 02      LDA $02AB
9994   D0 06         BNE $999C
9996   20 15 B5      JSR $B515
9999   4C 4C 80      JMP $804C
999C   4C 67 80      JMP $8067
999F   A6 52         LDX $52
99A1   B5 A8         LDA $A8,X
99A3   C9 FF         CMP #$FF
99A5   D0 01         BNE $99A8
99A7   60            RTS
99A8   29 0F         AND #$0F
99AA   85 50         STA $50
99AC   20 5F 90      JSR $905F
99AF   C9 07         CMP #$07
99B1   F0 0F         BEQ $99C2
99B3   C9 04         CMP #$04
99B5   F0 11         BEQ $99C8
99B7   20 42 90      JSR $9042
99BA   B0 09         BCS $99C5
99BC   20 2A 9A      JSR $9A2A
99BF   20 72 9A      JSR $9A72
99C2   20 15 B5      JSR $B515
99C5   4C 9E 91      JMP $919E
99C8   20 2E 9D      JSR $9D2E
99CB   20 7D 8D      JSR $8D7D
99CE   20 5C A1      JSR $A15C
99D1   A6 69         LDX $69
99D3   86 44         STX $44
99D5   20 6E A5      JSR $A56E
99D8   F0 2B         BEQ $9A05
99DA   E6 44         INC $44
99DC   A9 00         LDA #$00
99DE   85 41         STA $41
99E0   85 42         STA $42
99E2   A5 6A         LDA $6A
99E4   38            SEC
99E5   E9 0E         SBC #$0E
99E7   85 43         STA $43
99E9   20 82 9E      JSR $9E82
99EC   A6 50         LDX $50
99EE   A5 41         LDA $41
99F0   9D 49 02      STA $0249,X
99F3   A5 42         LDA $42
99F5   9D 50 02      STA $0250,X
99F8   A9 40         LDA #$40
99FA   20 E4 9C      JSR $9CE4
99FD   F0 03         BEQ $9A02
99FF   20 72 9A      JSR $9A72
9A02   4C 9E 91      JMP $919E
9A05   A5 6A         LDA $6A
9A07   38            SEC
9A08   E9 0E         SBC #$0E
9A0A   85 43         STA $43
9A0C   AD 00 01      LDA $0100
9A0F   85 58         STA $58
9A11   20 97 9E      JSR $9E97
9A14   A2 00         LDX #$00
9A16   A9 02         LDA #$02
9A18   20 CC 9E      JSR $9ECC
9A1B   A6 50         LDX $50
9A1D   A5 5B         LDA $5B
9A1F   9D 49 02      STA $0249,X
9A22   A5 5C         LDA $5C
9A24   9D 50 02      STA $0250,X
9A27   4C F8 99      JMP $99F8
9A2A   A6 50         LDX $50
9A2C   BD 49 02      LDA $0249,X
9A2F   1D 50 02      ORA $0250,X
9A32   D0 0C         BNE $9A40
9A34   20 42 94      JSR $9442
9A37   C9 02         CMP #$02
9A39   D0 05         BNE $9A40
9A3B   A9 0D         LDA #$0D
9A3D   20 B1 8E      JSR $8EB1
9A40   20 42 94      JSR $9442
9A43   C9 02         CMP #$02
9A45   D0 12         BNE $9A59
9A47   20 7D 8D      JSR $8D7D
9A4A   A6 50         LDX $50
9A4C   BD 49 02      LDA $0249,X
9A4F   D0 03         BNE $9A54
9A51   DE 50 02      DEC $0250,X
9A54   DE 49 02      DEC $0249,X
9A57   A9 00         LDA #$00
9A59   38            SEC
9A5A   E9 01         SBC #$01
9A5C   48            PHA
9A5D   A9 00         LDA #$00
9A5F   20 22 94      JSR $9422
9A62   20 B1 8E      JSR $8EB1
9A65   68            PLA
9A66   20 B1 8E      JSR $8EB1
9A69   20 02 90      JSR $9002
9A6C   20 ED 94      JSR $94ED
9A6F   4C 7D 8D      JMP $8D7D
9A72   A6 50         LDX $50
9A74   8E 8C 02      STX $028C
9A77   A5 52         LDA $52
9A79   48            PHA
9A7A   BD 7D 02      LDA $027D,X
9A7D   85 4E         STA $4E
9A7F   BD 84 02      LDA $0284,X
9A82   8D 32 02      STA $0232
9A85   AD 2B 02      LDA $022B
9A88   85 4D         STA $4D
9A8A   20 11 9F      JSR $9F11
9A8D   48            PHA
9A8E   85 6C         STA $6C
9A90   20 BD 93      JSR $93BD
9A93   A0 00         LDY #$00
9A95   BD F1 01      LDA $01F1,X
9A98   85 56         STA $56
9A9A   AD 32 02      LDA $0232
9A9D   85 55         STA $55
9A9F   B1 55         LDA ($55),Y
9AA1   29 20         AND #$20
9AA3   F0 43         BEQ $9AE8
9AA5   20 5F 90      JSR $905F
9AA8   C9 04         CMP #$04
9AAA   F0 44         BEQ $9AF0
9AAC   B1 55         LDA ($55),Y
9AAE   29 8F         AND #$8F
9AB0   91 55         STA ($55),Y
9AB2   C8            INY
9AB3   B1 55         LDA ($55),Y
9AB5   85 4D         STA $4D
9AB7   84 42         STY $42
9AB9   A0 1B         LDY #$1B
9ABB   B1 55         LDA ($55),Y
9ABD   48            PHA
9ABE   88            DEY
9ABF   B1 55         LDA ($55),Y
9AC1   D0 0A         BNE $9ACD
9AC3   85 4D         STA $4D
9AC5   68            PLA
9AC6   85 4E         STA $4E
9AC8   A9 67         LDA #$67
9ACA   20 3F FF      JSR $FF3F
9ACD   48            PHA
9ACE   A9 00         LDA #$00
9AD0   91 55         STA ($55),Y
9AD2   C8            INY
9AD3   91 55         STA ($55),Y
9AD5   68            PLA
9AD6   A4 42         LDY $42
9AD8   91 55         STA ($55),Y
9ADA   C8            INY
9ADB   B1 55         LDA ($55),Y
9ADD   85 4E         STA $4E
9ADF   68            PLA
9AE0   91 55         STA ($55),Y
9AE2   20 13 87      JSR $8713
9AE5   4C F0 9A      JMP $9AF0
9AE8   B1 55         LDA ($55),Y
9AEA   29 0F         AND #$0F
9AEC   09 80         ORA #$80
9AEE   91 55         STA ($55),Y
9AF0   AE 8C 02      LDX $028C
9AF3   A0 1C         LDY #$1C
9AF5   BD 49 02      LDA $0249,X
9AF8   91 55         STA ($55),Y
9AFA   C8            INY
9AFB   BD 50 02      LDA $0250,X
9AFE   91 55         STA ($55),Y
9B00   68            PLA
9B01   AA            TAX
9B02   A9 90         LDA #$90
9B04   20 E6 94      JSR $94E6
9B07   68            PLA
9B08   85 52         STA $52
9B0A   4C 42 90      JMP $9042
9B0D   A9 01         LDA #$01
9B0F   20 5A 91      JSR $915A
9B12   20 9B 9B      JSR $9B9B
9B15   AD 2D 02      LDA $022D
9B18   48            PHA
9B19   0A            ASL A
9B1A   95 F9         STA $F9,X
9B1C   20 D6 8F      JSR $8FD6
9B1F   A6 50         LDX $50
9B21   A5 4D         LDA $4D
9B23   D0 05         BNE $9B2A
9B25   A5 4E         LDA $4E
9B27   9D 42 02      STA $0242,X
9B2A   68            PLA
9B2B   C9 04         CMP #$04
9B2D   D0 5E         BNE $9B8D
9B2F   A4 52         LDY $52
9B31   B9 A8 00      LDA $00A8,Y
9B34   09 40         ORA #$40
9B36   99 A8 00      STA $00A8,Y
9B39   AD 6F 02      LDA $026F
9B3C   9D 5E 02      STA $025E,X
9B3F   20 04 92      JSR $9204
9B42   10 03         BPL $9B47
9B44   4C 86 91      JMP $9186
9B47   A6 50         LDX $50
9B49   9D 65 02      STA $0265,X
9B4C   48            PHA
9B4D   20 6E A5      JSR $A56E
9B50   F0 17         BEQ $9B69
9B52   68            PLA
9B53   AC 70 02      LDY $0270
9B56   84 4D         STY $4D
9B58   AC 71 02      LDY $0271
9B5B   84 4E         STY $4E
9B5D   20 88 95      JSR $9588
9B60   20 AC 9D      JSR $9DAC
9B63   20 ED 94      JSR $94ED
9B66   4C 7B 9B      JMP $9B7B
9B69   68            PLA
9B6A   AD 70 02      LDA $0270
9B6D   9D 10 01      STA $0110,X
9B70   AD 71 02      LDA $0271
9B73   9D 09 01      STA $0109,X
9B76   A9 FF         LDA #$FF
9B78   9D 02 01      STA $0102,X
9B7B   A6 50         LDX $50
9B7D   A9 02         LDA #$02
9B7F   9D 57 02      STA $0257,X
9B82   A9 00         LDA #$00
9B84   20 22 94      JSR $9422
9B87   20 E1 A0      JSR $A0E1
9B8A   4C 7C 9D      JMP $9D7C
9B8D   20 9B 90      JSR $909B
9B90   A6 50         LDX $50
9B92   9D 3B 02      STA $023B,X
9B95   A9 88         LDA #$88
9B97   9D 34 02      STA $0234,X
9B9A   60            RTS
9B9B   A6 50         LDX $50
9B9D   B5 D1         LDA $D1,X
9B9F   0A            ASL A
9BA0   30 06         BMI $9BA8
9BA2   A8            TAY
9BA3   A9 02         LDA #$02
9BA5   99 BB 00      STA $00BB,Y
9BA8   B5 D8         LDA $D8,X
9BAA   09 80         ORA #$80
9BAC   95 D8         STA $D8,X
9BAE   0A            ASL A
9BAF   30 06         BMI $9BB7
9BB1   A8            TAY
9BB2   A9 02         LDA #$02
9BB4   99 BB 00      STA $00BB,Y
9BB7   A9 00         LDA #$00
9BB9   9D 42 02      STA $0242,X
9BBC   9D 49 02      STA $0249,X
9BBF   9D 50 02      STA $0250,X
9BC2   60            RTS
9BC3   20 ED B6      JSR $B6ED
9BC6   A9 01         LDA #$01
9BC8   20 57 91      JSR $9157
9BCB   20 85 95      JSR $9585
9BCE   20 9B 9B      JSR $9B9B
9BD1   A6 50         LDX $50
9BD3   AD 2D 02      LDA $022D
9BD6   48            PHA
9BD7   0A            ASL A
9BD8   95 F9         STA $F9,X
9BDA   68            PLA
9BDB   C9 04         CMP #$04
9BDD   F0 06         BEQ $9BE5
9BDF   A9 01         LDA #$01
9BE1   9D 34 02      STA $0234,X
9BE4   60            RTS
9BE5   A4 52         LDY $52
9BE7   B9 A8 00      LDA $00A8,Y
9BEA   29 3F         AND #$3F
9BEC   09 40         ORA #$40
9BEE   99 A8 00      STA $00A8,Y
9BF1   AD 6F 02      LDA $026F
9BF4   9D 5E 02      STA $025E,X
9BF7   20 04 92      JSR $9204
9BFA   10 03         BPL $9BFF
9BFC   4C 86 91      JMP $9186
9BFF   A6 50         LDX $50
9C01   9D 65 02      STA $0265,X
9C04   20 FA 9D      JSR $9DFA
9C07   20 68 B6      JSR $B668
9C0A   A5 4D         LDA $4D
9C0C   8D 70 02      STA $0270
9C0F   A5 4E         LDA $4E
9C11   8D 71 02      STA $0271
9C14   A6 50         LDX $50
9C16   BD 65 02      LDA $0265,X
9C19   20 88 95      JSR $9588
9C1C   A9 00         LDA #$00
9C1E   20 23 9E      JSR $9E23
9C21   A9 00         LDA #$00
9C23   20 CA 9C      JSR $9CCA
9C26   A9 11         LDA #$11
9C28   20 CA 9C      JSR $9CCA
9C2B   A9 00         LDA #$00
9C2D   20 CA 9C      JSR $9CCA
9C30   AD 6F 02      LDA $026F
9C33   20 CA 9C      JSR $9CCA
9C36   A5 4D         LDA $4D
9C38   20 CA 9C      JSR $9CCA
9C3B   A5 4E         LDA $4E
9C3D   20 CA 9C      JSR $9CCA
9C40   A9 10         LDA #$10
9C42   20 23 9E      JSR $9E23
9C45   20 7C 9D      JSR $9D7C
9C48   A5 4D         LDA $4D
9C4A   20 CA 9C      JSR $9CCA
9C4D   A5 4E         LDA $4E
9C4F   20 CA 9C      JSR $9CCA
9C52   20 A6 9D      JSR $9DA6
9C55   20 ED 94      JSR $94ED
9C58   20 6E A5      JSR $A56E
9C5B   D0 03         BNE $9C60
9C5D   20 82 9C      JSR $9C82
9C60   A9 02         LDA #$02
9C62   20 22 94      JSR $9422
9C65   A6 50         LDX $50
9C67   38            SEC
9C68   A9 00         LDA #$00
9C6A   FD 5E 02      SBC $025E,X
9C6D   9D 57 02      STA $0257,X
9C70   20 98 A2      JSR $A298
9C73   20 56 9D      JSR $9D56
9C76   20 9A 9D      JSR $9D9A
9C79   20 ED 94      JSR $94ED
9C7C   20 15 B5      JSR $B515
9C7F   4C 7B 9B      JMP $9B7B
9C82   A6 50         LDX $50
9C84   BD 65 02      LDA $0265,X
9C87   20 FA 9D      JSR $9DFA
9C8A   20 23 9E      JSR $9E23
9C8D   AD 70 02      LDA $0270
9C90   20 CA 9C      JSR $9CCA
9C93   AD 71 02      LDA $0271
9C96   20 CA 9C      JSR $9CCA
9C99   A9 FE         LDA #$FE
9C9B   20 CA 9C      JSR $9CCA
9C9E   AD 70 02      LDA $0270
9CA1   20 CA 9C      JSR $9CCA
9CA4   AD 71 02      LDA $0271
9CA7   20 CA 9C      JSR $9CCA
9CAA   20 68 B6      JSR $B668
9CAD   A6 50         LDX $50
9CAF   A5 4D         LDA $4D
9CB1   9D 10 01      STA $0110,X
9CB4   8D 70 02      STA $0270
9CB7   A5 4E         LDA $4E
9CB9   9D 09 01      STA $0109,X
9CBC   8D 71 02      STA $0271
9CBF   A9 FF         LDA #$FF
9CC1   9D 02 01      STA $0102,X
9CC4   20 81 A5      JSR $A581
9CC7   4C 7C 9D      JMP $9D7C
9CCA   48            PHA
9CCB   A6 50         LDX $50
9CCD   BD 65 02      LDA $0265,X
9CD0   4C BD 8E      JMP $8EBD
9CD3   90 06         BCC $9CDB
9CD5   A6 50         LDX $50
9CD7   15 F9         ORA $F9,X
9CD9   D0 06         BNE $9CE1
9CDB   A6 50         LDX $50
9CDD   49 FF         EOR #$FF
9CDF   35 F9         AND $F9,X
9CE1   95 F9         STA $F9,X
9CE3   60            RTS
9CE4   A6 50         LDX $50
9CE6   35 F9         AND $F9,X
9CE8   60            RTS
9CE9   20 11 9F      JSR $9F11
9CEC   AA            TAX
9CED   BD 72 02      LDA $0272,X
9CF0   29 FE         AND #$FE
9CF2   C9 90         CMP #$90
9CF4   60            RTS
9CF5   A2 00         LDX #$00
9CF7   86 42         STX $42
9CF9   B5 A8         LDA $A8,X
9CFB   C9 FF         CMP #$FF
9CFD   D0 08         BNE $9D07
9CFF   A6 42         LDX $42
9D01   E8            INX
9D02   E0 10         CPX #$10
9D04   90 F1         BCC $9CF7
9D06   60            RTS
9D07   86 42         STX $42
9D09   29 3F         AND #$3F
9D0B   A8            TAY
9D0C   B9 F9 00      LDA $00F9,Y
9D0F   29 01         AND #$01
9D11   85 41         STA $41
9D13   AE 6D 02      LDX $026D
9D16   B5 EF         LDA $EF,X
9D18   29 01         AND #$01
9D1A   C5 41         CMP $41
9D1C   D0 E1         BNE $9CFF
9D1E   B9 7D 02      LDA $027D,Y
9D21   D5 E5         CMP $E5,X
9D23   D0 DA         BNE $9CFF
9D25   B9 84 02      LDA $0284,Y
9D28   D5 EA         CMP $EA,X
9D2A   D0 D3         BNE $9CFF
9D2C   18            CLC
9D2D   60            RTS
9D2E   20 1C 9F      JSR $9F1C
9D31   50 06         BVC $9D39
9D33   20 9A 9D      JSR $9D9A
9D36   20 ED 94      JSR $94ED
9D39   60            RTS
9D3A   20 69 9D      JSR $9D69
9D3D   A5 4D         LDA $4D
9D3F   91 64         STA ($64),Y
9D41   C8            INY
9D42   A5 4E         LDA $4E
9D44   91 64         STA ($64),Y
9D46   4C 8D A0      JMP $A08D
9D49   20 69 9D      JSR $9D69
9D4C   B1 64         LDA ($64),Y
9D4E   85 4D         STA $4D
9D50   C8            INY
9D51   B1 64         LDA ($64),Y
9D53   85 4E         STA $4E
9D55   60            RTS
9D56   20 69 9D      JSR $9D69
9D59   A9 00         LDA #$00
9D5B   91 64         STA ($64),Y
9D5D   C8            INY
9D5E   A6 50         LDX $50
9D60   BD 57 02      LDA $0257,X
9D63   AA            TAX
9D64   CA            DEX
9D65   8A            TXA
9D66   91 64         STA ($64),Y
9D68   60            RTS
9D69   20 11 9F      JSR $9F11
9D6C   0A            ASL A
9D6D   AA            TAX
9D6E   B5 BC         LDA $BC,X
9D70   85 65         STA $65
9D72   A9 00         LDA #$00
9D74   85 64         STA $64
9D76   A0 00         LDY #$00
9D78   60            RTS
9D79   20 27 90      JSR $9027
9D7C   20 11 9F      JSR $9F11
9D7F   85 6C         STA $6C
9D81   0A            ASL A
9D82   A8            TAY
9D83   B9 0B 00      LDA $000B,Y
9D86   85 4D         STA $4D
9D88   B9 0C 00      LDA $000C,Y
9D8B   85 4E         STA $4E
9D8D   60            RTS
9D8E   A9 90         LDA #$90
9D90   85 28         STA $28
9D92   D0 24         BNE $9DB8
9D94   A9 80         LDA #$80
9D96   85 28         STA $28
9D98   D0 1E         BNE $9DB8
9D9A   A9 90         LDA #$90
9D9C   85 28         STA $28
9D9E   D0 24         BNE $9DC4
9DA0   A9 80         LDA #$80
9DA2   85 28         STA $28
9DA4   D0 1E         BNE $9DC4
9DA6   A9 90         LDA #$90
9DA8   85 28         STA $28
9DAA   D0 02         BNE $9DAE
9DAC   A9 80         LDA #$80
9DAE   85 28         STA $28
9DB0   A6 50         LDX $50
9DB2   BD 65 02      LDA $0265,X
9DB5   AA            TAX
9DB6   10 13         BPL $9DCB
9DB8   20 85 95      JSR $9585
9DBB   20 11 9F      JSR $9F11
9DBE   AA            TAX
9DBF   A9 00         LDA #$00
9DC1   9D 72 02      STA $0272,X
9DC4   20 9C A0      JSR $A09C
9DC7   20 11 9F      JSR $9F11
9DCA   AA            TAX
9DCB   4C 71 94      JMP $9471
9DCE   A9 00         LDA #$00
9DD0   20 22 94      JSR $9422
9DD3   20 71 90      JSR $9071
9DD6   85 4D         STA $4D
9DD8   20 71 90      JSR $9071
9DDB   85 4E         STA $4E
9DDD   60            RTS
9DDE   48            PHA
9DDF   A9 00         LDA #$00
9DE1   85 40         STA $40
9DE3   85 42         STA $42
9DE5   B9 F1 01      LDA $01F1,Y
9DE8   85 41         STA $41
9DEA   BD F1 01      LDA $01F1,X
9DED   85 43         STA $43
9DEF   68            PLA
9DF0   A8            TAY
9DF1   88            DEY
9DF2   B1 40         LDA ($40),Y
9DF4   91 42         STA ($42),Y
9DF6   88            DEY
9DF7   10 F9         BPL $9DF2
9DF9   60            RTS
9DFA   A8            TAY
9DFB   B9 F1 01      LDA $01F1,Y
9DFE   85 41         STA $41
9E00   A9 00         LDA #$00
9E02   85 40         STA $40
9E04   A8            TAY
9E05   91 40         STA ($40),Y
9E07   C8            INY
9E08   D0 FB         BNE $9E05
9E0A   60            RTS
9E0B   A9 00         LDA #$00
9E0D   20 15 9E      JSR $9E15
9E10   A0 02         LDY #$02
9E12   B1 64         LDA ($64),Y
9E14   60            RTS
9E15   85 64         STA $64
9E17   A6 50         LDX $50
9E19   BD 65 02      LDA $0265,X
9E1C   AA            TAX
9E1D   BD F1 01      LDA $01F1,X
9E20   85 65         STA $65
9E22   60            RTS
9E23   48            PHA
9E24   20 15 9E      JSR $9E15
9E27   48            PHA
9E28   8A            TXA
9E29   0A            ASL A
9E2A   AA            TAX
9E2B   68            PLA
9E2C   95 BC         STA $BC,X
9E2E   68            PLA
9E2F   95 BB         STA $BB,X
9E31   60            RTS
9E32   20 D3 9E      JSR $9ED3
9E35   30 0F         BMI $9E46
9E37   50 14         BVC $9E4D
9E39   A6 50         LDX $50
9E3B   BD 65 02      LDA $0265,X
9E3E   20 56 9E      JSR $9E56
9E41   20 D3 9E      JSR $9ED3
9E44   10 07         BPL $9E4D
9E46   20 5C A1      JSR $A15C
9E49   2C BF DB      BIT $DBBF
9E4C   60            RTS
9E4D   A5 6A         LDA $6A
9E4F   20 23 9E      JSR $9E23
9E52   2C BE DB      BIT $DBBE
9E55   60            RTS
9E56   85 6C         STA $6C
9E58   A9 80         LDA #$80
9E5A   D0 04         BNE $9E60
9E5C   85 6C         STA $6C
9E5E   A9 90         LDA #$90
9E60   85 28         STA $28
9E62   B1 64         LDA ($64),Y
9E64   85 4D         STA $4D
9E66   C8            INY
9E67   B1 64         LDA ($64),Y
9E69   85 4E         STA $4E
9E6B   A5 6C         LDA $6C
9E6D   20 88 95      JSR $9588
9E70   A6 6C         LDX $6C
9E72   4C E8 94      JMP $94E8
9E75   A6 50         LDX $50
9E77   BD 65 02      LDA $0265,X
9E7A   4C 45 94      JMP $9445
9E7D   A9 78         LDA #$78
9E7F   20 8D 9E      JSR $9E8D
9E82   CA            DEX
9E83   10 F8         BPL $9E7D
9E85   A5 43         LDA $43
9E87   4A            LSR A
9E88   20 8D 9E      JSR $9E8D
9E8B   A5 44         LDA $44
9E8D   18            CLC
9E8E   65 41         ADC $41
9E90   85 41         STA $41
9E92   90 02         BCC $9E96
9E94   E6 42         INC $42
9E96   60            RTS
9E97   20 38 8D      JSR $8D38
9E9A   20 C3 9E      JSR $9EC3
9E9D   A4 58         LDY $58
9E9F   88            DEY
9EA0   30 0A         BMI $9EAC
9EA2   A2 02         LDX #$02
9EA4   A9 D6         LDA #$D6
9EA6   20 CC 9E      JSR $9ECC
9EA9   4C 9F 9E      JMP $9E9F
9EAC   A4 44         LDY $44
9EAE   88            DEY
9EAF   30 0A         BMI $9EBB
9EB1   A2 00         LDX #$00
9EB3   A9 79         LDA #$79
9EB5   20 CC 9E      JSR $9ECC
9EB8   4C AE 9E      JMP $9EAE
9EBB   A5 43         LDA $43
9EBD   4A            LSR A
9EBE   A2 00         LDX #$00
9EC0   4C CC 9E      JMP $9ECC
9EC3   A2 00         LDX #$00
9EC5   86 60         STX $60
9EC7   86 61         STX $61
9EC9   86 62         STX $62
9ECB   60            RTS
9ECC   86 61         STX $61
9ECE   85 60         STA $60
9ED0   4C 4C 8D      JMP $8D4C
9ED3   20 6E A5      JSR $A56E
9ED6   D0 0C         BNE $9EE4
9ED8   AD 00 01      LDA $0100
9EDB   20 C0 A5      JSR $A5C0
9EDE   F0 04         BEQ $9EE4
9EE0   2C C1 DB      BIT $DBC1
9EE3   60            RTS
9EE4   20 0B 9E      JSR $9E0B
9EE7   C5 69         CMP $69
9EE9   D0 0E         BNE $9EF9
9EEB   A4 6A         LDY $6A
9EED   B1 64         LDA ($64),Y
9EEF   F0 04         BEQ $9EF5
9EF1   2C BE DB      BIT $DBBE
9EF4   60            RTS
9EF5   2C C0 DB      BIT $DBC0
9EF8   60            RTS
9EF9   A5 69         LDA $69
9EFB   C9 06         CMP #$06
9EFD   B0 0A         BCS $9F09
9EFF   0A            ASL A
9F00   A8            TAY
9F01   A9 04         LDA #$04
9F03   85 64         STA $64
9F05   B1 64         LDA ($64),Y
9F07   D0 04         BNE $9F0D
9F09   2C C1 DB      BIT $DBC1
9F0C   60            RTS
9F0D   2C BF DB      BIT $DBBF
9F10   60            RTS
9F11   A6 50         LDX $50
9F13   B5 D1         LDA $D1,X
9F15   10 02         BPL $9F19
9F17   B5 D8         LDA $D8,X
9F19   29 BF         AND #$BF
9F1B   60            RTS
9F1C   A6 50         LDX $50
9F1E   86 74         STX $74
9F20   B5 D1         LDA $D1,X
9F22   10 08         BPL $9F2C
9F24   8A            TXA
9F25   18            CLC
9F26   69 07         ADC #$07
9F28   85 74         STA $74
9F2A   B5 D8         LDA $D8,X
9F2C   85 41         STA $41
9F2E   29 1F         AND #$1F
9F30   24 41         BIT $41
9F32   60            RTS
9F33   A6 50         LDX $50
9F35   B5 D1         LDA $D1,X
9F37   30 02         BMI $9F3B
9F39   B5 D8         LDA $D8,X
9F3B   C9 FF         CMP #$FF
9F3D   60            RTS
9F3E   A6 50         LDX $50
9F40   09 80         ORA #$80
9F42   B4 D1         LDY $D1,X
9F44   10 03         BPL $9F49
9F46   95 D1         STA $D1,X
9F48   60            RTS
9F49   95 D8         STA $D8,X
9F4B   60            RTS
9F4C   A9 20         LDA #$20
9F4E   20 DB 9C      JSR $9CDB
9F51   A9 80         LDA #$80
9F53   20 E4 9C      JSR $9CE4
9F56   D0 46         BNE $9F9E
9F58   A6 50         LDX $50
9F5A   FE 49 02      INC $0249,X
9F5D   D0 03         BNE $9F62
9F5F   FE 50 02      INC $0250,X
9F62   A6 50         LDX $50
9F64   BD 57 02      LDA $0257,X
9F67   F0 30         BEQ $9F99
9F69   20 42 94      JSR $9442
9F6C   A6 50         LDX $50
9F6E   DD 57 02      CMP $0257,X
9F71   90 03         BCC $9F76
9F73   20 BF 9F      JSR $9FBF
9F76   A6 50         LDX $50
9F78   BD 57 02      LDA $0257,X
9F7B   20 22 94      JSR $9422
9F7E   A1 BB         LDA ($BB,X)
9F80   85 54         STA $54
9F82   A9 20         LDA #$20
9F84   20 DB 9C      JSR $9CDB
9F87   20 BC A2      JSR $A2BC
9F8A   48            PHA
9F8B   90 29         BCC $9FB6
9F8D   A9 00         LDA #$00
9F8F   20 50 94      JSR $9450
9F92   D0 22         BNE $9FB6
9F94   68            PLA
9F95   C9 02         CMP #$02
9F97   F0 12         BEQ $9FAB
9F99   A9 80         LDA #$80
9F9B   20 D5 9C      JSR $9CD5
9F9E   20 69 90      JSR $9069
9FA1   B5 BB         LDA $BB,X
9FA3   99 42 02      STA $0242,Y
9FA6   A9 0D         LDA #$0D
9FA8   85 54         STA $54
9FAA   60            RTS
9FAB   20 B7 9F      JSR $9FB7
9FAE   A6 50         LDX $50
9FB0   A9 00         LDA #$00
9FB2   9D 57 02      STA $0257,X
9FB5   60            RTS
9FB6   68            PLA
9FB7   A6 50         LDX $50
9FB9   9D 57 02      STA $0257,X
9FBC   4C FD A0      JMP $A0FD
9FBF   20 CE 9D      JSR $9DCE
9FC2   20 1C 9F      JSR $9F1C
9FC5   50 16         BVC $9FDD
9FC7   20 9A 9D      JSR $9D9A
9FCA   20 7D 8D      JSR $8D7D
9FCD   A9 02         LDA #$02
9FCF   20 22 94      JSR $9422
9FD2   20 E9 9C      JSR $9CE9
9FD5   D0 24         BNE $9FFB
9FD7   20 94 9D      JSR $9D94
9FDA   4C ED 94      JMP $94ED
9FDD   20 7D 8D      JSR $8D7D
9FE0   20 E9 9C      JSR $9CE9
9FE3   D0 06         BNE $9FEB
9FE5   20 94 9D      JSR $9D94
9FE8   20 ED 94      JSR $94ED
9FEB   20 CE 9D      JSR $9DCE
9FEE   A5 4D         LDA $4D
9FF0   F0 09         BEQ $9FFB
9FF2   20 7D 8D      JSR $8D7D
9FF5   20 94 9D      JSR $9D94
9FF8   4C 7D 8D      JMP $8D7D
9FFB   60            RTS
9FFC   20 8D A0      JSR $A08D
9FFF   20 11 9F      JSR $9F11
A002   0A            ASL A
A003   AA            TAX
A004   A5 54         LDA $54
A006   81 BB         STA ($BB,X)
A008   B4 BB         LDY $BB,X
A00A   C8            INY
A00B   D0 09         BNE $A016
A00D   A4 50         LDY $50
A00F   B9 57 02      LDA $0257,Y
A012   F0 0A         BEQ $A01E
A014   A0 02         LDY #$02
A016   98            TYA
A017   A4 50         LDY $50
A019   D9 57 02      CMP $0257,Y
A01C   D0 05         BNE $A023
A01E   A9 20         LDA #$20
A020   4C D5 9C      JMP $9CD5
A023   F6 BB         INC $BB,X
A025   D0 0B         BNE $A032
A027   AD 01 01      LDA $0101
A02A   09 10         ORA #$10
A02C   8D 01 01      STA $0101
A02F   4C BF 9F      JMP $9FBF
A032   60            RTS
A033   A9 A0         LDA #$A0
A035   20 E4 9C      JSR $9CE4
A038   D0 27         BNE $A061
A03A   A5 54         LDA $54
A03C   20 FC 9F      JSR $9FFC
A03F   A5 51         LDA $51
A041   F0 0D         BEQ $A050
A043   60            RTS
A044   A9 20         LDA #$20
A046   20 E4 9C      JSR $9CE4
A049   F0 05         BEQ $A050
A04B   A9 51         LDA #$51
A04D   8D AB 02      STA $02AB
A050   20 7B A0      JSR $A07B
A053   20 E1 A0      JSR $A0E1
A056   AD AB 02      LDA $02AB
A059   F0 03         BEQ $A05E
A05B   4C 7C 80      JMP $807C
A05E   4C 62 A8      JMP $A862
A061   29 80         AND #$80
A063   D0 05         BNE $A06A
A065   A5 51         LDA $51
A067   F0 DB         BEQ $A044
A069   60            RTS
A06A   A5 54         LDA $54
A06C   48            PHA
A06D   20 D6 A2      JSR $A2D6
A070   68            PLA
A071   85 54         STA $54
A073   A9 80         LDA #$80
A075   20 DB 9C      JSR $9CDB
A078   4C 3A A0      JMP $A03A
A07B   A9 20         LDA #$20
A07D   20 E4 9C      JSR $9CE4
A080   D0 0A         BNE $A08C
A082   A9 00         LDA #$00
A084   85 54         STA $54
A086   20 FC 9F      JSR $9FFC
A089   4C 7B A0      JMP $A07B
A08C   60            RTS
A08D   A9 40         LDA #$40
A08F   20 D5 9C      JSR $9CD5
A092   20 1C 9F      JSR $9F1C
A095   09 40         ORA #$40
A097   A6 74         LDX $74
A099   95 D1         STA $D1,X
A09B   60            RTS
A09C   20 1C 9F      JSR $9F1C
A09F   29 BF         AND #$BF
A0A1   A6 74         LDX $74
A0A3   95 D1         STA $D1,X
A0A5   60            RTS
A0A6   A9 80         LDA #$80
A0A8   20 E4 9C      JSR $9CE4
A0AB   D0 3F         BNE $A0EC
A0AD   20 69 90      JSR $9069
A0B0   B5 BB         LDA $BB,X
A0B2   D9 42 02      CMP $0242,Y
A0B5   F0 2A         BEQ $A0E1
A0B7   F6 BB         INC $BB,X
A0B9   D0 0E         BNE $A0C9
A0BB   AD 01 01      LDA $0101
A0BE   09 10         ORA #$10
A0C0   8D 01 01      STA $0101
A0C3   20 BF 9F      JSR $9FBF
A0C6   20 69 90      JSR $9069
A0C9   A1 BB         LDA ($BB,X)
A0CB   99 3B 02      STA $023B,Y
A0CE   A9 89         LDA #$89
A0D0   99 34 02      STA $0234,Y
A0D3   B5 BB         LDA $BB,X
A0D5   D9 42 02      CMP $0242,Y
A0D8   F0 01         BEQ $A0DB
A0DA   60            RTS
A0DB   A9 81         LDA #$81
A0DD   99 34 02      STA $0234,Y
A0E0   60            RTS
A0E1   20 4C 9F      JSR $9F4C
A0E4   20 69 90      JSR $9069
A0E7   A5 54         LDA $54
A0E9   4C CB A0      JMP $A0CB
A0EC   A6 50         LDX $50
A0EE   A9 0D         LDA #$0D
A0F0   9D 3B 02      STA $023B,X
A0F3   A9 81         LDA #$81
A0F5   9D 34 02      STA $0234,X
A0F8   A9 50         LDA #$50
A0FA   20 7C 80      JSR $807C
A0FD   A6 50         LDX $50
A0FF   BD 57 02      LDA $0257,X
A102   85 56         STA $56
A104   C6 56         DEC $56
A106   C9 02         CMP #$02
A108   D0 04         BNE $A10E
A10A   A9 FF         LDA #$FF
A10C   85 56         STA $56
A10E   BD 5E 02      LDA $025E,X
A111   85 57         STA $57
A113   20 42 94      JSR $9442
A116   A6 50         LDX $50
A118   C5 56         CMP $56
A11A   90 19         BCC $A135
A11C   F0 17         BEQ $A135
A11E   20 7D 8D      JSR $8D7D
A121   20 43 A1      JSR $A143
A124   90 08         BCC $A12E
A126   A6 50         LDX $50
A128   9D 42 02      STA $0242,X
A12B   4C 7D 8D      JMP $8D7D
A12E   20 7D 8D      JSR $8D7D
A131   A9 FF         LDA #$FF
A133   85 56         STA $56
A135   20 43 A1      JSR $A143
A138   B0 03         BCS $A13D
A13A   20 42 94      JSR $9442
A13D   A6 50         LDX $50
A13F   9D 42 02      STA $0242,X
A142   60            RTS
A143   20 69 9D      JSR $9D69
A146   A4 56         LDY $56
A148   B1 64         LDA ($64),Y
A14A   D0 0D         BNE $A159
A14C   88            DEY
A14D   C0 02         CPY #$02
A14F   90 04         BCC $A155
A151   C6 57         DEC $57
A153   D0 F3         BNE $A148
A155   C6 57         DEC $57
A157   18            CLC
A158   60            RTS
A159   98            TYA
A15A   38            SEC
A15B   60            RTS
A15C   20 6E A5      JSR $A56E
A15F   D0 03         BNE $A164
A161   20 A9 A5      JSR $A5A9
A164   20 0B 9E      JSR $9E0B
A167   85 69         STA $69
A169   A9 04         LDA #$04
A16B   85 64         STA $64
A16D   A0 0A         LDY #$0A
A16F   D0 04         BNE $A175
A171   88            DEY
A172   88            DEY
A173   30 27         BMI $A19C
A175   B1 64         LDA ($64),Y
A177   F0 F8         BEQ $A171
A179   98            TYA
A17A   4A            LSR A
A17B   C5 69         CMP $69
A17D   F0 0A         BEQ $A189
A17F   85 69         STA $69
A181   A6 50         LDX $50
A183   BD 65 02      LDA $0265,X
A186   20 56 9E      JSR $9E56
A189   A0 00         LDY #$00
A18B   84 64         STY $64
A18D   B1 64         LDA ($64),Y
A18F   D0 0B         BNE $A19C
A191   C8            INY
A192   B1 64         LDA ($64),Y
A194   A8            TAY
A195   88            DEY
A196   84 6A         STY $6A
A198   98            TYA
A199   4C 23 9E      JMP $9E23
A19C   A9 67         LDA #$67
A19E   20 3F FF      JSR $FF3F
A1A1   20 65 81      JSR $8165
A1A4   AD 01 02      LDA $0201
A1A7   85 52         STA $52
A1A9   20 27 90      JSR $9027
A1AC   90 05         BCC $A1B3
A1AE   A9 70         LDA #$70
A1B0   20 7C 80      JSR $807C
A1B3   A9 A0         LDA #$A0
A1B5   20 DB 9C      JSR $9CDB
A1B8   20 5F 90      JSR $905F
A1BB   F0 05         BEQ $A1C2
A1BD   A9 64         LDA #$64
A1BF   20 7C 80      JSR $807C
A1C2   AD 02 02      LDA $0202
A1C5   9D 49 02      STA $0249,X
A1C8   AD 03 02      LDA $0203
A1CB   9D 50 02      STA $0250,X
A1CE   A6 50         LDX $50
A1D0   A9 89         LDA #$89
A1D2   9D 34 02      STA $0234,X
A1D5   AD 04 02      LDA $0204
A1D8   F0 11         BEQ $A1EB
A1DA   38            SEC
A1DB   E9 01         SBC #$01
A1DD   F0 0C         BEQ $A1EB
A1DF   DD 5E 02      CMP $025E,X
A1E2   90 07         BCC $A1EB
A1E4   A9 51         LDA #$51
A1E6   8D AB 02      STA $02AB
A1E9   A9 00         LDA #$00
A1EB   85 68         STA $68
A1ED   20 89 8C      JSR $8C89
A1F0   20 32 9E      JSR $9E32
A1F3   50 08         BVC $A1FD
A1F5   A9 80         LDA #$80
A1F7   20 D5 9C      JSR $9CD5
A1FA   4C EC A0      JMP $A0EC
A1FD   20 0D A2      JSR $A20D
A200   A9 80         LDA #$80
A202   20 E4 9C      JSR $9CE4
A205   F0 03         BEQ $A20A
A207   4C EC A0      JMP $A0EC
A20A   4C 4C 80      JMP $804C
A20D   20 35 A2      JSR $A235
A210   A5 6B         LDA $6B
A212   20 22 94      JSR $9422
A215   A6 50         LDX $50
A217   BD 5E 02      LDA $025E,X
A21A   38            SEC
A21B   E5 68         SBC $68
A21D   B0 03         BCS $A222
A21F   4C 9C A1      JMP $A19C
A222   18            CLC
A223   65 6B         ADC $6B
A225   90 03         BCC $A22A
A227   69 01         ADC #$01
A229   38            SEC
A22A   20 8A 9F      JSR $9F8A
A22D   4C C6 A0      JMP $A0C6
A230   A9 51         LDA #$51
A232   20 7C 80      JSR $807C
A235   A5 64         LDA $64
A237   85 58         STA $58
A239   A5 65         LDA $65
A23B   85 59         STA $59
A23D   20 73 A2      JSR $A273
A240   F0 22         BEQ $A264
A242   20 2E 9D      JSR $9D2E
A245   20 49 9D      JSR $9D49
A248   A5 4D         LDA $4D
A24A   F0 19         BEQ $A265
A24C   20 7D 8D      JSR $8D7D
A24F   20 73 A2      JSR $A273
A252   D0 11         BNE $A265
A254   20 49 9D      JSR $9D49
A257   A5 4D         LDA $4D
A259   F0 09         BEQ $A264
A25B   20 7D 8D      JSR $8D7D
A25E   20 94 9D      JSR $9D94
A261   4C 7D 8D      JMP $8D7D
A264   60            RTS
A265   A0 00         LDY #$00
A267   B1 58         LDA ($58),Y
A269   85 4D         STA $4D
A26B   C8            INY
A26C   B1 58         LDA ($58),Y
A26E   85 4E         STA $4E
A270   4C EA 8F      JMP $8FEA
A273   20 7C 9D      JSR $9D7C
A276   A0 00         LDY #$00
A278   B1 58         LDA ($58),Y
A27A   C5 4D         CMP $4D
A27C   F0 01         BEQ $A27F
A27E   60            RTS
A27F   C8            INY
A280   B1 58         LDA ($58),Y
A282   C5 4E         CMP $4E
A284   D0 11         BNE $A297
A286   AD 01 01      LDA $0101
A289   29 10         AND #$10
A28B   F0 0A         BEQ $A297
A28D   AD 01 01      LDA $0101
A290   29 EF         AND #$EF
A292   8D 01 01      STA $0101
A295   49 10         EOR #$10
A297   60            RTS
A298   20 69 9D      JSR $9D69
A29B   A0 02         LDY #$02
A29D   A9 00         LDA #$00
A29F   91 64         STA ($64),Y
A2A1   C8            INY
A2A2   D0 FB         BNE $A29F
A2A4   20 BC A2      JSR $A2BC
A2A7   9D 57 02      STA $0257,X
A2AA   A8            TAY
A2AB   A9 FF         LDA #$FF
A2AD   91 64         STA ($64),Y
A2AF   20 BC A2      JSR $A2BC
A2B2   90 F3         BCC $A2A7
A2B4   D0 05         BNE $A2BB
A2B6   A9 00         LDA #$00
A2B8   9D 57 02      STA $0257,X
A2BB   60            RTS
A2BC   A6 50         LDX $50
A2BE   BD 57 02      LDA $0257,X
A2C1   38            SEC
A2C2   F0 0E         BEQ $A2D2
A2C4   18            CLC
A2C5   7D 5E 02      ADC $025E,X
A2C8   90 0B         BCC $A2D5
A2CA   D0 06         BNE $A2D2
A2CC   A9 02         LDA #$02
A2CE   2C BD DB      BIT $DBBD
A2D1   60            RTS
A2D2   69 01         ADC #$01
A2D4   38            SEC
A2D5   60            RTS
A2D6   20 38 A4      JSR $A438
A2D9   20 89 8C      JSR $8C89
A2DC   20 5B B6      JSR $B65B
A2DF   A4 50         LDY $50
A2E1   BE 5E 02      LDX $025E,Y
A2E4   CA            DEX
A2E5   8A            TXA
A2E6   18            CLC
A2E7   65 6B         ADC $6B
A2E9   90 0C         BCC $A2F7
A2EB   E6 6A         INC $6A
A2ED   E6 6A         INC $6A
A2EF   D0 06         BNE $A2F7
A2F1   E6 69         INC $69
A2F3   A9 10         LDA #$10
A2F5   85 6A         STA $6A
A2F7   A5 56         LDA $56
A2F9   18            CLC
A2FA   69 02         ADC #$02
A2FC   20 23 9E      JSR $9E23
A2FF   A5 69         LDA $69
A301   C9 06         CMP #$06
A303   90 11         BCC $A316
A305   20 6E A5      JSR $A56E
A308   D0 07         BNE $A311
A30A   85 69         STA $69
A30C   EE 00 01      INC $0100
A30F   D0 05         BNE $A316
A311   A9 52         LDA #$52
A313   20 7C 80      JSR $807C
A316   A5 6A         LDA $6A
A318   38            SEC
A319   E5 56         SBC $56
A31B   B0 03         BCS $A320
A31D   E9 0F         SBC #$0F
A31F   18            CLC
A320   48            PHA
A321   20 6E A5      JSR $A56E
A324   F0 1E         BEQ $A344
A326   68            PLA
A327   85 43         STA $43
A329   A5 69         LDA $69
A32B   E5 55         SBC $55
A32D   85 44         STA $44
A32F   A2 00         LDX #$00
A331   86 41         STX $41
A333   86 42         STX $42
A335   AA            TAX
A336   20 82 9E      JSR $9E82
A339   A5 42         LDA $42
A33B   D0 2F         BNE $A36C
A33D   A6 41         LDX $41
A33F   CA            DEX
A340   D0 2A         BNE $A36C
A342   F0 26         BEQ $A36A
A344   68            PLA
A345   85 43         STA $43
A347   A5 69         LDA $69
A349   E5 55         SBC $55
A34B   B0 04         BCS $A351
A34D   E6 58         INC $58
A34F   69 06         ADC #$06
A351   85 44         STA $44
A353   AD 00 01      LDA $0100
A356   38            SEC
A357   E5 58         SBC $58
A359   85 58         STA $58
A35B   20 97 9E      JSR $9E97
A35E   A5 5C         LDA $5C
A360   D0 0A         BNE $A36C
A362   A6 5B         LDX $5B
A364   D0 01         BNE $A367
A366   60            RTS
A367   CA            DEX
A368   D0 02         BNE $A36C
A36A   E6 57         INC $57
A36C   CD 8E 02      CMP $028E
A36F   90 09         BCC $A37A
A371   D0 9E         BNE $A311
A373   AD 8D 02      LDA $028D
A376   C5 41         CMP $41
A378   90 97         BCC $A311
A37A   A9 01         LDA #$01
A37C   20 50 94      JSR $9450
A37F   18            CLC
A380   69 01         ADC #$01
A382   A6 50         LDX $50
A384   9D 57 02      STA $0257,X
A387   20 68 B6      JSR $B668
A38A   20 3A 9D      JSR $9D3A
A38D   A5 57         LDA $57
A38F   D0 15         BNE $A3A6
A391   20 9A 9D      JSR $9D9A
A394   20 7D 8D      JSR $8D7D
A397   20 85 95      JSR $9585
A39A   20 68 B6      JSR $B668
A39D   20 3A 9D      JSR $9D3A
A3A0   20 98 A2      JSR $A298
A3A3   4C B2 A3      JMP $A3B2
A3A6   20 7D 8D      JSR $8D7D
A3A9   20 85 95      JSR $9585
A3AC   20 98 A2      JSR $A298
A3AF   20 56 9D      JSR $9D56
A3B2   20 9A 9D      JSR $9D9A
A3B5   20 49 9D      JSR $9D49
A3B8   A5 4D         LDA $4D
A3BA   48            PHA
A3BB   A5 4E         LDA $4E
A3BD   48            PHA
A3BE   20 7C 9D      JSR $9D7C
A3C1   A5 4E         LDA $4E
A3C3   48            PHA
A3C4   A5 4D         LDA $4D
A3C6   48            PHA
A3C7   20 75 9E      JSR $9E75
A3CA   AA            TAX
A3CB   D0 0A         BNE $A3D7
A3CD   20 59 A4      JSR $A459
A3D0   A9 10         LDA #$10
A3D2   20 23 9E      JSR $9E23
A3D5   E6 55         INC $55
A3D7   68            PLA
A3D8   20 CA 9C      JSR $9CCA
A3DB   68            PLA
A3DC   20 CA 9C      JSR $9CCA
A3DF   68            PLA
A3E0   85 4E         STA $4E
A3E2   68            PLA
A3E3   85 4D         STA $4D
A3E5   F0 1B         BEQ $A402
A3E7   20 6E A5      JSR $A56E
A3EA   D0 07         BNE $A3F3
A3EC   A5 5A         LDA $5A
A3EE   CD 00 01      CMP $0100
A3F1   90 A1         BCC $A394
A3F3   A5 55         LDA $55
A3F5   C5 69         CMP $69
A3F7   D0 9B         BNE $A394
A3F9   20 75 9E      JSR $9E75
A3FC   C5 6A         CMP $6A
A3FE   90 94         BCC $A394
A400   F0 A4         BEQ $A3A6
A402   20 75 9E      JSR $9E75
A405   48            PHA
A406   A9 00         LDA #$00
A408   20 15 9E      JSR $9E15
A40B   A9 00         LDA #$00
A40D   A8            TAY
A40E   91 64         STA ($64),Y
A410   C8            INY
A411   68            PLA
A412   38            SEC
A413   E9 01         SBC #$01
A415   91 64         STA ($64),Y
A417   20 A6 9D      JSR $9DA6
A41A   20 ED 94      JSR $94ED
A41D   20 15 B5      JSR $B515
A420   20 89 8C      JSR $8C89
A423   20 7D 8D      JSR $8D7D
A426   20 32 9E      JSR $9E32
A429   70 03         BVS $A42E
A42B   4C 0D A2      JMP $A20D
A42E   A9 80         LDA #$80
A430   20 D5 9C      JSR $9CD5
A433   A9 50         LDA #$50
A435   20 7C 80      JSR $807C
A438   20 5C A1      JSR $A15C
A43B   20 35 A2      JSR $A235
A43E   20 6E A5      JSR $A56E
A441   D0 07         BNE $A44A
A443   AD 00 01      LDA $0100
A446   85 5A         STA $5A
A448   85 58         STA $58
A44A   A5 6A         LDA $6A
A44C   85 56         STA $56
A44E   A5 69         LDA $69
A450   85 55         STA $55
A452   A9 00         LDA #$00
A454   85 57         STA $57
A456   85 68         STA $68
A458   60            RTS
A459   20 68 B6      JSR $B668
A45C   20 7D 8D      JSR $8D7D
A45F   20 2E 9D      JSR $9D2E
A462   20 11 9F      JSR $9F11
A465   48            PHA
A466   20 FA 9D      JSR $9DFA
A469   A6 50         LDX $50
A46B   BD 65 02      LDA $0265,X
A46E   A8            TAY
A46F   68            PLA
A470   AA            TAX
A471   20 6E A5      JSR $A56E
A474   D0 03         BNE $A479
A476   4C 47 A5      JMP $A547
A479   A9 10         LDA #$10
A47B   20 DE 9D      JSR $9DDE
A47E   A9 00         LDA #$00
A480   20 15 9E      JSR $9E15
A483   A0 02         LDY #$02
A485   B1 64         LDA ($64),Y
A487   48            PHA
A488   A9 00         LDA #$00
A48A   20 22 94      JSR $9422
A48D   68            PLA
A48E   18            CLC
A48F   69 01         ADC #$01
A491   91 64         STA ($64),Y
A493   0A            ASL A
A494   69 04         ADC #$04
A496   85 58         STA $58
A498   A8            TAY
A499   38            SEC
A49A   E9 02         SBC #$02
A49C   85 59         STA $59
A49E   A5 4D         LDA $4D
A4A0   85 56         STA $56
A4A2   91 64         STA ($64),Y
A4A4   C8            INY
A4A5   A5 4E         LDA $4E
A4A7   85 57         STA $57
A4A9   91 64         STA ($64),Y
A4AB   A0 00         LDY #$00
A4AD   98            TYA
A4AE   91 64         STA ($64),Y
A4B0   C8            INY
A4B1   A9 11         LDA #$11
A4B3   91 64         STA ($64),Y
A4B5   A9 10         LDA #$10
A4B7   20 22 94      JSR $9422
A4BA   20 8E 9D      JSR $9D8E
A4BD   20 ED 94      JSR $94ED
A4C0   A6 50         LDX $50
A4C2   BD 65 02      LDA $0265,X
A4C5   48            PHA
A4C6   20 1C 9F      JSR $9F1C
A4C9   A6 50         LDX $50
A4CB   9D 65 02      STA $0265,X
A4CE   68            PLA
A4CF   A6 74         LDX $74
A4D1   95 D1         STA $D1,X
A4D3   A9 00         LDA #$00
A4D5   20 22 94      JSR $9422
A4D8   A0 00         LDY #$00
A4DA   A5 4D         LDA $4D
A4DC   91 64         STA ($64),Y
A4DE   C8            INY
A4DF   A5 4E         LDA $4E
A4E1   91 64         STA ($64),Y
A4E3   20 6E A5      JSR $A56E
A4E6   D0 41         BNE $A529
A4E8   A5 55         LDA $55
A4EA   C9 FF         CMP #$FF
A4EC   D0 3B         BNE $A529
A4EE   A5 4E         LDA $4E
A4F0   48            PHA
A4F1   A5 4D         LDA $4D
A4F3   48            PHA
A4F4   20 9A 9D      JSR $9D9A
A4F7   20 ED 94      JSR $94ED
A4FA   20 7D 8D      JSR $8D7D
A4FD   20 7E A5      JSR $A57E
A500   E6 5A         INC $5A
A502   A5 5A         LDA $5A
A504   0A            ASL A
A505   18            CLC
A506   69 03         ADC #$03
A508   20 23 9E      JSR $9E23
A50B   68            PLA
A50C   20 CA 9C      JSR $9CCA
A50F   68            PLA
A510   20 CA 9C      JSR $9CCA
A513   20 81 A5      JSR $A581
A516   A5 5A         LDA $5A
A518   48            PHA
A519   4C CC A5      JMP $A5CC
A51C   20 11 9F      JSR $9F11
A51F   A6 50         LDX $50
A521   20 56 9E      JSR $9E56
A524   A9 00         LDA #$00
A526   20 22 94      JSR $9422
A529   C6 59         DEC $59
A52B   C6 59         DEC $59
A52D   A4 58         LDY $58
A52F   A5 56         LDA $56
A531   91 64         STA ($64),Y
A533   C8            INY
A534   A5 57         LDA $57
A536   91 64         STA ($64),Y
A538   20 9A 9D      JSR $9D9A
A53B   20 ED 94      JSR $94ED
A53E   A4 59         LDY $59
A540   C0 03         CPY #$03
A542   B0 D8         BCS $A51C
A544   4C 7D 8D      JMP $8D7D
A547   A5 55         LDA $55
A549   C9 05         CMP #$05
A54B   B0 03         BCS $A550
A54D   4C 79 A4      JMP $A479
A550   A9 FF         LDA #$FF
A552   85 55         STA $55
A554   A9 00         LDA #$00
A556   20 22 94      JSR $9422
A559   A0 02         LDY #$02
A55B   91 64         STA ($64),Y
A55D   A6 50         LDX $50
A55F   BD 5E 02      LDA $025E,X
A562   C8            INY
A563   91 64         STA ($64),Y
A565   C8            INY
A566   F0 03         BEQ $A56B
A568   4C 9E A4      JMP $A49E
A56B   4C 79 A4      JMP $A479
A56E   AD 01 01      LDA $0101
A571   29 20         AND #$20
A573   60            RTS
A574   A6 50         LDX $50
A576   A9 FE         LDA #$FE
A578   DD 02 01      CMP $0102,X
A57B   D0 01         BNE $A57E
A57D   60            RTS
A57E   A9 80         LDA #$80
A580   2C A9 90      BIT $90A9
A583   48            PHA
A584   A6 50         LDX $50
A586   BD 10 01      LDA $0110,X
A589   85 4D         STA $4D
A58B   BD 09 01      LDA $0109,X
A58E   85 4E         STA $4E
A590   A9 FF         LDA #$FF
A592   9D 02 01      STA $0102,X
A595   BD 65 02      LDA $0265,X
A598   85 6C         STA $6C
A59A   20 88 95      JSR $9588
A59D   68            PLA
A59E   20 E4 94      JSR $94E4
A5A1   A6 50         LDX $50
A5A3   A9 FE         LDA #$FE
A5A5   9D 02 01      STA $0102,X
A5A8   60            RTS
A5A9   A9 5A         LDA #$5A
A5AB   8D 00 01      STA $0100
A5AE   20 C0 A5      JSR $A5C0
A5B1   D0 01         BNE $A5B4
A5B3   60            RTS
A5B4   CE 00 01      DEC $0100
A5B7   AD 00 01      LDA $0100
A5BA   20 D2 A5      JSR $A5D2
A5BD   D0 F5         BNE $A5B4
A5BF   60            RTS
A5C0   A6 50         LDX $50
A5C2   DD 02 01      CMP $0102,X
A5C5   D0 01         BNE $A5C8
A5C7   60            RTS
A5C8   48            PHA
A5C9   20 74 A5      JSR $A574
A5CC   A9 03         LDA #$03
A5CE   20 15 9E      JSR $9E15
A5D1   68            PLA
A5D2   AA            TAX
A5D3   0A            ASL A
A5D4   A8            TAY
A5D5   B1 64         LDA ($64),Y
A5D7   D0 03         BNE $A5DC
A5D9   09 FF         ORA #$FF
A5DB   60            RTS
A5DC   85 4D         STA $4D
A5DE   C8            INY
A5DF   B1 64         LDA ($64),Y
A5E1   85 4E         STA $4E
A5E3   8A            TXA
A5E4   48            PHA
A5E5   A9 FF         LDA #$FF
A5E7   A6 50         LDX $50
A5E9   9D 02 01      STA $0102,X
A5EC   BD 65 02      LDA $0265,X
A5EF   85 6C         STA $6C
A5F1   20 88 95      JSR $9588
A5F4   A9 80         LDA #$80
A5F6   20 E4 94      JSR $94E4
A5F9   A6 50         LDX $50
A5FB   68            PLA
A5FC   9D 02 01      STA $0102,X
A5FF   A9 00         LDA #$00
A601   60            RTS
A602   00            BRK
A603   A0 4F         LDY #$4F
A605   CB            ???                ;11001011
A606   02            ???                ;00000010
A607   A0 53         LDY #$53
A609   45 4C         EOR $4C
A60B   45 43         EOR $43
A60D   54            ???                ;01010100 'T'
A60E   45 44         EOR $44
A610   20 50 41      JSR $4150
A613   52            ???                ;01010010 'R'
A614   54            ???                ;01010100 'T'
A615   49 54         EOR #$54
A617   49 4F         EOR #$4F
A619   CE 20 21      DEC $2120
A61C   22            ???                ;00100010 '"'
A61D   23            ???                ;00100011 '#'
A61E   24 27         BIT $27
A620   D2            ???                ;11010010
A621   45 41         EOR $41
A623   44            ???                ;01000100 'D'
A624   89            ???                ;10001001
A625   52            ???                ;01010010 'R'
A626   83            ???                ;10000011
A627   20 54 4F      JSR $4F54
A62A   4F            ???                ;01001111 'O'
A62B   20 4C 41      JSR $414C
A62E   52            ???                ;01010010 'R'
A62F   47            ???                ;01000111 'G'
A630   C5 50         CMP $50
A632   8B            ???                ;10001011
A633   06 20         ASL $20
A635   50 52         BVC $A689
A637   45 53         EOR $53
A639   45 4E         EOR $4E
A63B   D4            ???                ;11010100
A63C   51 CF         EOR ($CF),Y
A63E   56 45         LSR $45,X
A640   52            ???                ;01010010 'R'
A641   46 4C         LSR $4C
A643   4F            ???                ;01001111 'O'
A644   57            ???                ;01010111 'W'
A645   20 49 4E      JSR $4E49
A648   8B            ???                ;10001011
A649   25 28         AND $28
A64B   8A            TXA
A64C   89            ???                ;10001001
A64D   26 8A         ROL $8A
A64F   20 50 52      JSR $5250
A652   4F            ???                ;01001111 'O'
A653   54            ???                ;01010100 'T'
A654   45 43         EOR $43
A656   54            ???                ;01010100 'T'
A657   20 4F CE      JSR $CE4F
A65A   29 88         AND #$88
A65C   20 49 44      JSR $4449
A65F   85 30         STA $30
A661   31 32         AND ($32),Y
A663   33            ???                ;00110011 '3'
A664   34            ???                ;00110100 '4'
A665   D3            ???                ;11010011
A666   59 4E 54      EOR $544E,Y
A669   41 58         EOR ($58,X)
A66B   89            ???                ;10001001
A66C   60            RTS
A66D   8A            TXA
A66E   03            ???                ;00000011
A66F   84 63         STY $63
A671   83            ???                ;10000011
A672   20 45 58      JSR $5845
A675   49 53         EOR #$53
A677   54            ???                ;01010100 'T'
A678   D3            ???                ;11010011
A679   64            ???                ;01100100 'd'
A67A   83            ???                ;10000011
A67B   20 54 59      JSR $5954
A67E   50 45         BVC $A6C5
A680   85 65         STA $65
A682   CE 4F 20      DEC $204F
A685   42            ???                ;01000010 'B'
A686   4C 4F 43      JMP $434F
A689   CB            ???                ;11001011
A68A   66 67         ROR $67
A68C   C9 4C         CMP #$4C
A68E   4C 45 47      JMP $4745
A691   41 4C         EOR ($4C,X)
A693   20 54 52      JSR $5254
A696   41 43         EOR ($43,X)
A698   4B            ???                ;01001011 'K'
A699   20 4F 52      JSR $524F
A69C   20 53 45      JSR $4553
A69F   43            ???                ;01000011 'C'
A6A0   54            ???                ;01010100 'T'
A6A1   4F            ???                ;01001111 'O'
A6A2   D2            ???                ;11010010
A6A3   61 83         ADC ($83,X)
A6A5   06 84         ASL $84
A6A7   39 62 83      AND $8362,Y
A6AA   06 87         ASL $87
A6AC   01 83         ORA ($83,X)
A6AE   53            ???                ;01010011 'S'
A6AF   20 53 43      JSR $4353
A6B2   52            ???                ;01010010 'R'
A6B3   41 54         EOR ($54,X)
A6B5   43            ???                ;01000011 'C'
A6B6   48            PHA
A6B7   45 C4         EOR $C4
A6B9   70 CE         BVS $A689
A6BB   4F            ???                ;01001111 'O'
A6BC   20 43 48      JSR $4843
A6BF   41 4E         EOR ($4E,X)
A6C1   4E 45 CC      LSR $CC45
A6C4   71 C4         ADC ($C4),Y
A6C6   49 52         EOR #$52
A6C8   89            ???                ;10001001
A6C9   72            ???                ;01110010 'r'
A6CA   88            DEY
A6CB   20 46 55      JSR $5546
A6CE   4C CC 73      JMP $73CC
A6D1   C3            ???                ;11000011
A6D2   4F            ???                ;01001111 'O'
A6D3   50 59         BVC $A72E
A6D5   52            ???                ;01010010 'R'
A6D6   49 47         EOR #$47
A6D8   48            PHA
A6D9   54            ???                ;01010100 'T'
A6DA   20 43 42      JSR $4243
A6DD   4D 20 44      EOR $4420
A6E0   4F            ???                ;01001111 'O'
A6E1   53            ???                ;01010011 'S'
A6E2   20 56 31      JSR $3156
A6E5   30 20         BMI $A707
A6E7   31 35         AND ($35),Y
A6E9   38            SEC
A6EA   B1 74         LDA ($74),Y
A6EC   C4 52         CPY $52
A6EE   49 56         EOR #$56
A6F0   45 06         EOR $06
A6F2   20 52 45      JSR $4552
A6F5   41 44         EOR ($44,X)
A6F7   D9 75 C6      CMP $C675,Y
A6FA   4F            ???                ;01001111 'O'
A6FB   52            ???                ;01010010 'R'
A6FC   4D 41 54      EOR $5441
A6FF   20 45 52      JSR $5245
A702   52            ???                ;01010010 'R'
A703   4F            ???                ;01001111 'O'
A704   D2            ???                ;11010010
A705   76 C3         ROR $C3,X
A707   4F            ???                ;01001111 'O'
A708   4E 54 52      LSR $5254
A70B   4F            ???                ;01001111 'O'
A70C   4C 4C 45      JMP $454C
A70F   52            ???                ;01010010 'R'
A710   20 45 52      JSR $5245
A713   52            ???                ;01010010 'R'
A714   4F            ???                ;01001111 'O'
A715   D2            ???                ;11010010
A716   77            ???                ;01110111 'w'
A717   D3            ???                ;11010011
A718   45 4C         EOR $4C
A71A   45 43         EOR $43
A71C   54            ???                ;01010100 'T'
A71D   45 44         EOR $44
A71F   20 50 41      JSR $4150
A722   52            ???                ;01010010 'R'
A723   54            ???                ;01010100 'T'
A724   49 54         EOR #$54
A726   49 4F         EOR #$4F
A728   4E 20 49      LSR $4920
A72B   4C 4C 45      JMP $454C
A72E   47            ???                ;01000111 'G'
A72F   41 CC         EOR ($CC,X)
A731   79 D3 4F      ADC $4FD3,Y
A734   46 54         LSR $54
A736   57            ???                ;01010111 'W'
A737   41 52         EOR ($52,X)
A739   45 20         EOR $20
A73B   44            ???                ;01000100 'D'
A73C   41 56         EOR ($56,X)
A73E   49 44         EOR #$44
A740   20 53 49      JSR $4953
A743   52            ???                ;01010010 'R'
A744   41 43         EOR ($43,X)
A746   55 53         EOR $53,X
A748   41 2E         EOR ($2E,X)
A74A   20 48 41      JSR $4148
A74D   52            ???                ;01010010 'R'
A74E   44            ???                ;01000100 'D'
A74F   57            ???                ;01010111 'W'
A750   41 52         EOR ($52,X)
A752   45 20         EOR $20
A754   47            ???                ;01000111 'G'
A755   52            ???                ;01010010 'R'
A756   45 47         EOR $47
A758   20 42 45      JSR $4542
A75B   52            ???                ;01010010 'R'
A75C   4C 49 CE      JMP $CE49
A75F   7A            ???                ;01111010 'z'
A760   C4 45         CPY $45
A762   44            ???                ;01000100 'D'
A763   49 43         EOR #$43
A765   41 54         EOR ($54,X)
A767   45 44         EOR $44
A769   20 54 4F      JSR $4F54
A76C   20 4D 59      JSR $594D
A76F   20 57 49      JSR $4957
A772   46 45         LSR $45
A774   20 4C 49      JSR $494C
A777   53            ???                ;01010011 'S'
A778   C1 09         CMP ($09,X)
A77A   C5 52         CMP $52
A77C   52            ???                ;01010010 'R'
A77D   4F            ???                ;01001111 'O'
A77E   D2            ???                ;11010010
A77F   0A            ASL A
A780   D7            ???                ;11010111
A781   52            ???                ;01010010 'R'
A782   49 54         EOR #$54
A784   C5 03         CMP $03
A786   C6 49         DEC $49
A788   4C C5 04      JMP $04C5
A78B   CF            ???                ;11001111
A78C   50 45         BVC $A7D3
A78E   CE 05 CD      DEC $CD05
A791   49 53         EOR #$53
A793   4D 41 54      EOR $5441
A796   43            ???                ;01000011 'C'
A797   C8            INY
A798   06 CE         ASL $CE
A79A   4F            ???                ;01001111 'O'
A79B   D4            ???                ;11010100
A79C   07            ???                ;00000111
A79D   C6 4F         DEC $4F
A79F   55 4E         EOR $4E,X
A7A1   C4 08         CPY $08
A7A3   C4 49         CPY $49
A7A5   53            ???                ;01010011 'S'
A7A6   CB            ???                ;11001011
A7A7   0B            ???                ;00001011
A7A8   D2            ???                ;11010010
A7A9   45 43         EOR $43
A7AB   4F            ???                ;01001111 'O'
A7AC   52            ???                ;01010010 'R'
A7AD   C4 48         CPY $48
A7AF   86 6C         STX $6C
A7B1   8A            TXA
A7B2   0A            ASL A
A7B3   AA            TAX
A7B4   B5 0B         LDA $0B,X
A7B6   85 4D         STA $4D
A7B8   B5 0C         LDA $0C,X
A7BA   85 4E         STA $4E
A7BC   68            PLA
A7BD   29 0F         AND #$0F
A7BF   F0 10         BEQ $A7D1
A7C1   C9 03         CMP #$03
A7C3   F0 08         BEQ $A7CD
A7C5   C9 0E         CMP #$0E
A7C7   F0 04         BEQ $A7CD
A7C9   C9 0F         CMP #$0F
A7CB   D0 06         BNE $A7D3
A7CD   A9 74         LDA #$74
A7CF   D0 08         BNE $A7D9
A7D1   A9 06         LDA #$06
A7D3   09 20         ORA #$20
A7D5   AA            TAX
A7D6   CA            DEX
A7D7   CA            DEX
A7D8   8A            TXA
A7D9   48            PHA
A7DA   AD 2A 02      LDA $022A
A7DD   C9 00         CMP #$00
A7DF   D0 0F         BNE $A7F0
A7E1   A9 FF         LDA #$FF
A7E3   8D 2A 02      STA $022A
A7E6   68            PLA
A7E7   20 6D A8      JSR $A86D
A7EA   20 03 8F      JSR $8F03
A7ED   4C F4 A7      JMP $A7F4
A7F0   68            PLA
A7F1   20 6D A8      JSR $A86D
A7F4   20 71 80      JSR $8071
A7F7   A9 00         LDA #$00
A7F9   85 35         STA $35
A7FB   20 F1 81      JSR $81F1
A7FE   20 34 94      JSR $9434
A801   A9 00         LDA #$00
A803   85 CD         STA $CD
A805   A6 4F         LDX $4F
A807   9A            TXS
A808   A5 53         LDA $53
A80A   29 0F         AND #$0F
A80C   85 52         STA $52
A80E   C9 0F         CMP #$0F
A810   F0 29         BEQ $A83B
A812   78            SEI
A813   24 76         BIT $76
A815   70 17         BVS $A82E
A817   30 0F         BMI $A828
A819   A6 52         LDX $52
A81B   B5 A8         LDA $A8,X
A81D   C9 FF         CMP #$FF
A81F   F0 1A         BEQ $A83B
A821   29 0F         AND #$0F
A823   85 50         STA $50
A825   4C 31 A8      JMP $A831
A828   20 27 90      JSR $9027
A82B   4C 31 A8      JMP $A831
A82E   20 42 90      JSR $9042
A831   20 5F 90      JSR $905F
A834   C9 04         CMP #$04
A836   B0 03         BCS $A83B
A838   20 9E 91      JSR $919E
A83B   4C 00 FF      JMP $FF00
A83E   08            PHP
A83F   78            SEI
A840   AA            TAX
A841   A9 00         LDA #$00
A843   F8            SED
A844   E0 00         CPX #$00
A846   F0 07         BEQ $A84F
A848   18            CLC
A849   69 01         ADC #$01
A84B   CA            DEX
A84C   4C 44 A8      JMP $A844
A84F   D8            CLD
A850   28            PLP
A851   AA            TAX
A852   4A            LSR A
A853   4A            LSR A
A854   4A            LSR A
A855   4A            LSR A
A856   20 5A A8      JSR $A85A
A859   8A            TXA
A85A   29 0F         AND #$0F
A85C   09 30         ORA #$30
A85E   91 CF         STA ($CF),Y
A860   C8            INY
A861   60            RTS
A862   20 E5 81      JSR $81E5
A865   A9 00         LDA #$00
A867   A0 00         LDY #$00
A869   84 4D         STY $4D
A86B   84 4E         STY $4E
A86D   A0 00         LDY #$00
A86F   A2 D0         LDX #$D0
A871   86 CF         STX $CF
A873   A2 02         LDX #$02
A875   86 D0         STX $D0
A877   20 51 A8      JSR $A851
A87A   A9 2C         LDA #$2C
A87C   91 CF         STA ($CF),Y
A87E   C8            INY
A87F   AD D0 02      LDA $02D0
A882   8D 41 02      STA $0241
A885   8A            TXA
A886   20 AD A8      JSR $A8AD
A889   A9 2C         LDA #$2C
A88B   91 CF         STA ($CF),Y
A88D   C8            INY
A88E   A5 4D         LDA $4D
A890   20 3E A8      JSR $A83E
A893   A9 2C         LDA #$2C
A895   91 CF         STA ($CF),Y
A897   C8            INY
A898   A5 4E         LDA $4E
A89A   20 3E A8      JSR $A83E
A89D   88            DEY
A89E   98            TYA
A89F   18            CLC
A8A0   69 D0         ADC #$D0
A8A2   8D 48 02      STA $0248
A8A5   E6 CF         INC $CF
A8A7   A9 88         LDA #$88
A8A9   8D 3A 02      STA $023A
A8AC   60            RTS
A8AD   AA            TAX
A8AE   A5 55         LDA $55
A8B0   48            PHA
A8B1   A5 56         LDA $56
A8B3   48            PHA
A8B4   A9 02         LDA #$02
A8B6   85 55         STA $55
A8B8   A9 A6         LDA #$A6
A8BA   85 56         STA $56
A8BC   8A            TXA
A8BD   A2 00         LDX #$00
A8BF   C1 55         CMP ($55,X)
A8C1   F0 21         BEQ $A8E4
A8C3   48            PHA
A8C4   20 1C A9      JSR $A91C
A8C7   90 05         BCC $A8CE
A8C9   20 1C A9      JSR $A91C
A8CC   90 FB         BCC $A8C9
A8CE   A5 56         LDA $56
A8D0   C9 A7         CMP #$A7
A8D2   90 08         BCC $A8DC
A8D4   D0 0A         BNE $A8E0
A8D6   A9 AE         LDA #$AE
A8D8   C5 55         CMP $55
A8DA   90 04         BCC $A8E0
A8DC   68            PLA
A8DD   4C BF A8      JMP $A8BF
A8E0   68            PLA
A8E1   4C F4 A8      JMP $A8F4
A8E4   20 0E A9      JSR $A90E
A8E7   90 FB         BCC $A8E4
A8E9   20 FB A8      JSR $A8FB
A8EC   20 0E A9      JSR $A90E
A8EF   90 F8         BCC $A8E9
A8F1   20 FB A8      JSR $A8FB
A8F4   68            PLA
A8F5   85 56         STA $56
A8F7   68            PLA
A8F8   85 55         STA $55
A8FA   60            RTS
A8FB   C9 20         CMP #$20
A8FD   B0 0B         BCS $A90A
A8FF   AA            TAX
A900   A9 20         LDA #$20
A902   91 CF         STA ($CF),Y
A904   C8            INY
A905   8A            TXA
A906   20 AD A8      JSR $A8AD
A909   60            RTS
A90A   91 CF         STA ($CF),Y
A90C   C8            INY
A90D   60            RTS
A90E   E6 55         INC $55
A910   D0 02         BNE $A914
A912   E6 56         INC $56
A914   A1 55         LDA ($55,X)
A916   0A            ASL A
A917   A1 55         LDA ($55,X)
A919   29 7F         AND #$7F
A91B   60            RTS
A91C   20 14 A9      JSR $A914
A91F   E6 55         INC $55
A921   D0 02         BNE $A925
A923   E6 56         INC $56
A925   60            RTS
A926   26 43         ROL $43
A928   4F            ???                ;01001111 'O'
A929   50 59         BVC $A984
A92B   52            ???                ;01010010 'R'
A92C   49 47         EOR #$47
A92E   48            PHA
A92F   54            ???                ;01010100 'T'
A930   20 43 42      JSR $4243
A933   4D 20 38      EOR $3820
A936   36 0D         ROL $0D,X
A938   20 0F AA      JSR $AA0F
A93B   08            PHP
A93C   58            CLI
A93D   A0 11         LDY #$11
A93F   84 29         STY $29
A941   B9 26 A9      LDA $A926,Y
A944   99 00 02      STA $0200,Y
A947   88            DEY
A948   10 F7         BPL $A941
A94A   30 0A         BMI $A956
A94C   A6 4F         LDX $4F
A94E   9A            TXS
A94F   20 95 BA      JSR $BA95
A952   78            SEI
A953   4C DE AF      JMP $AFDE
A956   20 AE 84      JSR $84AE
A959   A5 91         LDA $91
A95B   C9 02         CMP #$02
A95D   D0 1D         BNE $A97C
A95F   A9 01         LDA #$01
A961   8D 91 02      STA $0291
A964   20 FD 81      JSR $81FD
A967   AD 2F 02      LDA $022F
A96A   48            PHA
A96B   A9 01         LDA #$01
A96D   8D 2F 02      STA $022F
A970   A9 FF         LDA #$FF
A972   85 55         STA $55
A974   20 B9 82      JSR $82B9
A977   AD 97 02      LDA $0297
A97A   D0 05         BNE $A981
A97C   A9 39         LDA #$39
A97E   20 7C 80      JSR $807C
A981   68            PLA
A982   8D 2F 02      STA $022F
A985   AD 97 02      LDA $0297
A988   85 4D         STA $4D
A98A   AD 9C 02      LDA $029C
A98D   85 4E         STA $4E
A98F   A9 03         LDA #$03
A991   20 D1 93      JSR $93D1
A994   A9 00         LDA #$00
A996   85 56         STA $56
A998   20 F5 A9      JSR $A9F5
A99B   85 57         STA $57
A99D   20 07 AA      JSR $AA07
A9A0   20 F5 A9      JSR $A9F5
A9A3   85 58         STA $58
A9A5   20 07 AA      JSR $AA07
A9A8   A5 55         LDA $55
A9AA   F0 0A         BEQ $A9B6
A9AC   A5 57         LDA $57
A9AE   48            PHA
A9AF   A5 58         LDA $58
A9B1   48            PHA
A9B2   A9 00         LDA #$00
A9B4   85 55         STA $55
A9B6   20 F5 A9      JSR $A9F5
A9B9   85 59         STA $59
A9BB   20 07 AA      JSR $AA07
A9BE   20 F5 A9      JSR $A9F5
A9C1   A0 00         LDY #$00
A9C3   91 57         STA ($57),Y
A9C5   20 07 AA      JSR $AA07
A9C8   A5 57         LDA $57
A9CA   18            CLC
A9CB   69 01         ADC #$01
A9CD   85 57         STA $57
A9CF   90 02         BCC $A9D3
A9D1   E6 58         INC $58
A9D3   C6 59         DEC $59
A9D5   D0 E7         BNE $A9BE
A9D7   20 76 88      JSR $8876
A9DA   A5 54         LDA $54
A9DC   C5 56         CMP $56
A9DE   F0 08         BEQ $A9E8
A9E0   20 7C 9D      JSR $9D7C
A9E3   A9 50         LDA #$50
A9E5   20 3F FF      JSR $FF3F
A9E8   A5 51         LDA $51
A9EA   D0 A8         BNE $A994
A9EC   68            PLA
A9ED   85 58         STA $58
A9EF   68            PLA
A9F0   85 57         STA $57
A9F2   6C 57 00      JMP ($0057)
A9F5   20 76 88      JSR $8876
A9F8   A5 51         LDA $51
A9FA   D0 08         BNE $AA04
A9FC   20 7C 9D      JSR $9D7C
A9FF   A9 51         LDA #$51
AA01   20 3F FF      JSR $FF3F
AA04   A5 54         LDA $54
AA06   60            RTS
AA07   18            CLC
AA08   65 56         ADC $56
AA0A   69 00         ADC #$00
AA0C   85 56         STA $56
AA0E   60            RTS
AA0F   20 7C BA      JSR $BA7C
AA12   A9 4C         LDA #$4C
AA14   8D BA 01      STA $01BA
AA17   A9 A9         LDA #$A9
AA19   8D BB 01      STA $01BB
AA1C   A9 4C         LDA #$4C
AA1E   8D AE 01      STA $01AE
AA21   A9 A9         LDA #$A9
AA23   8D AF 01      STA $01AF
AA26   60            RTS
AA27   AD 04 02      LDA $0204
AA2A   85 2E         STA $2E
AA2C   60            RTS
AA2D   AD 04 02      LDA $0204
AA30   85 30         STA $30
AA32   60            RTS
AA33   AD 04 02      LDA $0204
AA36   85 9D         STA $9D
AA38   60            RTS
AA39   4C 1D AB      JMP $AB1D
AA3C   78            SEI
AA3D   A6 29         LDX $29
AA3F   E0 04         CPX #$04
AA41   90 40         BCC $AA83
AA43   AD 03 02      LDA $0203
AA46   C9 49         CMP #$49
AA48   F0 E9         BEQ $AA33
AA4A   AD 03 02      LDA $0203
AA4D   C9 42         CMP #$42
AA4F   F0 37         BEQ $AA88
AA51   C9 53         CMP #$53
AA53   F0 D2         BEQ $AA27
AA55   C9 52         CMP #$52
AA57   F0 D4         BEQ $AA2D
AA59   C9 54         CMP #$54
AA5B   F0 DC         BEQ $AA39
AA5D   C9 4D         CMP #$4D
AA5F   F0 47         BEQ $AAA8
AA61   C9 56         CMP #$56
AA63   F0 35         BEQ $AA9A
AA65   A8            TAY
AA66   C0 04         CPY #$04
AA68   90 19         BCC $AA83
AA6A   C0 1F         CPY #$1F
AA6C   B0 15         BCS $AA83
AA6E   A9 40         LDA #$40
AA70   85 78         STA $78
AA72   A9 20         LDA #$20
AA74   85 77         STA $77
AA76   98            TYA
AA77   18            CLC
AA78   65 78         ADC $78
AA7A   85 78         STA $78
AA7C   98            TYA
AA7D   18            CLC
AA7E   65 77         ADC $77
AA80   85 77         STA $77
AA82   60            RTS
AA83   A9 31         LDA #$31
AA85   4C 7C 80      JMP $807C
AA88   A5 76         LDA $76
AA8A   29 F7         AND #$F7
AA8C   85 76         STA $76
AA8E   20 09 AB      JSR $AB09
AA91   4A            LSR A
AA92   4A            LSR A
AA93   4A            LSR A
AA94   4A            LSR A
AA95   05 76         ORA $76
AA97   85 76         STA $76
AA99   60            RTS
AA9A   A5 8D         LDA $8D
AA9C   29 7F         AND #$7F
AA9E   85 8D         STA $8D
AAA0   20 09 AB      JSR $AB09
AAA3   05 8D         ORA $8D
AAA5   85 8D         STA $8D
AAA7   60            RTS
AAA8   78            SEI
AAA9   A5 76         LDA $76
AAAB   29 FB         AND #$FB
AAAD   85 76         STA $76
AAAF   A0 00         LDY #$00
AAB1   84 46         STY $46
AAB3   AD 05 02      LDA $0205
AAB6   85 47         STA $47
AAB8   AD 04 02      LDA $0204
AABB   C9 57         CMP #$57
AABD   F0 18         BEQ $AAD7
AABF   C9 52         CMP #$52
AAC1   D0 3D         BNE $AB00
AAC3   20 D4 AC      JSR $ACD4
AAC6   B1 46         LDA ($46),Y
AAC8   20 86 BF      JSR $BF86
AACB   C8            INY
AACC   D0 F8         BNE $AAC6
AACE   E6 47         INC $47
AAD0   CE 06 02      DEC $0206
AAD3   D0 F1         BNE $AAC6
AAD5   F0 26         BEQ $AAFD
AAD7   AD 01 40      LDA $4001
AADA   49 08         EOR #$08
AADC   2C 0D 40      BIT $400D
AADF   8D 01 40      STA $4001
AAE2   A9 08         LDA #$08
AAE4   2C 01 40      BIT $4001
AAE7   30 1A         BMI $AB03
AAE9   2C 0D 40      BIT $400D
AAEC   F0 F6         BEQ $AAE4
AAEE   AD 0C 40      LDA $400C
AAF1   91 46         STA ($46),Y
AAF3   C8            INY
AAF4   D0 E1         BNE $AAD7
AAF6   E6 47         INC $47
AAF8   CE 06 02      DEC $0206
AAFB   D0 DA         BNE $AAD7
AAFD   4C 4C 80      JMP $804C
AB00   4C 83 AA      JMP $AA83
AB03   20 15 AD      JSR $AD15
AB06   4C E4 AA      JMP $AAE4
AB09   AD 04 02      LDA $0204
AB0C   C9 31         CMP #$31
AB0E   F0 07         BEQ $AB17
AB10   C9 30         CMP #$30
AB12   F0 03         BEQ $AB17
AB14   4C 83 AA      JMP $AA83
AB17   29 01         AND #$01
AB19   18            CLC
AB1A   6A            ROR A
AB1B   6A            ROR A
AB1C   60            RTS
AB1D   08            PHP
AB1E   78            SEI
AB1F   A5 02         LDA $02
AB21   48            PHA
AB22   A5 03         LDA $03
AB24   48            PHA
AB25   A5 04         LDA $04
AB27   48            PHA
AB28   A5 05         LDA $05
AB2A   48            PHA
AB2B   A5 06         LDA $06
AB2D   48            PHA
AB2E   A5 07         LDA $07
AB30   48            PHA
AB31   A5 08         LDA $08
AB33   48            PHA
AB34   A5 09         LDA $09
AB36   48            PHA
AB37   A5 0A         LDA $0A
AB39   48            PHA
AB3A   A9 FF         LDA #$FF
AB3C   85 07         STA $07
AB3E   85 08         STA $08
AB40   A9 00         LDA #$00
AB42   85 09         STA $09
AB44   A9 80         LDA #$80
AB46   85 0A         STA $0A
AB48   A0 02         LDY #$02
AB4A   B1 09         LDA ($09),Y
AB4C   85 03         STA $03
AB4E   AA            TAX
AB4F   C8            INY
AB50   B1 09         LDA ($09),Y
AB52   85 02         STA $02
AB54   8A            TXA
AB55   A2 10         LDX #$10
AB57   85 04         STA $04
AB59   18            CLC
AB5A   26 02         ROL $02
AB5C   26 03         ROL $03
AB5E   A9 00         LDA #$00
AB60   85 05         STA $05
AB62   85 06         STA $06
AB64   24 04         BIT $04
AB66   10 08         BPL $AB70
AB68   A9 21         LDA #$21
AB6A   85 05         STA $05
AB6C   A9 10         LDA #$10
AB6E   85 06         STA $06
AB70   24 08         BIT $08
AB72   10 0C         BPL $AB80
AB74   A5 05         LDA $05
AB76   49 21         EOR #$21
AB78   85 05         STA $05
AB7A   A5 06         LDA $06
AB7C   49 10         EOR #$10
AB7E   85 06         STA $06
AB80   18            CLC
AB81   26 07         ROL $07
AB83   26 08         ROL $08
AB85   A5 07         LDA $07
AB87   45 05         EOR $05
AB89   85 07         STA $07
AB8B   A5 08         LDA $08
AB8D   45 06         EOR $06
AB8F   85 08         STA $08
AB91   A5 03         LDA $03
AB93   CA            DEX
AB94   D0 C1         BNE $AB57
AB96   C8            INY
AB97   D0 B1         BNE $AB4A
AB99   E6 0A         INC $0A
AB9B   D0 AD         BNE $AB4A
AB9D   A4 07         LDY $07
AB9F   A6 08         LDX $08
ABA1   68            PLA
ABA2   85 0A         STA $0A
ABA4   68            PLA
ABA5   85 09         STA $09
ABA7   68            PLA
ABA8   85 08         STA $08
ABAA   68            PLA
ABAB   85 07         STA $07
ABAD   68            PLA
ABAE   85 06         STA $06
ABB0   68            PLA
ABB1   85 05         STA $05
ABB3   68            PLA
ABB4   85 04         STA $04
ABB6   68            PLA
ABB7   85 03         STA $03
ABB9   68            PLA
ABBA   85 02         STA $02
ABBC   CC 00 80      CPY $8000
ABBF   D0 07         BNE $ABC8
ABC1   EC 01 80      CPX $8001
ABC4   D0 02         BNE $ABC8
ABC6   28            PLP
ABC7   60            RTS
ABC8   A2 03         LDX #$03
ABCA   86 40         STX $40
ABCC   4C F5 AE      JMP $AEF5
ABCF   78            SEI
ABD0   A5 9D         LDA $9D
ABD2   85 9C         STA $9C
ABD4   A5 76         LDA $76
ABD6   29 3E         AND #$3E
ABD8   85 76         STA $76
ABDA   A6 4F         LDX $4F
ABDC   9A            TXS
ABDD   20 BB AC      JSR $ACBB
ABE0   A9 80         LDA #$80
ABE2   85 51         STA $51
ABE4   A5 76         LDA $76
ABE6   09 02         ORA #$02
ABE8   85 76         STA $76
ABEA   20 03 AD      JSR $AD03
ABED   20 F1 AC      JSR $ACF1
ABF0   AD 01 40      LDA $4001
ABF3   29 EF         AND #$EF
ABF5   8D 01 40      STA $4001
ABF8   AD 01 40      LDA $4001
ABFB   10 5D         BPL $AC5A
ABFD   29 04         AND #$04
ABFF   D0 F7         BNE $ABF8
AC01   20 42 AE      JSR $AE42
AC04   C9 3F         CMP #$3F
AC06   D0 09         BNE $AC11
AC08   A5 76         LDA $76
AC0A   29 9F         AND #$9F
AC0C   85 76         STA $76
AC0E   4C 1B AC      JMP $AC1B
AC11   C9 5F         CMP #$5F
AC13   D0 09         BNE $AC1E
AC15   A5 76         LDA $76
AC17   29 5F         AND #$5F
AC19   85 76         STA $76
AC1B   4C 96 AC      JMP $AC96
AC1E   C5 78         CMP $78
AC20   D0 0A         BNE $AC2C
AC22   A5 76         LDA $76
AC24   09 80         ORA #$80
AC26   29 BF         AND #$BF
AC28   85 76         STA $76
AC2A   D0 29         BNE $AC55
AC2C   C5 77         CMP $77
AC2E   D0 0A         BNE $AC3A
AC30   A5 76         LDA $76
AC32   09 40         ORA #$40
AC34   29 7F         AND #$7F
AC36   85 76         STA $76
AC38   D0 1B         BNE $AC55
AC3A   AA            TAX
AC3B   29 60         AND #$60
AC3D   C9 60         CMP #$60
AC3F   D0 50         BNE $AC91
AC41   8A            TXA
AC42   85 53         STA $53
AC44   29 0F         AND #$0F
AC46   85 52         STA $52
AC48   A5 53         LDA $53
AC4A   29 F0         AND #$F0
AC4C   C9 E0         CMP #$E0
AC4E   D0 46         BNE $AC96
AC50   58            CLI
AC51   20 5C 99      JSR $995C
AC54   78            SEI
AC55   2C 01 40      BIT $4001
AC58   30 A7         BMI $AC01
AC5A   A5 76         LDA $76
AC5C   29 FD         AND #$FD
AC5E   85 76         STA $76
AC60   AD 01 40      LDA $4001
AC63   09 10         ORA #$10
AC65   8D 01 40      STA $4001
AC68   24 76         BIT $76
AC6A   50 0F         BVC $AC7B
AC6C   A9 20         LDA #$20
AC6E   24 76         BIT $76
AC70   F0 03         BEQ $AC75
AC72   20 9D AC      JSR $AC9D
AC75   20 36 FF      JSR $FF36
AC78   4C E4 AE      JMP $AEE4
AC7B   24 76         BIT $76
AC7D   10 0F         BPL $AC8E
AC7F   20 E8 AC      JSR $ACE8
AC82   20 FA AC      JSR $ACFA
AC85   20 2F AD      JSR $AD2F
AC88   20 33 FF      JSR $FF33
AC8B   20 2F AD      JSR $AD2F
AC8E   4C DF AE      JMP $AEDF
AC91   A9 00         LDA #$00
AC93   8D 01 40      STA $4001
AC96   2C 01 40      BIT $4001
AC99   10 BF         BPL $AC5A
AC9B   30 F9         BMI $AC96
AC9D   20 15 AD      JSR $AD15
ACA0   20 0C AD      JSR $AD0C
ACA3   29 04         AND #$04
ACA5   D0 F6         BNE $AC9D
ACA7   20 D4 AC      JSR $ACD4
ACAA   A9 00         LDA #$00
ACAC   8D 0C 40      STA $400C
ACAF   A9 08         LDA #$08
ACB1   2C 0D 40      BIT $400D
ACB4   F0 FB         BEQ $ACB1
ACB6   EA            NOP
ACB7   EA            NOP
ACB8   EA            NOP
ACB9   EA            NOP
ACBA   EA            NOP
ACBB   08            PHP
ACBC   78            SEI
ACBD   AD 0E 40      LDA $400E
ACC0   29 BF         AND #$BF
ACC2   20 C7 DB      JSR $DBC7
ACC5   AD 01 40      LDA $4001
ACC8   29 DF         AND #$DF
ACCA   8D 01 40      STA $4001
ACCD   28            PLP
ACCE   60            RTS
ACCF   EA            NOP
ACD0   EA            NOP
ACD1   EA            NOP
ACD2   EA            NOP
ACD3   EA            NOP
ACD4   08            PHP
ACD5   78            SEI
ACD6   AD 01 40      LDA $4001
ACD9   09 20         ORA #$20
ACDB   8D 01 40      STA $4001
ACDE   AD 0E 40      LDA $400E
ACE1   09 40         ORA #$40
ACE3   20 E0 DB      JSR $DBE0
ACE6   28            PLP
ACE7   60            RTS
ACE8   AD 01 40      LDA $4001
ACEB   29 FD         AND #$FD
ACED   8D 01 40      STA $4001
ACF0   60            RTS
ACF1   AD 01 40      LDA $4001
ACF4   09 02         ORA #$02
ACF6   8D 01 40      STA $4001
ACF9   60            RTS
ACFA   AD 01 40      LDA $4001
ACFD   09 08         ORA #$08
ACFF   8D 01 40      STA $4001
AD02   60            RTS
AD03   AD 01 40      LDA $4001
AD06   29 F7         AND #$F7
AD08   8D 01 40      STA $4001
AD0B   60            RTS
AD0C   AD 01 40      LDA $4001
AD0F   CD 01 40      CMP $4001
AD12   D0 F8         BNE $AD0C
AD14   60            RTS
AD15   A9 02         LDA #$02
AD17   24 76         BIT $76
AD19   F0 06         BEQ $AD21
AD1B   AD 01 40      LDA $4001
AD1E   10 0C         BPL $AD2C
AD20   60            RTS
AD21   AD 01 40      LDA $4001
AD24   10 FA         BPL $AD20
AD26   2C 0D 40      BIT $400D
AD29   4C 30 FF      JMP $FF30
AD2C   4C 5A AC      JMP $AC5A
AD2F   8A            TXA
AD30   A2 0C         LDX #$0C
AD32   D0 03         BNE $AD37
AD34   8A            TXA
AD35   A2 03         LDX #$03
AD37   CA            DEX
AD38   D0 FD         BNE $AD37
AD3A   AA            TAX
AD3B   60            RTS
AD3C   AD 02 02      LDA $0202
AD3F   C9 2D         CMP #$2D
AD41   F0 05         BEQ $AD48
AD43   38            SEC
AD44   E9 2B         SBC #$2B
AD46   D0 11         BNE $AD59
AD48   29 02         AND #$02
AD4A   0A            ASL A
AD4B   0A            ASL A
AD4C   0A            ASL A
AD4D   85 38         STA $38
AD4F   78            SEI
AD50   A5 76         LDA $76
AD52   29 EF         AND #$EF
AD54   05 38         ORA $38
AD56   85 76         STA $76
AD58   60            RTS
AD59   4C 06 FF      JMP $FF06
AD5C   78            SEI
AD5D   20 27 90      JSR $9027
AD60   B0 07         BCS $AD69
AD62   A6 50         LDX $50
AD64   BD 34 02      LDA $0234,X
AD67   30 01         BMI $AD6A
AD69   60            RTS
AD6A   20 15 AD      JSR $AD15
AD6D   20 0C AD      JSR $AD0C
AD70   29 01         AND #$01
AD72   08            PHP
AD73   20 03 AD      JSR $AD03
AD76   28            PLP
AD77   F0 13         BEQ $AD8C
AD79   20 15 AD      JSR $AD15
AD7C   20 0C AD      JSR $AD0C
AD7F   29 01         AND #$01
AD81   D0 F6         BNE $AD79
AD83   A6 50         LDX $50
AD85   BD 34 02      LDA $0234,X
AD88   29 08         AND #$08
AD8A   D0 14         BNE $ADA0
AD8C   20 15 AD      JSR $AD15
AD8F   20 0C AD      JSR $AD0C
AD92   29 01         AND #$01
AD94   D0 F6         BNE $AD8C
AD96   20 15 AD      JSR $AD15
AD99   20 0C AD      JSR $AD0C
AD9C   29 01         AND #$01
AD9E   F0 F6         BEQ $AD96
ADA0   20 FA AC      JSR $ACFA
ADA3   20 15 AD      JSR $AD15
ADA6   20 0C AD      JSR $AD0C
ADA9   29 01         AND #$01
ADAB   D0 F3         BNE $ADA0
ADAD   A9 20         LDA #$20
ADAF   24 76         BIT $76
ADB1   F0 34         BEQ $ADE7
ADB3   AD 01 40      LDA $4001
ADB6   09 20         ORA #$20
ADB8   8D 01 40      STA $4001
ADBB   AD 0E 40      LDA $400E
ADBE   09 40         ORA #$40
ADC0   8D 0E 40      STA $400E
ADC3   2C 0D 40      BIT $400D
ADC6   A6 50         LDX $50
ADC8   BD 3B 02      LDA $023B,X
ADCB   8D 0C 40      STA $400C
ADCE   A9 08         LDA #$08
ADD0   2C 0D 40      BIT $400D
ADD3   F0 FB         BEQ $ADD0
ADD5   AD 0E 40      LDA $400E
ADD8   29 BF         AND #$BF
ADDA   8D 0E 40      STA $400E
ADDD   AD 01 40      LDA $4001
ADE0   29 DF         AND #$DF
ADE2   8D 01 40      STA $4001
ADE5   D0 43         BNE $AE2A
ADE7   A9 08         LDA #$08
ADE9   85 66         STA $66
ADEB   20 0C AD      JSR $AD0C
ADEE   29 01         AND #$01
ADF0   D0 4D         BNE $AE3F
ADF2   A6 50         LDX $50
ADF4   BD 3B 02      LDA $023B,X
ADF7   6A            ROR A
ADF8   9D 3B 02      STA $023B,X
ADFB   B0 05         BCS $AE02
ADFD   20 F1 AC      JSR $ACF1
AE00   D0 03         BNE $AE05
AE02   20 E8 AC      JSR $ACE8
AE05   20 34 AD      JSR $AD34
AE08   A9 10         LDA #$10
AE0A   24 76         BIT $76
AE0C   D0 03         BNE $AE11
AE0E   20 2F AD      JSR $AD2F
AE11   20 03 AD      JSR $AD03
AE14   20 34 AD      JSR $AD34
AE17   A9 10         LDA #$10
AE19   24 76         BIT $76
AE1B   D0 03         BNE $AE20
AE1D   20 2F AD      JSR $AD2F
AE20   20 FA AC      JSR $ACFA
AE23   20 E8 AC      JSR $ACE8
AE26   C6 66         DEC $66
AE28   D0 C1         BNE $ADEB
AE2A   20 15 AD      JSR $AD15
AE2D   20 0C AD      JSR $AD0C
AE30   29 01         AND #$01
AE32   F0 F6         BEQ $AE2A
AE34   58            CLI
AE35   20 03 93      JSR $9303
AE38   78            SEI
AE39   20 15 AD      JSR $AD15
AE3C   4C 62 AD      JMP $AD62
AE3F   4C D9 AE      JMP $AED9
AE42   2C 0D 40      BIT $400D
AE45   A9 08         LDA #$08
AE47   85 66         STA $66
AE49   20 15 AD      JSR $AD15
AE4C   20 0C AD      JSR $AD0C
AE4F   29 04         AND #$04
AE51   D0 F6         BNE $AE49
AE53   20 E8 AC      JSR $ACE8
AE56   A9 01         LDA #$01
AE58   2C 01 40      BIT $4001
AE5B   D0 FB         BNE $AE58
AE5D   A2 0A         LDX #$0A
AE5F   20 15 AD      JSR $AD15
AE62   CA            DEX
AE63   F0 09         BEQ $AE6E
AE65   20 0C AD      JSR $AD0C
AE68   29 04         AND #$04
AE6A   F0 F3         BEQ $AE5F
AE6C   D0 19         BNE $AE87
AE6E   20 F1 AC      JSR $ACF1
AE71   A2 18         LDX #$18
AE73   CA            DEX
AE74   D0 FD         BNE $AE73
AE76   20 E8 AC      JSR $ACE8
AE79   20 15 AD      JSR $AD15
AE7C   20 0C AD      JSR $AD0C
AE7F   29 04         AND #$04
AE81   F0 F6         BEQ $AE79
AE83   A9 00         LDA #$00
AE85   85 51         STA $51
AE87   AD 01 40      LDA $4001
AE8A   49 01         EOR #$01
AE8C   AA            TAX
AE8D   AD 0D 40      LDA $400D
AE90   29 08         AND #$08
AE92   F0 08         BEQ $AE9C
AE94   AD 0C 40      LDA $400C
AE97   85 54         STA $54
AE99   4C B2 AE      JMP $AEB2
AE9C   8A            TXA
AE9D   4A            LSR A
AE9E   29 02         AND #$02
AEA0   D0 E5         BNE $AE87
AEA2   66 54         ROR $54
AEA4   20 15 AD      JSR $AD15
AEA7   20 0C AD      JSR $AD0C
AEAA   29 04         AND #$04
AEAC   F0 F6         BEQ $AEA4
AEAE   C6 66         DEC $66
AEB0   D0 D5         BNE $AE87
AEB2   20 F1 AC      JSR $ACF1
AEB5   A5 54         LDA $54
AEB7   60            RTS
AEB8   78            SEI
AEB9   20 42 90      JSR $9042
AEBC   B0 06         BCS $AEC4
AEBE   BD 34 02      LDA $0234,X
AEC1   6A            ROR A
AEC2   B0 0B         BCS $AECF
AEC4   A5 53         LDA $53
AEC6   29 F0         AND #$F0
AEC8   C9 F0         CMP #$F0
AECA   F0 03         BEQ $AECF
AECC   4C DF AE      JMP $AEDF
AECF   20 42 AE      JSR $AE42
AED2   58            CLI
AED3   20 78 8E      JSR $8E78
AED6   4C B8 AE      JMP $AEB8
AED9   A5 76         LDA $76
AEDB   29 DF         AND #$DF
AEDD   85 76         STA $76
AEDF   A9 10         LDA #$10
AEE1   8D 01 40      STA $4001
AEE4   20 BB AC      JSR $ACBB
AEE7   4C 00 FF      JMP $FF00
AEEA   B0 03         BCS $AEEF
AEEC   4C BB AC      JMP $ACBB
AEEF   4C D4 AC      JMP $ACD4
AEF2   A2 00         LDX #$00
AEF4   2C A6 40      BIT $40A6
AEF7   9A            TXS
AEF8   BA            TSX
AEF9   A9 60         LDA #$60
AEFB   0D 00 40      ORA $4000
AEFE   8D 00 40      STA $4000
AF01   98            TYA
AF02   18            CLC
AF03   69 01         ADC #$01
AF05   D0 FC         BNE $AF03
AF07   88            DEY
AF08   D0 F8         BNE $AF02
AF0A   AD 00 40      LDA $4000
AF0D   29 9F         AND #$9F
AF0F   8D 00 40      STA $4000
AF12   98            TYA
AF13   18            CLC
AF14   69 01         ADC #$01
AF16   D0 FC         BNE $AF14
AF18   88            DEY
AF19   D0 F8         BNE $AF13
AF1B   CA            DEX
AF1C   10 DB         BPL $AEF9
AF1E   E0 F9         CPX #$F9
AF20   D0 F0         BNE $AF12
AF22   F0 D4         BEQ $AEF8
AF24   78            SEI
AF25   D8            CLD
AF26   A9 FE         LDA #$FE
AF28   8D 00 40      STA $4000
AF2B   A9 65         LDA #$65
AF2D   8D 02 40      STA $4002
AF30   A9 D5         LDA #$D5
AF32   8D 01 40      STA $4001
AF35   A9 3A         LDA #$3A
AF37   8D 03 40      STA $4003
AF3A   A9 00         LDA #$00
AF3C   8D 05 40      STA $4005
AF3F   A9 06         LDA #$06
AF41   8D 04 40      STA $4004
AF44   A9 01         LDA #$01
AF46   8D 0E 40      STA $400E
AF49   A9 9A         LDA #$9A
AF4B   8D 0D 40      STA $400D
AF4E   A0 00         LDY #$00
AF50   A2 00         LDX #$00
AF52   8A            TXA
AF53   95 00         STA $00,X
AF55   E8            INX
AF56   D0 FA         BNE $AF52
AF58   8A            TXA
AF59   D5 00         CMP $00,X
AF5B   D0 95         BNE $AEF2
AF5D   F6 00         INC $00,X
AF5F   C8            INY
AF60   D0 FB         BNE $AF5D
AF62   D5 00         CMP $00,X
AF64   D0 8C         BNE $AEF2
AF66   94 00         STY $00,X
AF68   B5 00         LDA $00,X
AF6A   D0 86         BNE $AEF2
AF6C   E8            INX
AF6D   D0 E9         BNE $AF58
AF6F   E6 40         INC $40
AF71   A2 7F         LDX #$7F
AF73   86 47         STX $47
AF75   E8            INX
AF76   A9 00         LDA #$00
AF78   85 46         STA $46
AF7A   A0 02         LDY #$02
AF7C   18            CLC
AF7D   E6 47         INC $47
AF7F   71 46         ADC ($46),Y
AF81   C8            INY
AF82   D0 FB         BNE $AF7F
AF84   CA            DEX
AF85   D0 F6         BNE $AF7D
AF87   69 FF         ADC #$FF
AF89   85 47         STA $47
AF8B   D0 00         BNE $AF8D
AF8D   A9 01         LDA #$01
AF8F   85 47         STA $47
AF91   E6 40         INC $40
AF93   A2 1F         LDX #$1F
AF95   98            TYA
AF96   18            CLC
AF97   65 47         ADC $47
AF99   91 46         STA ($46),Y
AF9B   C8            INY
AF9C   D0 F7         BNE $AF95
AF9E   E6 47         INC $47
AFA0   CA            DEX
AFA1   D0 F2         BNE $AF95
AFA3   A2 1F         LDX #$1F
AFA5   C6 47         DEC $47
AFA7   88            DEY
AFA8   98            TYA
AFA9   18            CLC
AFAA   65 47         ADC $47
AFAC   D1 46         CMP ($46),Y
AFAE   D0 17         BNE $AFC7
AFB0   49 FF         EOR #$FF
AFB2   91 46         STA ($46),Y
AFB4   51 46         EOR ($46),Y
AFB6   91 46         STA ($46),Y
AFB8   D0 0D         BNE $AFC7
AFBA   98            TYA
AFBB   D0 EA         BNE $AFA7
AFBD   CA            DEX
AFBE   D0 E5         BNE $AFA5
AFC0   A9 80         LDA #$80
AFC2   8D FB 01      STA $01FB
AFC5   D0 03         BNE $AFCA
AFC7   4C F5 AE      JMP $AEF5
AFCA   78            SEI
AFCB   A2 8F         LDX #$8F
AFCD   86 4F         STX $4F
AFCF   9A            TXS
AFD0   20 AD FF      JSR $FFAD
AFD3   20 E9 AF      JSR $AFE9
AFD6   2C FB 01      BIT $01FB
AFD9   10 03         BPL $AFDE
AFDB   4C 38 A9      JMP $A938
AFDE   A9 73         LDA #$73
AFE0   20 67 A8      JSR $A867
AFE3   20 15 AD      JSR $AD15
AFE6   4C 00 FF      JMP $FF00
AFE9   AD 00 40      LDA $4000
AFEC   29 18         AND #$18
AFEE   4A            LSR A
AFEF   4A            LSR A
AFF0   4A            LSR A
AFF1   09 48         ORA #$48
AFF3   85 78         STA $78
AFF5   49 60         EOR #$60
AFF7   85 77         STA $77
AFF9   A2 08         LDX #$08
AFFB   A9 0B         LDA #$0B
AFFD   9D F1 01      STA $01F1,X
B000   38            SEC
B001   E9 01         SBC #$01
B003   CA            DEX
B004   10 F7         BPL $AFFD
B006   A2 00         LDX #$00
B008   A0 00         LDY #$00
B00A   A9 00         LDA #$00
B00C   95 BB         STA $BB,X
B00E   E8            INX
B00F   B9 F1 01      LDA $01F1,Y
B012   95 BB         STA $BB,X
B014   E8            INX
B015   C8            INY
B016   C0 09         CPY #$09
B018   D0 F0         BNE $B00A
B01A   A9 00         LDA #$00
B01C   95 BB         STA $BB,X
B01E   A9 02         LDA #$02
B020   95 BC         STA $BC,X
B022   A9 D0         LDA #$D0
B024   95 BD         STA $BD,X
B026   A9 02         LDA #$02
B028   95 BE         STA $BE,X
B02A   A9 FF         LDA #$FF
B02C   A2 12         LDX #$12
B02E   95 A8         STA $A8,X
B030   CA            DEX
B031   10 FB         BPL $B02E
B033   A2 06         LDX #$06
B035   95 D1         STA $D1,X
B037   95 D8         STA $D8,X
B039   9D 65 02      STA $0265,X
B03C   CA            DEX
B03D   10 F6         BPL $B035
B03F   A9 09         LDA #$09
B041   85 D6         STA $D6
B043   A9 0A         LDA #$0A
B045   85 D7         STA $D7
B047   A9 06         LDA #$06
B049   85 B8         STA $B8
B04B   A9 85         LDA #$85
B04D   85 B7         STA $B7
B04F   A9 1F         LDA #$1F
B051   85 70         STA $70
B053   A9 01         LDA #$01
B055   8D 39 02      STA $0239
B058   A9 88         LDA #$88
B05A   8D 3A 02      STA $023A
B05D   A9 80         LDA #$80
B05F   85 6D         STA $6D
B061   A9 01         LDA #$01
B063   85 25         STA $25
B065   20 C3 89      JSR $89C3
B068   20 59 8D      JSR $8D59
B06B   A9 01         LDA #$01
B06D   85 2E         STA $2E
B06F   A9 02         LDA #$02
B071   85 30         STA $30
B073   A9 00         LDA #$00
B075   85 8A         STA $8A
B077   A9 FF         LDA #$FF
B079   85 89         STA $89
B07B   A9 00         LDA #$00
B07D   85 8B         STA $8B
B07F   A9 0C         LDA #$0C
B081   85 8C         STA $8C
B083   A9 08         LDA #$08
B085   85 76         STA $76
B087   A9 33         LDA #$33
B089   8D EC 01      STA $01EC
B08C   A9 44         LDA #$44
B08E   8D EB 01      STA $01EB
B091   A9 C0         LDA #$C0
B093   85 8D         STA $8D
B095   A9 50         LDA #$50
B097   8D D9 01      STA $01D9
B09A   A9 20         LDA #$20
B09C   85 9D         STA $9D
B09E   A2 00         LDX #$00
B0A0   A9 82         LDA #$82
B0A2   20 9D 95      JSR $959D
B0A5   C9 02         CMP #$02
B0A7   B0 05         BCS $B0AE
B0A9   A9 C0         LDA #$C0
B0AB   4C 9D 95      JMP $959D
B0AE   A9 76         LDA #$76
B0B0   4C 67 A8      JMP $A867
B0B3   A9 00         LDA #$00
B0B5   85 8E         STA $8E
B0B7   A9 01         LDA #$01
B0B9   85 90         STA $90
B0BB   A9 03         LDA #$03
B0BD   8D E5 01      STA $01E5
B0C0   A9 51         LDA #$51
B0C2   8D 2C 02      STA $022C
B0C5   A9 4F         LDA #$4F
B0C7   85 8F         STA $8F
B0C9   A9 28         LDA #$28
B0CB   8D 2B 02      STA $022B
B0CE   60            RTS
B0CF   A9 28         LDA #$28
B0D1   85 75         STA $75
B0D3   A0 02         LDY #$02
B0D5   84 91         STY $91
B0D7   B9 06 BD      LDA $BD06,Y
B0DA   85 92         STA $92
B0DC   85 93         STA $93
B0DE   8D F0 01      STA $01F0
B0E1   88            DEY
B0E2   84 94         STY $94
B0E4   8C EF 01      STY $01EF
B0E7   A9 F5         LDA #$F5
B0E9   85 9B         STA $9B
B0EB   A9 23         LDA #$23
B0ED   85 9A         STA $9A
B0EF   60            RTS
B0F0   78            SEI
B0F1   A9 10         LDA #$10
B0F3   8D 01 40      STA $4001
B0F6   58            CLI
B0F7   A5 7B         LDA $7B
B0F9   F0 0A         BEQ $B105
B0FB   A9 00         LDA #$00
B0FD   85 7B         STA $7B
B0FF   20 04 80      JSR $8004
B102   20 BB AC      JSR $ACBB
B105   58            CLI
B106   A9 01         LDA #$01
B108   24 76         BIT $76
B10A   F0 03         BEQ $B10F
B10C   4C 30 FF      JMP $FF30
B10F   A5 87         LDA $87
B111   D0 1E         BNE $B131
B113   A0 09         LDY #$09
B115   A2 0E         LDX #$0E
B117   B5 A8         LDA $A8,X
B119   C9 FF         CMP #$FF
B11B   D0 14         BNE $B131
B11D   88            DEY
B11E   30 05         BMI $B125
B120   B9 02 00      LDA $0002,Y
B123   30 0C         BMI $B131
B125   CA            DEX
B126   10 EF         BPL $B117
B128   A5 79         LDA $79
B12A   29 BF         AND #$BF
B12C   85 79         STA $79
B12E   4C 37 B1      JMP $B137
B131   A5 79         LDA $79
B133   09 40         ORA #$40
B135   85 79         STA $79
B137   A5 25         LDA $25
B139   F0 03         BEQ $B13E
B13B   20 6E 92      JSR $926E
B13E   AE AB 02      LDX $02AB
B141   F0 08         BEQ $B14B
B143   A5 79         LDA $79
B145   09 20         ORA #$20
B147   85 79         STA $79
B149   D0 06         BNE $B151
B14B   A5 79         LDA $79
B14D   29 DF         AND #$DF
B14F   85 79         STA $79
B151   A5 9C         LDA $9C
B153   D0 03         BNE $B158
B155   20 5B B1      JSR $B15B
B158   4C 05 B1      JMP $B105
B15B   A5 87         LDA $87
B15D   F0 1C         BEQ $B17B
B15F   A9 40         LDA #$40
B161   8D A8 02      STA $02A8
B164   A5 6C         LDA $6C
B166   48            PHA
B167   A5 4D         LDA $4D
B169   48            PHA
B16A   A5 4E         LDA $4E
B16C   48            PHA
B16D   A2 07         LDX #$07
B16F   20 6C FF      JSR $FF6C
B172   68            PLA
B173   85 4E         STA $4E
B175   68            PLA
B176   85 4D         STA $4D
B178   68            PLA
B179   85 6C         STA $6C
B17B   60            RTS
B17C   A9 00         LDA #$00
B17E   85 52         STA $52
B180   A9 01         LDA #$01
B182   20 5A 91      JSR $915A
B185   A9 00         LDA #$00
B187   20 22 94      JSR $9422
B18A   A6 50         LDX $50
B18C   A9 00         LDA #$00
B18E   9D 42 02      STA $0242,X
B191   20 11 9F      JSR $9F11
B194   AA            TAX
B195   A9 00         LDA #$00
B197   9D 72 02      STA $0272,X
B19A   A9 01         LDA #$01
B19C   20 B1 8E      JSR $8EB1
B19F   A9 04         LDA #$04
B1A1   20 B1 8E      JSR $8EB1
B1A4   A9 01         LDA #$01
B1A6   20 B1 8E      JSR $8EB1
B1A9   20 B1 8E      JSR $8EB1
B1AC   AD 8D 02      LDA $028D
B1AF   20 B1 8E      JSR $8EB1
B1B2   A9 00         LDA #$00
B1B4   20 B1 8E      JSR $8EB1
B1B7   20 37 B2      JSR $B237
B1BA   20 11 9F      JSR $9F11
B1BD   0A            ASL A
B1BE   AA            TAX
B1BF   D6 BB         DEC $BB,X
B1C1   D6 BB         DEC $BB,X
B1C3   A9 00         LDA #$00
B1C5   20 B1 8E      JSR $8EB1
B1C8   A9 01         LDA #$01
B1CA   20 B1 8E      JSR $8EB1
B1CD   20 B1 8E      JSR $8EB1
B1D0   20 4D 85      JSR $854D
B1D3   90 2C         BCC $B201
B1D5   AD 8D 02      LDA $028D
B1D8   20 B1 8E      JSR $8EB1
B1DB   AD 8E 02      LDA $028E
B1DE   20 B1 8E      JSR $8EB1
B1E1   20 37 B2      JSR $B237
B1E4   A9 00         LDA #$00
B1E6   20 B1 8E      JSR $8EB1
B1E9   D0 DD         BNE $B1C8
B1EB   20 11 9F      JSR $9F11
B1EE   0A            ASL A
B1EF   AA            TAX
B1F0   A9 00         LDA #$00
B1F2   95 BB         STA $BB,X
B1F4   A9 88         LDA #$88
B1F6   A4 50         LDY $50
B1F8   8D 6E 02      STA $026E
B1FB   99 34 02      STA $0234,Y
B1FE   A5 54         LDA $54
B200   60            RTS
B201   AD 8D 02      LDA $028D
B204   20 B1 8E      JSR $8EB1
B207   AD 8E 02      LDA $028E
B20A   20 B1 8E      JSR $8EB1
B20D   20 37 B2      JSR $B237
B210   20 11 9F      JSR $9F11
B213   0A            ASL A
B214   AA            TAX
B215   D6 BB         DEC $BB,X
B217   D6 BB         DEC $BB,X
B219   A9 00         LDA #$00
B21B   20 B1 8E      JSR $8EB1
B21E   20 B1 8E      JSR $8EB1
B221   20 B1 8E      JSR $8EB1
B224   20 11 9F      JSR $9F11
B227   0A            ASL A
B228   A8            TAY
B229   B9 BB 00      LDA $00BB,Y
B22C   A6 50         LDX $50
B22E   9D 42 02      STA $0242,X
B231   DE 42 02      DEC $0242,X
B234   4C EB B1      JMP $B1EB
B237   A0 00         LDY #$00
B239   B9 AC 02      LDA $02AC,Y
B23C   20 B1 8E      JSR $8EB1
B23F   C8            INY
B240   C0 1B         CPY #$1B
B242   D0 F5         BNE $B239
B244   60            RTS
B245   20 71 90      JSR $9071
B248   F0 01         BEQ $B24B
B24A   60            RTS
B24B   85 54         STA $54
B24D   A4 50         LDY $50
B24F   B9 42 02      LDA $0242,Y
B252   F0 08         BEQ $B25C
B254   A9 80         LDA #$80
B256   99 34 02      STA $0234,Y
B259   A5 54         LDA $54
B25B   60            RTS
B25C   48            PHA
B25D   20 C8 B1      JSR $B1C8
B260   68            PLA
B261   60            RTS
B262   20 85 80      JSR $8085
B265   20 03 8F      JSR $8F03
B268   20 4A B4      JSR $B44A
B26B   A9 00         LDA #$00
B26D   85 73         STA $73
B26F   20 24 84      JSR $8424
B272   D0 38         BNE $B2AC
B274   A9 00         LDA #$00
B276   85 4E         STA $4E
B278   AD 2B 02      LDA $022B
B27B   85 4D         STA $4D
B27D   20 C7 B2      JSR $B2C7
B280   20 15 B5      JSR $B515
B283   4C 4C 80      JMP $804C
B286   C8            INY
B287   B1 64         LDA ($64),Y
B289   48            PHA
B28A   C8            INY
B28B   B1 64         LDA ($64),Y
B28D   48            PHA
B28E   A0 13         LDY #$13
B290   B1 64         LDA ($64),Y
B292   F0 0A         BEQ $B29E
B294   85 4D         STA $4D
B296   C8            INY
B297   B1 64         LDA ($64),Y
B299   85 4E         STA $4E
B29B   20 C7 B2      JSR $B2C7
B29E   68            PLA
B29F   85 4E         STA $4E
B2A1   68            PLA
B2A2   85 4D         STA $4D
B2A4   20 C7 B2      JSR $B2C7
B2A7   20 77 84      JSR $8477
B2AA   F0 C8         BEQ $B274
B2AC   A0 00         LDY #$00
B2AE   B1 64         LDA ($64),Y
B2B0   10 0F         BPL $B2C1
B2B2   29 07         AND #$07
B2B4   C9 05         CMP #$05
B2B6   D0 CE         BNE $B286
B2B8   20 23 B3      JSR $B323
B2BB   20 3C B3      JSR $B33C
B2BE   4C A7 B2      JMP $B2A7
B2C1   20 3B 87      JSR $873B
B2C4   4C A7 B2      JMP $B2A7
B2C7   20 B5 94      JSR $94B5
B2CA   20 72 B5      JSR $B572
B2CD   20 CF 93      JSR $93CF
B2D0   A9 00         LDA #$00
B2D2   20 22 94      JSR $9422
B2D5   20 71 90      JSR $9071
B2D8   85 4D         STA $4D
B2DA   20 71 90      JSR $9071
B2DD   85 4E         STA $4E
B2DF   A5 4D         LDA $4D
B2E1   D0 03         BNE $B2E6
B2E3   4C 9E 91      JMP $919E
B2E6   20 72 B5      JSR $B572
B2E9   20 AA 93      JSR $93AA
B2EC   4C D0 B2      JMP $B2D0
B2EF   AD EE 01      LDA $01EE
B2F2   D0 08         BNE $B2FC
B2F4   AD ED 01      LDA $01ED
B2F7   F0 1D         BEQ $B316
B2F9   CE ED 01      DEC $01ED
B2FC   CE EE 01      DEC $01EE
B2FF   E6 4E         INC $4E
B301   A5 75         LDA $75
B303   C5 4E         CMP $4E
B305   D0 0F         BNE $B316
B307   A9 00         LDA #$00
B309   85 4E         STA $4E
B30B   A5 4D         LDA $4D
B30D   CD 2B 02      CMP $022B
B310   F0 0C         BEQ $B31E
B312   E6 4D         INC $4D
B314   38            SEC
B315   24 18         BIT $18
B317   AD ED 01      LDA $01ED
B31A   0D EE 01      ORA $01EE
B31D   60            RTS
B31E   A9 67         LDA #$67
B320   4C 3F FF      JMP $FF3F
B323   A0 01         LDY #$01
B325   B1 64         LDA ($64),Y
B327   85 4D         STA $4D
B329   C8            INY
B32A   B1 64         LDA ($64),Y
B32C   85 4E         STA $4E
B32E   A0 1C         LDY #$1C
B330   B1 64         LDA ($64),Y
B332   8D EE 01      STA $01EE
B335   C8            INY
B336   B1 64         LDA ($64),Y
B338   8D ED 01      STA $01ED
B33B   60            RTS
B33C   20 B5 94      JSR $94B5
B33F   20 72 B5      JSR $B572
B342   20 EF B2      JSR $B2EF
B345   D0 F5         BNE $B33C
B347   60            RTS
B348   20 FD 81      JSR $81FD
B34B   A5 EF         LDA $EF
B34D   10 05         BPL $B354
B34F   A9 33         LDA #$33
B351   4C 7C 80      JMP $807C
B354   A9 00         LDA #$00
B356   85 6E         STA $6E
B358   8D FA 01      STA $01FA
B35B   20 F6 81      JSR $81F6
B35E   A2 00         LDX #$00
B360   AC 92 02      LDY $0292
B363   C4 29         CPY $29
B365   F0 19         BEQ $B380
B367   B9 00 02      LDA $0200,Y
B36A   95 1D         STA $1D,X
B36C   B9 01 02      LDA $0201,Y
B36F   95 1E         STA $1E,X
B371   20 62 92      JSR $9262
B374   20 69 FF      JSR $FF69
B377   20 46 87      JSR $8746
B37A   20 3D B4      JSR $B43D
B37D   4C 90 B3      JMP $B390
B380   20 69 FF      JSR $FF69
B383   20 03 8F      JSR $8F03
B386   A5 6F         LDA $6F
B388   CD EB 01      CMP $01EB
B38B   F0 03         BEQ $B390
B38D   4C CB 94      JMP $94CB
B390   A5 6C         LDA $6C
B392   A8            TAY
B393   0A            ASL A
B394   AA            TAX
B395   AD 77 DB      LDA $DB77
B398   95 BB         STA $BB,X
B39A   AE 91 02      LDX $0291
B39D   A9 1B         LDA #$1B
B39F   20 EE 84      JSR $84EE
B3A2   A0 00         LDY #$00
B3A4   84 64         STY $64
B3A6   AD 2B 02      LDA $022B
B3A9   91 64         STA ($64),Y
B3AB   C8            INY
B3AC   A9 03         LDA #$03
B3AE   8D E5 01      STA $01E5
B3B1   91 64         STA ($64),Y
B3B3   C8            INY
B3B4   AD EB 01      LDA $01EB
B3B7   85 6F         STA $6F
B3B9   91 64         STA ($64),Y
B3BB   C8            INY
B3BC   A9 00         LDA #$00
B3BE   91 64         STA ($64),Y
B3C0   A0 16         LDY #$16
B3C2   A5 1D         LDA $1D
B3C4   91 64         STA ($64),Y
B3C6   C8            INY
B3C7   A5 1E         LDA $1E
B3C9   91 64         STA ($64),Y
B3CB   C8            INY
B3CC   A9 A0         LDA #$A0
B3CE   91 64         STA ($64),Y
B3D0   C8            INY
B3D1   AD EC 01      LDA $01EC
B3D4   91 64         STA ($64),Y
B3D6   C8            INY
B3D7   A5 6F         LDA $6F
B3D9   91 64         STA ($64),Y
B3DB   C8            INY
B3DC   A9 A0         LDA #$A0
B3DE   91 64         STA ($64),Y
B3E0   C8            INY
B3E1   91 64         STA ($64),Y
B3E3   C8            INY
B3E4   A9 00         LDA #$00
B3E6   91 64         STA ($64),Y
B3E8   C8            INY
B3E9   D0 FB         BNE $B3E6
B3EB   A9 00         LDA #$00
B3ED   20 35 B4      JSR $B435
B3F0   20 C1 93      JSR $93C1
B3F3   A9 00         LDA #$00
B3F5   85 64         STA $64
B3F7   A8            TAY
B3F8   91 64         STA ($64),Y
B3FA   C8            INY
B3FB   D0 FB         BNE $B3F8
B3FD   C8            INY
B3FE   A9 FF         LDA #$FF
B400   91 64         STA ($64),Y
B402   AD E5 01      LDA $01E5
B405   20 35 B4      JSR $B435
B408   20 C1 93      JSR $93C1
B40B   20 4A B4      JSR $B44A
B40E   AD 2B 02      LDA $022B
B411   85 4D         STA $4D
B413   A9 00         LDA #$00
B415   85 4E         STA $4E
B417   20 72 B5      JSR $B572
B41A   E6 4E         INC $4E
B41C   20 72 B5      JSR $B572
B41F   E6 4E         INC $4E
B421   20 72 B5      JSR $B572
B424   AD E5 01      LDA $01E5
B427   85 4E         STA $4E
B429   20 72 B5      JSR $B572
B42C   20 12 B6      JSR $B612
B42F   20 03 8F      JSR $8F03
B432   4C 4C 80      JMP $804C
B435   85 4E         STA $4E
B437   AD 2B 02      LDA $022B
B43A   85 4D         STA $4D
B43C   60            RTS
B43D   A9 00         LDA #$00
B43F   A8            TAY
B440   99 00 0A      STA $0A00,Y
B443   99 00 0B      STA $0B00,Y
B446   C8            INY
B447   D0 F7         BNE $B440
B449   60            RTS
B44A   A9 00         LDA #$00
B44C   85 4D         STA $4D
B44E   AD 2B 02      LDA $022B
B451   8D 00 0A      STA $0A00
B454   A9 00         LDA #$00
B456   8D 00 0B      STA $0B00
B459   A9 02         LDA #$02
B45B   8D 01 0A      STA $0A01
B45E   A9 FF         LDA #$FF
B460   8D 01 0B      STA $0B01
B463   AD EB 01      LDA $01EB
B466   8D 02 0A      STA $0A02
B469   8D 02 0B      STA $0B02
B46C   49 FF         EOR #$FF
B46E   8D 03 0A      STA $0A03
B471   8D 03 0B      STA $0B03
B474   A5 1D         LDA $1D
B476   8D 04 0A      STA $0A04
B479   8D 04 0B      STA $0B04
B47C   A5 1E         LDA $1E
B47E   8D 05 0A      STA $0A05
B481   8D 05 0B      STA $0B05
B484   A5 8D         LDA $8D
B486   8D 06 0A      STA $0A06
B489   8D 06 0B      STA $0B06
B48C   A9 00         LDA #$00
B48E   8D 07 0A      STA $0A07
B491   8D 07 0B      STA $0B07
B494   20 52 B6      JSR $B652
B497   A0 10         LDY #$10
B499   E6 4D         INC $4D
B49B   A5 4D         LDA $4D
B49D   C5 90         CMP $90
B49F   F0 0B         BEQ $B4AC
B4A1   90 07         BCC $B4AA
B4A3   CD 2C 02      CMP $022C
B4A6   F0 02         BEQ $B4AA
B4A8   90 02         BCC $B4AC
B4AA   18            CLC
B4AB   24 38         BIT $38
B4AD   08            PHP
B4AE   A9 00         LDA #$00
B4B0   85 40         STA $40
B4B2   85 41         STA $41
B4B4   85 42         STA $42
B4B6   85 43         STA $43
B4B8   85 44         STA $44
B4BA   A6 75         LDX $75
B4BC   8A            TXA
B4BD   B0 02         BCS $B4C1
B4BF   A9 00         LDA #$00
B4C1   91 31         STA ($31),Y
B4C3   C8            INY
B4C4   28            PLP
B4C5   08            PHP
B4C6   26 40         ROL $40
B4C8   26 41         ROL $41
B4CA   26 42         ROL $42
B4CC   26 43         ROL $43
B4CE   26 44         ROL $44
B4D0   CA            DEX
B4D1   D0 F1         BNE $B4C4
B4D3   28            PLP
B4D4   B5 40         LDA $40,X
B4D6   91 31         STA ($31),Y
B4D8   C8            INY
B4D9   E8            INX
B4DA   E0 05         CPX #$05
B4DC   90 F6         BCC $B4D4
B4DE   98            TYA
B4DF   D0 B8         BNE $B499
B4E1   A5 32         LDA $32
B4E3   C9 0B         CMP #$0B
B4E5   F0 04         BEQ $B4EB
B4E7   E6 32         INC $32
B4E9   D0 AC         BNE $B497
B4EB   A9 01         LDA #$01
B4ED   85 35         STA $35
B4EF   A9 00         LDA #$00
B4F1   8D A9 02      STA $02A9
B4F4   AD 2B 02      LDA $022B
B4F7   85 4D         STA $4D
B4F9   A9 00         LDA #$00
B4FB   85 4E         STA $4E
B4FD   20 72 B5      JSR $B572
B500   E6 4E         INC $4E
B502   20 72 B5      JSR $B572
B505   E6 4E         INC $4E
B507   20 72 B5      JSR $B572
B50A   AD E5 01      LDA $01E5
B50D   85 4E         STA $4E
B50F   20 72 B5      JSR $B572
B512   4C 85 8F      JMP $8F85
B515   A5 35         LDA $35
B517   F0 28         BEQ $B541
B519   AD 2C 02      LDA $022C
B51C   85 66         STA $66
B51E   20 52 B6      JSR $B652
B521   A9 10         LDA #$10
B523   85 31         STA $31
B525   20 5E B7      JSR $B75E
B528   C6 66         DEC $66
B52A   F0 12         BEQ $B53E
B52C   18            CLC
B52D   A5 31         LDA $31
B52F   69 06         ADC #$06
B531   90 F0         BCC $B523
B533   A5 32         LDA $32
B535   C9 0B         CMP #$0B
B537   F0 05         BEQ $B53E
B539   E6 32         INC $32
B53B   4C 21 B5      JMP $B521
B53E   20 12 B6      JSR $B612
B541   A9 00         LDA #$00
B543   85 35         STA $35
B545   60            RTS
B546   20 B4 B5      JSR $B5B4
B549   20 D8 B5      JSR $B5D8
B54C   D0 23         BNE $B571
B54E   B1 31         LDA ($31),Y
B550   1D EA B5      ORA $B5EA,X
B553   91 31         STA ($31),Y
B555   A9 01         LDA #$01
B557   85 35         STA $35
B559   A0 00         LDY #$00
B55B   18            CLC
B55C   B1 31         LDA ($31),Y
B55E   69 01         ADC #$01
B560   91 31         STA ($31),Y
B562   A5 4D         LDA $4D
B564   CD 2B 02      CMP $022B
B567   F0 34         BEQ $B59D
B569   EE A9 02      INC $02A9
B56C   D0 03         BNE $B571
B56E   EE AA 02      INC $02AA
B571   60            RTS
B572   20 B4 B5      JSR $B5B4
B575   20 D8 B5      JSR $B5D8
B578   F0 39         BEQ $B5B3
B57A   B1 31         LDA ($31),Y
B57C   5D EA B5      EOR $B5EA,X
B57F   91 31         STA ($31),Y
B581   A9 01         LDA #$01
B583   85 35         STA $35
B585   A0 00         LDY #$00
B587   B1 31         LDA ($31),Y
B589   38            SEC
B58A   E9 01         SBC #$01
B58C   91 31         STA ($31),Y
B58E   A5 4D         LDA $4D
B590   CD 2B 02      CMP $022B
B593   F0 0B         BEQ $B5A0
B595   AD A9 02      LDA $02A9
B598   D0 03         BNE $B59D
B59A   CE AA 02      DEC $02AA
B59D   CE A9 02      DEC $02A9
B5A0   AD AA 02      LDA $02AA
B5A3   D0 0E         BNE $B5B3
B5A5   AD A9 02      LDA $02A9
B5A8   C9 03         CMP #$03
B5AA   B0 05         BCS $B5B1
B5AC   A9 72         LDA #$72
B5AE   4C 6D A8      JMP $A86D
B5B1   A9 01         LDA #$01
B5B3   60            RTS
B5B4   A5 6E         LDA $6E
B5B6   F0 05         BEQ $B5BD
B5B8   A9 74         LDA #$74
B5BA   20 3F FF      JSR $FF3F
B5BD   20 52 B6      JSR $B652
B5C0   A5 4D         LDA $4D
B5C2   C9 29         CMP #$29
B5C4   90 04         BCC $B5CA
B5C6   E9 28         SBC #$28
B5C8   E6 32         INC $32
B5CA   0A            ASL A
B5CB   85 31         STA $31
B5CD   0A            ASL A
B5CE   18            CLC
B5CF   65 31         ADC $31
B5D1   69 0A         ADC #$0A
B5D3   85 31         STA $31
B5D5   A0 00         LDY #$00
B5D7   60            RTS
B5D8   A5 4E         LDA $4E
B5DA   4A            LSR A
B5DB   4A            LSR A
B5DC   4A            LSR A
B5DD   A8            TAY
B5DE   C8            INY
B5DF   A5 4E         LDA $4E
B5E1   29 07         AND #$07
B5E3   AA            TAX
B5E4   B1 31         LDA ($31),Y
B5E6   3D EA B5      AND $B5EA,X
B5E9   60            RTS
B5EA   01 02         ORA ($02,X)
B5EC   04            ???                ;00000100
B5ED   08            PHP
B5EE   10 20         BPL $B610
B5F0   40            RTI
B5F1   80            ???                ;10000000
B5F2   A5 6C         LDA $6C
B5F4   85 3F         STA $3F
B5F6   AD 00 0A      LDA $0A00
B5F9   D0 2F         BNE $B62A
B5FB   A9 07         LDA #$07
B5FD   A2 01         LDX #$01
B5FF   20 43 B6      JSR $B643
B602   20 DE 94      JSR $94DE
B605   A9 08         LDA #$08
B607   A2 02         LDX #$02
B609   20 43 B6      JSR $B643
B60C   20 DE 94      JSR $94DE
B60F   4C 2A B6      JMP $B62A
B612   A5 6C         LDA $6C
B614   85 3F         STA $3F
B616   A9 07         LDA #$07
B618   A2 01         LDX #$01
B61A   20 43 B6      JSR $B643
B61D   20 E2 94      JSR $94E2
B620   A9 08         LDA #$08
B622   A2 02         LDX #$02
B624   20 43 B6      JSR $B643
B627   20 E2 94      JSR $94E2
B62A   A5 3F         LDA $3F
B62C   85 6C         STA $6C
B62E   A9 00         LDA #$00
B630   85 35         STA $35
B632   60            RTS
B633   20 15 B5      JSR $B515
B636   A2 00         LDX #$00
B638   A5 6C         LDA $6C
B63A   20 43 B6      JSR $B643
B63D   20 DE 94      JSR $94DE
B640   4C F2 B5      JMP $B5F2
B643   85 6C         STA $6C
B645   86 4E         STX $4E
B647   AE 2B 02      LDX $022B
B64A   86 4D         STX $4D
B64C   4C 88 95      JMP $9588
B64F   20 F2 B5      JSR $B5F2
B652   A9 0A         LDA #$0A
B654   85 32         STA $32
B656   A9 00         LDA #$00
B658   85 31         STA $31
B65A   60            RTS
B65B   AD A9 02      LDA $02A9
B65E   8D 8D 02      STA $028D
B661   AD AA 02      LDA $02AA
B664   8D 8E 02      STA $028E
B667   60            RTS
B668   20 7C 9D      JSR $9D7C
B66B   A9 03         LDA #$03
B66D   85 40         STA $40
B66F   A9 01         LDA #$01
B671   05 35         ORA $35
B673   85 35         STA $35
B675   20 B4 B5      JSR $B5B4
B678   B1 31         LDA ($31),Y
B67A   D0 43         BNE $B6BF
B67C   A5 4D         LDA $4D
B67E   CD 2B 02      CMP $022B
B681   F0 1D         BEQ $B6A0
B683   90 20         BCC $B6A5
B685   E6 4D         INC $4D
B687   A5 4D         LDA $4D
B689   CD 2C 02      CMP $022C
B68C   D0 E7         BNE $B675
B68E   AE 2B 02      LDX $022B
B691   CA            DEX
B692   86 4D         STX $4D
B694   E4 90         CPX $90
B696   90 17         BCC $B6AF
B698   A9 00         LDA #$00
B69A   85 4E         STA $4E
B69C   C6 40         DEC $40
B69E   D0 D5         BNE $B675
B6A0   A9 72         LDA #$72
B6A2   20 7C 80      JSR $807C
B6A5   A5 4D         LDA $4D
B6A7   C5 90         CMP $90
B6A9   90 04         BCC $B6AF
B6AB   C6 4D         DEC $4D
B6AD   D0 C6         BNE $B675
B6AF   AE 2B 02      LDX $022B
B6B2   E8            INX
B6B3   86 4D         STX $4D
B6B5   A9 00         LDA #$00
B6B7   85 4E         STA $4E
B6B9   C6 40         DEC $40
B6BB   D0 B8         BNE $B675
B6BD   F0 E1         BEQ $B6A0
B6BF   A5 4E         LDA $4E
B6C1   18            CLC
B6C2   65 2E         ADC $2E
B6C4   85 4E         STA $4E
B6C6   A5 75         LDA $75
B6C8   85 28         STA $28
B6CA   C5 4E         CMP $4E
B6CC   B0 0B         BCS $B6D9
B6CE   38            SEC
B6CF   A5 4E         LDA $4E
B6D1   E5 75         SBC $75
B6D3   85 4E         STA $4E
B6D5   F0 02         BEQ $B6D9
B6D7   C6 4E         DEC $4E
B6D9   20 46 B7      JSR $B746
B6DC   F0 03         BEQ $B6E1
B6DE   4C 72 B5      JMP $B572
B6E1   A9 00         LDA #$00
B6E3   85 4E         STA $4E
B6E5   20 46 B7      JSR $B746
B6E8   D0 F4         BNE $B6DE
B6EA   4C 41 B7      JMP $B741
B6ED   A9 01         LDA #$01
B6EF   05 35         ORA $35
B6F1   85 35         STA $35
B6F3   A5 55         LDA $55
B6F5   48            PHA
B6F6   A9 01         LDA #$01
B6F8   85 55         STA $55
B6FA   AD 2B 02      LDA $022B
B6FD   38            SEC
B6FE   E5 55         SBC $55
B700   85 4D         STA $4D
B702   08            PHP
B703   C5 90         CMP $90
B705   B0 04         BCS $B70B
B707   28            PLP
B708   4C 17 B7      JMP $B717
B70B   28            PLP
B70C   90 09         BCC $B717
B70E   F0 07         BEQ $B717
B710   20 B4 B5      JSR $B5B4
B713   B1 31         LDA ($31),Y
B715   D0 1B         BNE $B732
B717   AD 2B 02      LDA $022B
B71A   18            CLC
B71B   65 55         ADC $55
B71D   85 4D         STA $4D
B71F   E6 55         INC $55
B721   CD 2C 02      CMP $022C
B724   90 05         BCC $B72B
B726   A9 67         LDA #$67
B728   20 3F FF      JSR $FF3F
B72B   20 B4 B5      JSR $B5B4
B72E   B1 31         LDA ($31),Y
B730   F0 C8         BEQ $B6FA
B732   68            PLA
B733   85 55         STA $55
B735   A9 00         LDA #$00
B737   85 4E         STA $4E
B739   20 46 B7      JSR $B746
B73C   F0 03         BEQ $B741
B73E   4C 72 B5      JMP $B572
B741   A9 71         LDA #$71
B743   20 3F FF      JSR $FF3F
B746   20 B4 B5      JSR $B5B4
B749   20 5E B7      JSR $B75E
B74C   A5 4E         LDA $4E
B74E   C5 75         CMP $75
B750   B0 09         BCS $B75B
B752   20 D8 B5      JSR $B5D8
B755   D0 06         BNE $B75D
B757   E6 4E         INC $4E
B759   D0 F1         BNE $B74C
B75B   A9 00         LDA #$00
B75D   60            RTS
B75E   A9 00         LDA #$00
B760   85 2F         STA $2F
B762   AC 76 DB      LDY $DB76
B765   88            DEY
B766   A2 08         LDX #$08
B768   B1 31         LDA ($31),Y
B76A   0A            ASL A
B76B   90 02         BCC $B76F
B76D   E6 2F         INC $2F
B76F   CA            DEX
B770   D0 F8         BNE $B76A
B772   88            DEY
B773   D0 F1         BNE $B766
B775   B1 31         LDA ($31),Y
B777   C5 2F         CMP $2F
B779   D0 01         BNE $B77C
B77B   60            RTS
B77C   A9 71         LDA #$71
B77E   20 3F FF      JSR $FF3F
B781   20 AE 84      JSR $84AE
B784   A5 29         LDA $29
B786   C9 02         CMP #$02
B788   90 6D         BCC $B7F7
B78A   A9 01         LDA #$01
B78C   8D 91 02      STA $0291
B78F   20 FD 81      JSR $81FD
B792   20 B9 82      JSR $82B9
B795   AD 97 02      LDA $0297
B798   F0 13         BEQ $B7AD
B79A   20 51 B8      JSR $B851
B79D   90 20         BCC $B7BF
B79F   A9 63         LDA #$63
B7A1   2C A9 62      BIT $62A9
B7A4   2C A9 30      BIT $30A9
B7A7   2C A9 77      BIT $77A9
B7AA   20 7C 80      JSR $807C
B7AD   20 51 B8      JSR $B851
B7B0   90 F0         BCC $B7A2
B7B2   AE 90 02      LDX $0290
B7B5   BD 06 02      LDA $0206,X
B7B8   C9 43         CMP #$43
B7BA   D0 E9         BNE $B7A5
B7BC   4C 8D B8      JMP $B88D
B7BF   A5 F4         LDA $F4
B7C1   29 07         AND #$07
B7C3   C9 05         CMP #$05
B7C5   D0 DB         BNE $B7A2
B7C7   20 23 B3      JSR $B323
B7CA   20 B5 94      JSR $94B5
B7CD   20 EF B2      JSR $B2EF
B7D0   D0 F8         BNE $B7CA
B7D2   90 D4         BCC $B7A8
B7D4   A0 02         LDY #$02
B7D6   B1 64         LDA ($64),Y
B7D8   D0 CE         BNE $B7A8
B7DA   88            DEY
B7DB   A5 4D         LDA $4D
B7DD   AA            TAX
B7DE   F1 64         SBC ($64),Y
B7E0   C9 02         CMP #$02
B7E2   F0 C4         BEQ $B7A8
B7E4   90 C2         BCC $B7A8
B7E6   B1 64         LDA ($64),Y
B7E8   8D 2B 02      STA $022B
B7EB   85 90         STA $90
B7ED   8E 2C 02      STX $022C
B7F0   CA            DEX
B7F1   CA            DEX
B7F2   86 8F         STX $8F
B7F4   4C FA B7      JMP $B7FA
B7F7   20 B3 B0      JSR $B0B3
B7FA   20 62 92      JSR $9262
B7FD   20 03 8F      JSR $8F03
B800   A5 90         LDA $90
B802   85 4D         STA $4D
B804   AC 2C 02      LDY $022C
B807   88            DEY
B808   84 4E         STY $4E
B80A   A9 02         LDA #$02
B80C   A0 00         LDY #$00
B80E   4C 5F 80      JMP $805F
B811   A5 35         LDA $35
B813   48            PHA
B814   AD A9 02      LDA $02A9
B817   48            PHA
B818   AD AA 02      LDA $02AA
B81B   48            PHA
B81C   20 5F B8      JSR $B85F
B81F   20 B5 94      JSR $94B5
B822   A5 4D         LDA $4D
B824   C9 28         CMP #$28
B826   F0 19         BEQ $B841
B828   20 72 B5      JSR $B572
B82B   F0 14         BEQ $B841
B82D   20 46 B5      JSR $B546
B830   20 EF B2      JSR $B2EF
B833   D0 EA         BNE $B81F
B835   68            PLA
B836   8D AA 02      STA $02AA
B839   68            PLA
B83A   8D A9 02      STA $02A9
B83D   68            PLA
B83E   85 35         STA $35
B840   60            RTS
B841   68            PLA
B842   8D AA 02      STA $02AA
B845   68            PLA
B846   8D A9 02      STA $02A9
B849   68            PLA
B84A   85 35         STA $35
B84C   A9 67         LDA #$67
B84E   4C 3F FF      JMP $FF3F
B851   A2 01         LDX #$01
B853   20 26 85      JSR $8526
B856   A5 29         LDA $29
B858   38            SEC
B859   ED 90 02      SBC $0290
B85C   C9 04         CMP #$04
B85E   60            RTS
B85F   AC 90 02      LDY $0290
B862   C8            INY
B863   B9 00 02      LDA $0200,Y
B866   85 4D         STA $4D
B868   C8            INY
B869   B9 00 02      LDA $0200,Y
B86C   85 4E         STA $4E
B86E   C8            INY
B86F   B9 00 02      LDA $0200,Y
B872   8D EE 01      STA $01EE
B875   C8            INY
B876   B9 00 02      LDA $0200,Y
B879   8D ED 01      STA $01ED
B87C   18            CLC
B87D   AD EE 01      LDA $01EE
B880   6D ED 01      ADC $01ED
B883   F0 03         BEQ $B888
B885   4C B5 94      JMP $94B5
B888   A9 77         LDA #$77
B88A   20 7C 80      JSR $807C
B88D   20 11 B8      JSR $B811
B890   A9 05         LDA #$05
B892   8D 2D 02      STA $022D
B895   A9 12         LDA #$12
B897   85 52         STA $52
B899   20 5F B8      JSR $B85F
B89C   20 C6 9B      JSR $9BC6
B89F   20 AB 95      JSR $95AB
B8A2   20 5F B8      JSR $B85F
B8A5   20 B5 94      JSR $94B5
B8A8   A5 4D         LDA $4D
B8AA   20 72 B5      JSR $B572
B8AD   20 EF B2      JSR $B2EF
B8B0   D0 F3         BNE $B8A5
B8B2   20 5F B8      JSR $B85F
B8B5   A6 50         LDX $50
B8B7   AD EE 01      LDA $01EE
B8BA   9D 49 02      STA $0249,X
B8BD   AD ED 01      LDA $01ED
B8C0   9D 50 02      STA $0250,X
B8C3   A9 00         LDA #$00
B8C5   20 B1 8E      JSR $8EB1
B8C8   A9 12         LDA #$12
B8CA   85 52         STA $52
B8CC   20 9F 99      JSR $999F
B8CF   4C 4C 80      JMP $804C
B8D2   4C 4C 80      JMP $804C
B8D5   A9 08         LDA #$08
B8D7   24 76         BIT $76
B8D9   F0 F7         BEQ $B8D2
B8DB   20 D4 AC      JSR $ACD4
B8DE   20 06 BA      JSR $BA06
B8E1   B0 59         BCS $B93C
B8E3   20 AE 84      JSR $84AE
B8E6   A5 6E         LDA $6E
B8E8   D0 52         BNE $B93C
B8EA   A9 80         LDA #$80
B8EC   85 3C         STA $3C
B8EE   20 64 BA      JSR $BA64
B8F1   AD 00 02      LDA $0200
B8F4   C9 2A         CMP #$2A
B8F6   D0 0F         BNE $B907
B8F8   A5 4C         LDA $4C
B8FA   F0 0B         BEQ $B907
B8FC   48            PHA
B8FD   AD 8B 02      LDA $028B
B900   8D 9C 02      STA $029C
B903   68            PLA
B904   4C 41 B9      JMP $B941
B907   A9 00         LDA #$00
B909   A8            TAY
B90A   AA            TAX
B90B   8D 91 02      STA $0291
B90E   20 FD 81      JSR $81FD
B911   AD 2F 02      LDA $022F
B914   48            PHA
B915   A9 01         LDA #$01
B917   8D 2F 02      STA $022F
B91A   A9 FF         LDA #$FF
B91C   85 55         STA $55
B91E   20 B9 82      JSR $82B9
B921   68            PLA
B922   8D 2F 02      STA $022F
B925   20 95 BA      JSR $BA95
B928   24 7C         BIT $7C
B92A   30 08         BMI $B934
B92C   A5 F4         LDA $F4
B92E   29 07         AND #$07
B930   C9 02         CMP #$02
B932   D0 05         BNE $B939
B934   AD 97 02      LDA $0297
B937   D0 08         BNE $B941
B939   A2 02         LDX #$02
B93B   2C A2 0F      BIT $0FA2
B93E   4C EC B9      JMP $B9EC
B941   85 4C         STA $4C
B943   A2 00         LDX #$00
B945   95 0B         STA $0B,X
B947   AD 9C 02      LDA $029C
B94A   8D 8B 02      STA $028B
B94D   95 0C         STA $0C,X
B94F   58            CLI
B950   A2 00         LDX #$00
B952   A9 AA         LDA #$AA
B954   20 B7 BF      JSR $BFB7
B957   AA            TAX
B958   E0 02         CPX #$02
B95A   90 03         BCC $B95F
B95C   4C D7 B9      JMP $B9D7
B95F   78            SEI
B960   A0 00         LDY #$00
B962   84 7E         STY $7E
B964   B9 9F 00      LDA $009F,Y
B967   29 7F         AND #$7F
B969   18            CLC
B96A   65 8C         ADC $8C
B96C   85 7F         STA $7F
B96E   B1 7E         LDA ($7E),Y
B970   F0 1E         BEQ $B990
B972   06 3C         ASL $3C
B974   20 FC 01      JSR $01FC
B977   A0 02         LDY #$02
B979   B1 7E         LDA ($7E),Y
B97B   AA            TAX
B97C   20 FC 01      JSR $01FC
B97F   C8            INY
B980   D0 F7         BNE $B979
B982   A2 00         LDX #$00
B984   B1 7E         LDA ($7E),Y
B986   95 0B         STA $0B,X
B988   C8            INY
B989   B1 7E         LDA ($7E),Y
B98B   95 0C         STA $0C,X
B98D   4C 4F B9      JMP $B94F
B990   A2 1F         LDX #$1F
B992   20 FC 01      JSR $01FC
B995   24 3C         BIT $3C
B997   10 1F         BPL $B9B8
B999   A0 01         LDY #$01
B99B   B1 7E         LDA ($7E),Y
B99D   38            SEC
B99E   E9 03         SBC #$03
B9A0   85 38         STA $38
B9A2   AA            TAX
B9A3   20 FC 01      JSR $01FC
B9A6   C8            INY
B9A7   B1 7E         LDA ($7E),Y
B9A9   AA            TAX
B9AA   20 FC 01      JSR $01FC
B9AD   C8            INY
B9AE   B1 7E         LDA ($7E),Y
B9B0   AA            TAX
B9B1   20 FC 01      JSR $01FC
B9B4   A0 04         LDY #$04
B9B6   D0 0D         BNE $B9C5
B9B8   A0 01         LDY #$01
B9BA   B1 7E         LDA ($7E),Y
B9BC   AA            TAX
B9BD   CA            DEX
B9BE   86 38         STX $38
B9C0   20 FC 01      JSR $01FC
B9C3   A0 02         LDY #$02
B9C5   B1 7E         LDA ($7E),Y
B9C7   AA            TAX
B9C8   20 FC 01      JSR $01FC
B9CB   C8            INY
B9CC   C6 38         DEC $38
B9CE   D0 F5         BNE $B9C5
B9D0   4C 4C 80      JMP $804C
B9D3   AA            TAX
B9D4   20 95 BA      JSR $BA95
B9D7   20 FB B9      JSR $B9FB
B9DA   A2 00         LDX #$00
B9DC   4C 2D FF      JMP $FF2D
B9DF   48            PHA
B9E0   08            PHP
B9E1   78            SEI
B9E2   A2 02         LDX #$02
B9E4   20 FC 01      JSR $01FC
B9E7   28            PLP
B9E8   20 95 BA      JSR $BA95
B9EB   68            PLA
B9EC   20 FB B9      JSR $B9FB
B9EF   C9 02         CMP #$02
B9F1   F0 03         BEQ $B9F6
B9F3   A9 74         LDA #$74
B9F5   2C A9 62      BIT $62A9
B9F8   4C 7C 80      JMP $807C
B9FB   78            SEI
B9FC   86 38         STX $38
B9FE   A2 02         LDX #$02
BA00   20 FC 01      JSR $01FC
BA03   A5 38         LDA $38
BA05   60            RTS
BA06   A0 03         LDY #$03
BA08   A5 29         LDA $29
BA0A   38            SEC
BA0B   E9 03         SBC #$03
BA0D   85 29         STA $29
BA0F   AD 04 02      LDA $0204
BA12   C9 3A         CMP #$3A
BA14   D0 0E         BNE $BA24
BA16   AD 03 02      LDA $0203
BA19   AA            TAX
BA1A   29 30         AND #$30
BA1C   C9 30         CMP #$30
BA1E   D0 04         BNE $BA24
BA20   E0 31         CPX #$31
BA22   F0 1A         BEQ $BA3E
BA24   AD 03 02      LDA $0203
BA27   C9 3A         CMP #$3A
BA29   D0 03         BNE $BA2E
BA2B   C6 29         DEC $29
BA2D   C8            INY
BA2E   A2 00         LDX #$00
BA30   B9 00 02      LDA $0200,Y
BA33   9D 00 02      STA $0200,X
BA36   C8            INY
BA37   E8            INX
BA38   E4 29         CPX $29
BA3A   D0 F4         BNE $BA30
BA3C   18            CLC
BA3D   24 38         BIT $38
BA3F   60            RTS
BA40   AD 01 40      LDA $4001
BA43   CD 01 40      CMP $4001
BA46   D0 F8         BNE $BA40
BA48   29 FF         AND #$FF
BA4A   30 15         BMI $BA61
BA4C   45 76         EOR $76
BA4E   29 04         AND #$04
BA50   F0 EE         BEQ $BA40
BA52   8E 0C 40      STX $400C
BA55   45 76         EOR $76
BA57   85 76         STA $76
BA59   A9 08         LDA #$08
BA5B   2C 0D 40      BIT $400D
BA5E   F0 FB         BEQ $BA5B
BA60   60            RTS
BA61   4C 30 FF      JMP $FF30
BA64   20 7C BA      JSR $BA7C
BA67   A9 D3         LDA #$D3
BA69   8D AE 01      STA $01AE
BA6C   A9 B9         LDA #$B9
BA6E   8D AF 01      STA $01AF
BA71   A9 DF         LDA #$DF
BA73   8D BA 01      STA $01BA
BA76   A9 DF         LDA #$DF
BA78   8D BB 01      STA $01BB
BA7B   60            RTS
BA7C   AD AE 01      LDA $01AE
BA7F   8D E6 01      STA $01E6
BA82   AD AF 01      LDA $01AF
BA85   8D E7 01      STA $01E7
BA88   AD BA 01      LDA $01BA
BA8B   8D E8 01      STA $01E8
BA8E   AD BB 01      LDA $01BB
BA91   8D E9 01      STA $01E9
BA94   60            RTS
BA95   AD E6 01      LDA $01E6
BA98   8D AE 01      STA $01AE
BA9B   AD E7 01      LDA $01E7
BA9E   8D AF 01      STA $01AF
BAA1   AD E8 01      LDA $01E8
BAA4   8D BA 01      STA $01BA
BAA7   AD E9 01      LDA $01E9
BAAA   8D BB 01      STA $01BB
BAAD   60            RTS
BAAE   A9 8D         LDA #$8D
BAB0   4C FC BA      JMP $BAFC
BAB3   A5 8A         LDA $8A
BAB5   30 F7         BMI $BAAE
BAB7   A2 00         LDX #$00
BAB9   AD 03 02      LDA $0203
BABC   95 0B         STA $0B,X
BABE   AD 04 02      LDA $0204
BAC1   95 0C         STA $0C,X
BAC3   A9 80         LDA #$80
BAC5   20 B0 BF      JSR $BFB0
BAC8   20 66 BF      JSR $BF66
BACB   24 7C         BIT $7C
BACD   70 07         BVS $BAD6
BACF   C9 02         CMP #$02
BAD1   90 03         BCC $BAD6
BAD3   4C FC BA      JMP $BAFC
BAD6   20 AB BF      JSR $BFAB
BAD9   A0 00         LDY #$00
BADB   84 7E         STY $7E
BADD   A9 03         LDA #$03
BADF   85 7F         STA $7F
BAE1   B1 7E         LDA ($7E),Y
BAE3   20 86 BF      JSR $BF86
BAE6   C8            INY
BAE7   D0 F8         BNE $BAE1
BAE9   CE 05 02      DEC $0205
BAEC   F0 06         BEQ $BAF4
BAEE   20 7A C0      JSR $C07A
BAF1   4C B3 BA      JMP $BAB3
BAF4   4C 44 BF      JMP $BF44
BAF7   A9 0B         LDA #$0B
BAF9   2C A9 4F      BIT $4FA9
BAFC   20 66 BF      JSR $BF66
BAFF   20 BF BE      JSR $BEBF
BB02   AD EA 01      LDA $01EA
BB05   C9 02         CMP #$02
BB07   B0 01         BCS $BB0A
BB09   60            RTS
BB0A   29 0F         AND #$0F
BB0C   A2 00         LDX #$00
BB0E   4C 2D FF      JMP $FF2D
BB11   A5 25         LDA $25
BB13   D0 E2         BNE $BAF7
BB15   20 D4 AC      JSR $ACD4
BB18   A5 7C         LDA $7C
BB1A   30 97         BMI $BAB3
BB1C   A2 00         LDX #$00
BB1E   AD 03 02      LDA $0203
BB21   95 0B         STA $0B,X
BB23   AD 04 02      LDA $0204
BB26   95 0C         STA $0C,X
BB28   A5 7C         LDA $7C
BB2A   29 10         AND #$10
BB2C   9D CE 01      STA $01CE,X
BB2F   A9 B2         LDA #$B2
BB31   20 B0 BF      JSR $BFB0
BB34   20 66 BF      JSR $BF66
BB37   24 7C         BIT $7C
BB39   70 04         BVS $BB3F
BB3B   C9 02         CMP #$02
BB3D   B0 BD         BCS $BAFC
BB3F   20 AB BF      JSR $BFAB
BB42   A0 00         LDY #$00
BB44   84 7E         STY $7E
BB46   B9 9F 00      LDA $009F,Y
BB49   29 7F         AND #$7F
BB4B   18            CLC
BB4C   65 8C         ADC $8C
BB4E   85 7F         STA $7F
BB50   A6 91         LDX $91
BB52   E0 03         CPX #$03
BB54   D0 01         BNE $BB57
BB56   E8            INX
BB57   B1 7E         LDA ($7E),Y
BB59   20 86 BF      JSR $BF86
BB5C   C8            INY
BB5D   D0 F8         BNE $BB57
BB5F   CA            DEX
BB60   F0 04         BEQ $BB66
BB62   E6 7F         INC $7F
BB64   D0 F1         BNE $BB57
BB66   CE 05 02      DEC $0205
BB69   F0 06         BEQ $BB71
BB6B   20 40 C0      JSR $C040
BB6E   4C 15 BB      JMP $BB15
BB71   4C 47 BF      JMP $BF47
BB74   A9 8D         LDA #$8D
BB76   8D EA 01      STA $01EA
BB79   A5 7C         LDA $7C
BB7B   09 08         ORA #$08
BB7D   85 7C         STA $7C
BB7F   D0 04         BNE $BB85
BB81   A5 8A         LDA $8A
BB83   30 EF         BMI $BB74
BB85   A0 00         LDY #$00
BB87   84 7E         STY $7E
BB89   A9 03         LDA #$03
BB8B   85 7F         STA $7F
BB8D   AD 01 40      LDA $4001
BB90   49 08         EOR #$08
BB92   2C 0D 40      BIT $400D
BB95   8D 01 40      STA $4001
BB98   A9 08         LDA #$08
BB9A   2C 01 40      BIT $4001
BB9D   30 0F         BMI $BBAE
BB9F   2C 0D 40      BIT $400D
BBA2   F0 F6         BEQ $BB9A
BBA4   AD 0C 40      LDA $400C
BBA7   91 7E         STA ($7E),Y
BBA9   C8            INY
BBAA   D0 E1         BNE $BB8D
BBAC   F0 0C         BEQ $BBBA
BBAE   20 15 AD      JSR $AD15
BBB1   4C 9A BB      JMP $BB9A
BBB4   AD EA 01      LDA $01EA
BBB7   4C FC BA      JMP $BAFC
BBBA   20 03 AD      JSR $AD03
BBBD   A5 7C         LDA $7C
BBBF   29 08         AND #$08
BBC1   D0 F1         BNE $BBB4
BBC3   A2 00         LDX #$00
BBC5   AD 03 02      LDA $0203
BBC8   95 0B         STA $0B,X
BBCA   AD 04 02      LDA $0204
BBCD   95 0C         STA $0C,X
BBCF   A9 90         LDA #$90
BBD1   20 B0 BF      JSR $BFB0
BBD4   20 66 BF      JSR $BF66
BBD7   20 5A BF      JSR $BF5A
BBDA   24 7C         BIT $7C
BBDC   70 0A         BVS $BBE8
BBDE   AD EA 01      LDA $01EA
BBE1   C9 02         CMP #$02
BBE3   90 03         BCC $BBE8
BBE5   4C 0A BB      JMP $BB0A
BBE8   CE 05 02      DEC $0205
BBEB   F0 06         BEQ $BBF3
BBED   20 7A C0      JSR $C07A
BBF0   4C 81 BB      JMP $BB81
BBF3   4C 44 BF      JMP $BF44
BBF6   A9 0B         LDA #$0B
BBF8   2C A9 4F      BIT $4FA9
BBFB   8D EA 01      STA $01EA
BBFE   4C 2F BC      JMP $BC2F
BC01   A5 25         LDA $25
BC03   D0 F1         BNE $BBF6
BC05   A5 7C         LDA $7C
BC07   10 03         BPL $BC0C
BC09   4C 81 BB      JMP $BB81
BC0C   A2 00         LDX #$00
BC0E   A5 7C         LDA $7C
BC10   29 10         AND #$10
BC12   9D CE 01      STA $01CE,X
BC15   AD 03 02      LDA $0203
BC18   95 0B         STA $0B,X
BC1A   AD 04 02      LDA $0204
BC1D   95 0C         STA $0C,X
BC1F   A9 B4         LDA #$B4
BC21   20 B0 BF      JSR $BFB0
BC24   20 66 BF      JSR $BF66
BC27   C9 02         CMP #$02
BC29   90 0A         BCC $BC35
BC2B   A9 00         LDA #$00
BC2D   85 87         STA $87
BC2F   A5 7C         LDA $7C
BC31   09 08         ORA #$08
BC33   85 7C         STA $7C
BC35   20 99 BC      JSR $BC99
BC38   A6 91         LDX $91
BC3A   E0 03         CPX #$03
BC3C   D0 01         BNE $BC3F
BC3E   E8            INX
BC3F   AD 01 40      LDA $4001
BC42   49 08         EOR #$08
BC44   2C 0D 40      BIT $400D
BC47   8D 01 40      STA $4001
BC4A   A9 08         LDA #$08
BC4C   2C 01 40      BIT $4001
BC4F   30 14         BMI $BC65
BC51   2C 0D 40      BIT $400D
BC54   F0 F6         BEQ $BC4C
BC56   AD 0C 40      LDA $400C
BC59   91 7E         STA ($7E),Y
BC5B   C8            INY
BC5C   D0 E1         BNE $BC3F
BC5E   E6 7F         INC $7F
BC60   CA            DEX
BC61   D0 DC         BNE $BC3F
BC63   F0 0C         BEQ $BC71
BC65   20 15 AD      JSR $AD15
BC68   4C 4C BC      JMP $BC4C
BC6B   AD EA 01      LDA $01EA
BC6E   4C FC BA      JMP $BAFC
BC71   20 03 AD      JSR $AD03
BC74   A5 7C         LDA $7C
BC76   29 08         AND #$08
BC78   D0 F1         BNE $BC6B
BC7A   20 5A BF      JSR $BF5A
BC7D   24 7C         BIT $7C
BC7F   70 0A         BVS $BC8B
BC81   AD EA 01      LDA $01EA
BC84   C9 02         CMP #$02
BC86   90 03         BCC $BC8B
BC88   4C 0A BB      JMP $BB0A
BC8B   CE 05 02      DEC $0205
BC8E   F0 06         BEQ $BC96
BC90   20 40 C0      JSR $C040
BC93   4C 01 BC      JMP $BC01
BC96   4C 47 BF      JMP $BF47
BC99   A0 00         LDY #$00
BC9B   84 7E         STY $7E
BC9D   AD 04 02      LDA $0204
BCA0   38            SEC
BCA1   E5 94         SBC $94
BCA3   A6 91         LDX $91
BCA5   CA            DEX
BCA6   F0 04         BEQ $BCAC
BCA8   0A            ASL A
BCA9   4C A5 BC      JMP $BCA5
BCAC   18            CLC
BCAD   65 8C         ADC $8C
BCAF   85 7F         STA $7F
BCB1   60            RTS
BCB2   AD 02 02      LDA $0202
BCB5   29 01         AND #$01
BCB7   D0 2E         BNE $BCE7
BCB9   A2 00         LDX #$00
BCBB   86 80         STX $80
BCBD   A9 C0         LDA #$C0
BCBF   20 B0 BF      JSR $BFB0
BCC2   08            PHP
BCC3   58            CLI
BCC4   A9 80         LDA #$80
BCC6   85 81         STA $81
BCC8   20 F1 BE      JSR $BEF1
BCCB   20 03 8F      JSR $8F03
BCCE   06 81         ASL $81
BCD0   28            PLP
BCD1   A5 7C         LDA $7C
BCD3   29 10         AND #$10
BCD5   4A            LSR A
BCD6   4A            LSR A
BCD7   4A            LSR A
BCD8   4A            LSR A
BCD9   9D CE 01      STA $01CE,X
BCDC   A9 9C         LDA #$9C
BCDE   20 9D 95      JSR $959D
BCE1   A9 B0         LDA #$B0
BCE3   20 B0 BF      JSR $BFB0
BCE6   2C A9 4F      BIT $4FA9
BCE9   20 FC BA      JSR $BAFC
BCEC   A9 01         LDA #$01
BCEE   8D EF 01      STA $01EF
BCF1   85 94         STA $94
BCF3   A6 22         LDX $22
BCF5   BD 06 BD      LDA $BD06,X
BCF8   F0 08         BEQ $BD02
BCFA   85 92         STA $92
BCFC   85 93         STA $93
BCFE   8D F0 01      STA $01F0
BD01   60            RTS
BD02   A9 0E         LDA #$0E
BD04   D0 E3         BNE $BCE9
BD06   00            BRK
BD07   10 0A         BPL $BD13
BD09   05 A9         ORA $A9
BD0B   4F            ???                ;01001111 'O'
BD0C   20 66 BF      JSR $BF66
BD0F   4C 02 BB      JMP $BB02
BD12   AD 02 02      LDA $0202
BD15   29 01         AND #$01
BD17   D0 F1         BNE $BD0A
BD19   AD 02 02      LDA $0202
BD1C   10 40         BPL $BD5E
BD1E   A5 29         LDA $29
BD20   38            SEC
BD21   E9 03         SBC #$03
BD23   A8            TAY
BD24   F0 56         BEQ $BD7C
BD26   AD 03 02      LDA $0203
BD29   85 91         STA $91
BD2B   88            DEY
BD2C   F0 52         BEQ $BD80
BD2E   88            DEY
BD2F   F0 54         BEQ $BD85
BD31   88            DEY
BD32   F0 59         BEQ $BD8D
BD34   88            DEY
BD35   F0 5B         BEQ $BD92
BD37   88            DEY
BD38   F0 5D         BEQ $BD97
BD3A   AD 08 02      LDA $0208
BD3D   85 94         STA $94
BD3F   88            DEY
BD40   F0 59         BEQ $BD9B
BD42   AD 09 02      LDA $0209
BD45   85 9A         STA $9A
BD47   4C A2 BD      JMP $BDA2
BD4A   4E 30 3A      LSR $3A30
BD4D   43            ???                ;01000011 'C'
BD4E   4F            ???                ;01001111 'O'
BD4F   50 59         BVC $BDAA
BD51   52            ???                ;01010010 'R'
BD52   49 47         EOR #$47
BD54   48            PHA
BD55   54            ???                ;01010100 'T'
BD56   20 43 42      JSR $4243
BD59   4D 2C 38      EOR $382C
BD5C   36 0D         ROL $0D,X
BD5E   A0 13         LDY #$13
BD60   B9 4A BD      LDA $BD4A,Y
BD63   99 00 02      STA $0200,Y
BD66   88            DEY
BD67   10 F7         BPL $BD60
BD69   A9 14         LDA #$14
BD6B   85 29         STA $29
BD6D   A9 11         LDA #$11
BD6F   8D 92 02      STA $0292
BD72   A9 01         LDA #$01
BD74   8D 91 02      STA $0291
BD77   A2 00         LDX #$00
BD79   4C 2A FF      JMP $FF2A
BD7C   A9 02         LDA #$02
BD7E   85 91         STA $91
BD80   A9 4F         LDA #$4F
BD82   8D 04 02      STA $0204
BD85   A6 91         LDX $91
BD87   BD 06 BD      LDA $BD06,X
BD8A   8D 05 02      STA $0205
BD8D   A9 00         LDA #$00
BD8F   8D 06 02      STA $0206
BD92   A9 E5         LDA #$E5
BD94   8D 07 02      STA $0207
BD97   A9 01         LDA #$01
BD99   85 94         STA $94
BD9B   A6 91         LDX $91
BD9D   BD F8 BD      LDA $BDF8,X
BDA0   85 9A         STA $9A
BDA2   A5 90         LDA $90
BDA4   48            PHA
BDA5   A5 9B         LDA $9B
BDA7   48            PHA
BDA8   A5 8F         LDA $8F
BDAA   48            PHA
BDAB   AD 04 02      LDA $0204
BDAE   85 8F         STA $8F
BDB0   AD 05 02      LDA $0205
BDB3   85 92         STA $92
BDB5   18            CLC
BDB6   65 94         ADC $94
BDB8   38            SEC
BDB9   E9 01         SBC #$01
BDBB   85 93         STA $93
BDBD   8D F0 01      STA $01F0
BDC0   AC 06 02      LDY $0206
BDC3   C8            INY
BDC4   84 90         STY $90
BDC6   AD 07 02      LDA $0207
BDC9   85 9B         STA $9B
BDCB   A5 90         LDA $90
BDCD   85 4D         STA $4D
BDCF   A9 00         LDA #$00
BDD1   85 4E         STA $4E
BDD3   20 88 95      JSR $9588
BDD6   A9 C0         LDA #$C0
BDD8   20 9D 95      JSR $959D
BDDB   A9 F0         LDA #$F0
BDDD   20 9D 95      JSR $959D
BDE0   C9 02         CMP #$02
BDE2   B0 03         BCS $BDE7
BDE4   A9 00         LDA #$00
BDE6   2C A9 06      BIT $06A9
BDE9   20 66 BF      JSR $BF66
BDEC   68            PLA
BDED   85 8F         STA $8F
BDEF   68            PLA
BDF0   85 9B         STA $9B
BDF2   68            PLA
BDF3   85 90         STA $90
BDF5   4C 02 BB      JMP $BB02
BDF8   0E 16 26      ASL $2616
BDFB   44            ???                ;01000100 'D'
BDFC   A9 0E         LDA #$0E
BDFE   20 66 BF      JSR $BF66
BE01   A9 31         LDA #$31
BE03   4C 7C 80      JMP $807C
BE06   20 B2 BC      JSR $BCB2
BE09   A2 00         LDX #$00
BE0B   86 3D         STX $3D
BE0D   A9 C0         LDA #$C0
BE0F   20 F4 DB      JSR $DBF4
BE12   C9 02         CMP #$02
BE14   B0 59         BCS $BE6F
BE16   A5 1F         LDA $1F
BE18   85 8E         STA $8E
BE1A   24 7C         BIT $7C
BE1C   10 0F         BPL $BE2D
BE1E   AD 03 02      LDA $0203
BE21   8D BC 01      STA $01BC
BE24   A9 8C         LDA #$8C
BE26   20 9D 95      JSR $959D
BE29   C9 02         CMP #$02
BE2B   B0 42         BCS $BE6F
BE2D   A5 7C         LDA $7C
BE2F   29 10         AND #$10
BE31   4A            LSR A
BE32   4A            LSR A
BE33   4A            LSR A
BE34   4A            LSR A
BE35   9D CE 01      STA $01CE,X
BE38   A9 9C         LDA #$9C
BE3A   20 9D 95      JSR $959D
BE3D   A9 B0         LDA #$B0
BE3F   20 9D 95      JSR $959D
BE42   C9 02         CMP #$02
BE44   B0 29         BCS $BE6F
BE46   A5 21         LDA $21
BE48   85 3E         STA $3E
BE4A   A2 00         LDX #$00
BE4C   A9 B0         LDA #$B0
BE4E   20 9D 95      JSR $959D
BE51   C9 02         CMP #$02
BE53   B0 1A         BCS $BE6F
BE55   A5 21         LDA $21
BE57   A4 3D         LDY $3D
BE59   99 0B 02      STA $020B,Y
BE5C   E6 3D         INC $3D
BE5E   C0 1F         CPY #$1F
BE60   B0 0B         BCS $BE6D
BE62   C5 3E         CMP $3E
BE64   D0 E4         BNE $BE4A
BE66   A5 3D         LDA $3D
BE68   85 92         STA $92
BE6A   A9 00         LDA #$00
BE6C   2C A9 02      BIT $02A9
BE6F   20 66 BF      JSR $BF66
BE72   C9 02         CMP #$02
BE74   90 03         BCC $BE79
BE76   4C FC BA      JMP $BAFC
BE79   20 97 C0      JSR $C097
BE7C   20 D4 AC      JSR $ACD4
BE7F   AD EF 01      LDA $01EF
BE82   85 94         STA $94
BE84   AD F0 01      LDA $01F0
BE87   85 93         STA $93
BE89   20 AB BF      JSR $BFAB
BE8C   A5 92         LDA $92
BE8E   20 86 BF      JSR $BF86
BE91   A5 1F         LDA $1F
BE93   20 86 BF      JSR $BF86
BE96   AD EF 01      LDA $01EF
BE99   20 86 BF      JSR $BF86
BE9C   AD F0 01      LDA $01F0
BE9F   20 86 BF      JSR $BF86
BEA2   A9 01         LDA #$01
BEA4   20 86 BF      JSR $BF86
BEA7   A9 20         LDA #$20
BEA9   24 7C         BIT $7C
BEAB   F0 0D         BEQ $BEBA
BEAD   A0 00         LDY #$00
BEAF   B9 0B 02      LDA $020B,Y
BEB2   20 86 BF      JSR $BF86
BEB5   C8            INY
BEB6   C4 92         CPY $92
BEB8   D0 F5         BNE $BEAF
BEBA   60            RTS
BEBB   24 7C         BIT $7C
BEBD   10 09         BPL $BEC8
BEBF   20 D4 AC      JSR $ACD4
BEC2   20 AB BF      JSR $BFAB
BEC5   4C BB AC      JMP $ACBB
BEC8   AD 03 02      LDA $0203
BECB   85 80         STA $80
BECD   A9 20         LDA #$20
BECF   24 7C         BIT $7C
BED1   F0 0A         BEQ $BEDD
BED3   AD 04 02      LDA $0204
BED6   85 8A         STA $8A
BED8   AD 05 02      LDA $0205
BEDB   85 89         STA $89
BEDD   24 7C         BIT $7C
BEDF   50 10         BVC $BEF1
BEE1   08            PHP
BEE2   58            CLI
BEE3   A9 80         LDA #$80
BEE5   85 81         STA $81
BEE7   20 69 FF      JSR $FF69
BEEA   20 03 8F      JSR $8F03
BEED   06 81         ASL $81
BEEF   28            PLP
BEF0   60            RTS
BEF1   A9 01         LDA #$01
BEF3   85 25         STA $25
BEF5   4C 69 FF      JMP $FF69
BEF8   A2 0E         LDX #$0E
BEFA   20 66 BF      JSR $BF66
BEFD   A9 31         LDA #$31
BEFF   4C 7C 80      JMP $807C
BF02   AD 02 02      LDA $0202
BF05   A8            TAY
BF06   29 01         AND #$01
BF08   D0 32         BNE $BF3C
BF0A   A2 00         LDX #$00
BF0C   98            TYA
BF0D   10 15         BPL $BF24
BF0F   29 40         AND #$40
BF11   4A            LSR A
BF12   4A            LSR A
BF13   4A            LSR A
BF14   4A            LSR A
BF15   4A            LSR A
BF16   4A            LSR A
BF17   29 01         AND #$01
BF19   85 97         STA $97
BF1B   AD 03 02      LDA $0203
BF1E   85 95         STA $95
BF20   A9 80         LDA #$80
BF22   85 87         STA $87
BF24   A5 87         LDA $87
BF26   10 17         BPL $BF3F
BF28   A9 B6         LDA #$B6
BF2A   20 9D 95      JSR $959D
BF2D   8D FA 01      STA $01FA
BF30   D0 0F         BNE $BF41
BF32   A9 80         LDA #$80
BF34   85 81         STA $81
BF36   20 6C FF      JSR $FF6C
BF39   06 81         ASL $81
BF3B   2C A9 4F      BIT $4FA9
BF3E   2C A9 00      BIT $00A9
BF41   4C FC BA      JMP $BAFC
BF44   CE 06 02      DEC $0206
BF47   A5 29         LDA $29
BF49   C9 07         CMP #$07
BF4B   90 0C         BCC $BF59
BF4D   A2 00         LDX #$00
BF4F   AD 06 02      LDA $0206
BF52   95 0B         STA $0B,X
BF54   A9 A8         LDA #$A8
BF56   4C 9D 95      JMP $959D
BF59   60            RTS
BF5A   20 D4 AC      JSR $ACD4
BF5D   20 AB BF      JSR $BFAB
BF60   20 29 C0      JSR $C029
BF63   4C BB AC      JMP $ACBB
BF66   8D EA 01      STA $01EA
BF69   A6 91         LDX $91
BF6B   A5 80         LDA $80
BF6D   29 80         AND #$80
BF6F   0D EA 01      ORA $01EA
BF72   1D 7F BF      ORA $BF7F,X
BF75   25 89         AND $89
BF77   05 8A         ORA $8A
BF79   85 80         STA $80
BF7B   AD EA 01      LDA $01EA
BF7E   60            RTS
BF7F   00            BRK
BF80   10 20         BPL $BFA2
BF82   30 4C         BMI $BFD0
BF84   15 AD         ORA $AD,X
BF86   48            PHA
BF87   AD 01 40      LDA $4001
BF8A   CD 01 40      CMP $4001
BF8D   D0 F8         BNE $BF87
BF8F   29 FF         AND #$FF
BF91   30 F0         BMI $BF83
BF93   45 76         EOR $76
BF95   29 04         AND #$04
BF97   F0 EE         BEQ $BF87
BF99   68            PLA
BF9A   8D 0C 40      STA $400C
BF9D   A5 76         LDA $76
BF9F   49 04         EOR #$04
BFA1   85 76         STA $76
BFA3   A9 08         LDA #$08
BFA5   2C 0D 40      BIT $400D
BFA8   F0 FB         BEQ $BFA5
BFAA   60            RTS
BFAB   A5 80         LDA $80
BFAD   4C 86 BF      JMP $BF86
BFB0   48            PHA
BFB1   A9 40         LDA #$40
BFB3   8D A8 02      STA $02A8
BFB6   68            PLA
BFB7   08            PHP
BFB8   58            CLI
BFB9   85 28         STA $28
BFBB   20 9D 95      JSR $959D
BFBE   C9 02         CMP #$02
BFC0   90 03         BCC $BFC5
BFC2   20 CE BF      JSR $BFCE
BFC5   A9 00         LDA #$00
BFC7   8D A8 02      STA $02A8
BFCA   B5 02         LDA $02,X
BFCC   28            PLP
BFCD   60            RTS
BFCE   AD A8 02      LDA $02A8
BFD1   09 80         ORA #$80
BFD3   8D A8 02      STA $02A8
BFD6   86 6C         STX $6C
BFD8   A5 28         LDA $28
BFDA   9D 72 02      STA $0272,X
BFDD   20 9D 95      JSR $959D
BFE0   4C ED 94      JMP $94ED
BFE3   A9 A2         LDA #$A2
BFE5   9D 72 02      STA $0272,X
BFE8   A5 95         LDA $95
BFEA   85 4D         STA $4D
BFEC   A5 94         LDA $94
BFEE   85 4E         STA $4E
BFF0   86 6C         STX $6C
BFF2   8A            TXA
BFF3   20 88 95      JSR $9588
BFF6   A6 6C         LDX $6C
BFF8   A5 30         LDA $30
BFFA   29 3F         AND #$3F
BFFC   85 28         STA $28
BFFE   20 1D C0      JSR $C01D
C001   90 15         BCC $C018
C003   20 19 C0      JSR $C019
C006   90 10         BCC $C018
C008   C6 28         DEC $28
C00A   D0 F7         BNE $C003
C00C   24 81         BIT $81
C00E   30 08         BMI $C018
C010   2C A8 02      BIT $02A8
C013   30 03         BMI $C018
C015   4C 2F 95      JMP $952F
C018   60            RTS
C019   A9 80         LDA #$80
C01B   85 87         STA $87
C01D   A5 4D         LDA $4D
C01F   85 95         STA $95
C021   A0 01         LDY #$01
C023   4C 69 95      JMP $9569
C026   20 15 AD      JSR $AD15
C029   AD 01 40      LDA $4001
C02C   CD 01 40      CMP $4001
C02F   D0 F8         BNE $C029
C031   29 FF         AND #$FF
C033   30 F1         BMI $C026
C035   45 76         EOR $76
C037   29 04         AND #$04
C039   F0 EE         BEQ $C029
C03B   45 76         EOR $76
C03D   85 76         STA $76
C03F   60            RTS
C040   38            SEC
C041   AD EF 01      LDA $01EF
C044   F0 03         BEQ $C049
C046   E9 02         SBC #$02
C048   2C E9 01      BIT $01E9
C04B   85 3D         STA $3D
C04D   AD 04 02      LDA $0204
C050   CD F0 01      CMP $01F0
C053   F0 06         BEQ $C05B
C055   18            CLC
C056   69 01         ADC #$01
C058   4C 6E C0      JMP $C06E
C05B   A5 7C         LDA $7C
C05D   A8            TAY
C05E   49 10         EOR #$10
C060   85 7C         STA $7C
C062   98            TYA
C063   29 10         AND #$10
C065   F0 03         BEQ $C06A
C067   EE 03 02      INC $0203
C06A   A5 94         LDA $94
C06C   B0 08         BCS $C076
C06E   90 06         BCC $C076
C070   ED F0 01      SBC $01F0
C073   18            CLC
C074   65 3D         ADC $3D
C076   8D 04 02      STA $0204
C079   60            RTS
C07A   A5 75         LDA $75
C07C   38            SEC
C07D   E9 01         SBC #$01
C07F   85 3D         STA $3D
C081   AD 04 02      LDA $0204
C084   C5 3D         CMP $3D
C086   F0 06         BEQ $C08E
C088   18            CLC
C089   69 01         ADC #$01
C08B   4C 93 C0      JMP $C093
C08E   EE 03 02      INC $0203
C091   A9 00         LDA #$00
C093   8D 04 02      STA $0204
C096   60            RTS
C097   A4 92         LDY $92
C099   88            DEY
C09A   A9 FF         LDA #$FF
C09C   D9 0B 02      CMP $020B,Y
C09F   90 03         BCC $C0A4
C0A1   B9 0B 02      LDA $020B,Y
C0A4   88            DEY
C0A5   10 F5         BPL $C09C
C0A7   8D EF 01      STA $01EF
C0AA   A4 92         LDY $92
C0AC   88            DEY
C0AD   A9 00         LDA #$00
C0AF   D9 0B 02      CMP $020B,Y
C0B2   B0 03         BCS $C0B7
C0B4   B9 0B 02      LDA $020B,Y
C0B7   88            DEY
C0B8   10 F5         BPL $C0AF
C0BA   8D F0 01      STA $01F0
C0BD   60            RTS
C0BE   BA            TSX
C0BF   86 2C         STX $2C
C0C1   A9 80         LDA #$80
C0C3   85 83         STA $83
C0C5   A0 08         LDY #$08
C0C7   B9 02 00      LDA $0002,Y
C0CA   30 12         BMI $C0DE
C0CC   B9 9F 00      LDA $009F,Y
C0CF   29 7F         AND #$7F
C0D1   99 9F 00      STA $009F,Y
C0D4   88            DEY
C0D5   10 F0         BPL $C0C7
C0D7   A4 83         LDY $83
C0D9   10 29         BPL $C104
C0DB   4C 00 CE      JMP $CE00
C0DE   84 83         STY $83
C0E0   AA            TAX
C0E1   98            TYA
C0E2   0A            ASL A
C0E3   85 99         STA $99
C0E5   BD E7 C1      LDA $C1E7,X
C0E8   85 84         STA $84
C0EA   AA            TAX
C0EB   BD 63 C1      LDA $C163,X
C0EE   85 85         STA $85
C0F0   BD 84 C1      LDA $C184,X
C0F3   85 86         STA $86
C0F5   20 3C FF      JSR $FF3C
C0F8   06 85         ASL $85
C0FA   90 03         BCC $C0FF
C0FC   20 51 CF      JSR $CF51
C0FF   A4 83         LDY $83
C101   4C D4 C0      JMP $C0D4
C104   06 85         ASL $85
C106   90 03         BCC $C10B
C108   20 63 CD      JSR $CD63
C10B   06 85         ASL $85
C10D   90 03         BCC $C112
C10F   20 7B CD      JSR $CD7B
C112   06 85         ASL $85
C114   90 03         BCC $C119
C116   20 A6 CF      JSR $CFA6
C119   06 85         ASL $85
C11B   90 14         BCC $C131
C11D   A5 87         LDA $87
C11F   10 10         BPL $C131
C121   A5 95         LDA $95
C123   85 88         STA $88
C125   C5 27         CMP $27
C127   D0 17         BNE $C140
C129   A5 97         LDA $97
C12B   20 C0 CF      JSR $CFC0
C12E   4C 00 C6      JMP $C600
C131   06 85         ASL $85
C133   90 14         BCC $C149
C135   A4 99         LDY $99
C137   B9 BC 01      LDA $01BC,Y
C13A   85 88         STA $88
C13C   C5 27         CMP $27
C13E   F0 09         BEQ $C149
C140   A5 26         LDA $26
C142   09 40         ORA #$40
C144   85 26         STA $26
C146   4C 00 CE      JMP $CE00
C149   06 85         ASL $85
C14B   90 05         BCC $C152
C14D   A5 96         LDA $96
C14F   20 C0 CF      JSR $CFC0
C152   A5 84         LDA $84
C154   0A            ASL A
C155   AA            TAX
C156   BD A5 C1      LDA $C1A5,X
C159   85 48         STA $48
C15B   BD A6 C1      LDA $C1A6,X
C15E   85 49         STA $49
C160   4C AF C5      JMP $C5AF
C163   FF            ???                ;11111111
C164   00            BRK
C165   30 00         BMI $C167
C167   20 00 32      JSR $3200
C16A   30 FF         BMI $C16B
C16C   30 00         BMI $C16E
C16E   00            BRK
C16F   00            BRK
C170   00            BRK
C171   00            BRK
C172   00            BRK
C173   BB            ???                ;10111011
C174   3C            ???                ;00111100 '<'
C175   3B            ???                ;00111011 ';'
C176   3B            ???                ;00111011 ';'
C177   3F            ???                ;00111111 '?'
C178   30 BB         BMI $C135
C17A   30 00         BMI $C17C
C17C   3A            ???                ;00111010 ':'
C17D   B2            ???                ;10110010
C17E   FF            ???                ;11111111
C17F   FF            ???                ;11111111
C180   7F            ???                ;01111111
C181   7F            ???                ;01111111
C182   30 00         BMI $C184
C184   00            BRK
C185   80            ???                ;10000000
C186   80            ???                ;10000000
C187   80            ???                ;10000000
C188   80            ???                ;10000000
C189   80            ???                ;10000000
C18A   80            ???                ;10000000
C18B   00            BRK
C18C   20 80 80      JSR $8080
C18F   80            ???                ;10000000
C190   80            ???                ;10000000
C191   80            ???                ;10000000
C192   80            ???                ;10000000
C193   80            ???                ;10000000
C194   00            BRK
C195   00            BRK
C196   40            RTI
C197   60            RTS
C198   00            BRK
C199   00            BRK
C19A   00            BRK
C19B   00            BRK
C19C   00            BRK
C19D   00            BRK
C19E   00            BRK
C19F   40            RTI
C1A0   60            RTS
C1A1   40            RTI
C1A2   60            RTS
C1A3   80            ???                ;10000000
C1A4   80            ???                ;10000000
C1A5   00            BRK
C1A6   C9 E7         CMP #$E7
C1A8   C2            ???                ;11000010
C1A9   90 C3         BCC $C16E
C1AB   93            ???                ;10010011
C1AC   C3            ???                ;11000011
C1AD   96 C3         STX $C3,Y
C1AF   A9 C3         LDA #$C3
C1B1   AF            ???                ;10101111
C1B2   C3            ???                ;11000011
C1B3   BB            ???                ;10111011
C1B4   C3            ???                ;11000011
C1B5   00            BRK
C1B6   C9 D7         CMP #$D7
C1B8   C6 46         DEC $46
C1BA   C5 4F         CMP $4F
C1BC   C5 58         CMP $58
C1BE   C5 61         CMP $61
C1C0   C5 6A         CMP $6A
C1C2   C5 89         CMP $89
C1C4   C5 E1         CMP $E1
C1C6   C9 AC         CMP #$AC
C1C8   C5 00         CMP $00
C1CA   C8            INY
C1CB   00            BRK
C1CC   C7            ???                ;11000111
C1CD   D7            ???                ;11010111
C1CE   C6 09         DEC $09
C1D0   CB            ???                ;11001011
C1D1   E4 CA         CPX $CA
C1D3   0F            ???                ;00001111
C1D4   CB            ???                ;11001011
C1D5   26 CB         ROL $CB
C1D7   26 CB         ROL $CB
C1D9   35 CB         AND $CB,X
C1DB   00            BRK
C1DC   C9 00         CMP #$00
C1DE   C9 00         CMP #$00
C1E0   C9 00         CMP #$00
C1E2   C9 76         CMP #$76
C1E4   CB            ???                ;11001011
C1E5   85 CB         STA $CB
C1E7   20 20 20      JSR $2020
C1EA   20 20 20      JSR $2020
C1ED   20 20 20      JSR $2020
C1F0   20 20 20      JSR $2020
C1F3   20 20 20      JSR $2020
C1F6   20 20 20      JSR $2020
C1F9   20 20 20      JSR $2020
C1FC   20 20 20      JSR $2020
C1FF   20 20 20      JSR $2020
C202   20 20 20      JSR $2020
C205   20 20 20      JSR $2020
C208   20 20 20      JSR $2020
C20B   20 20 20      JSR $2020
C20E   20 20 20      JSR $2020
C211   20 20 20      JSR $2020
C214   20 20 20      JSR $2020
C217   20 20 20      JSR $2020
C21A   20 20 20      JSR $2020
C21D   20 20 20      JSR $2020
C220   20 20 20      JSR $2020
C223   20 20 20      JSR $2020
C226   20 20 20      JSR $2020
C229   20 20 20      JSR $2020
C22C   20 20 20      JSR $2020
C22F   20 20 20      JSR $2020
C232   20 20 20      JSR $2020
C235   20 20 20      JSR $2020
C238   20 20 20      JSR $2020
C23B   20 20 20      JSR $2020
C23E   20 20 20      JSR $2020
C241   20 20 20      JSR $2020
C244   20 20 20      JSR $2020
C247   20 20 20      JSR $2020
C24A   20 20 20      JSR $2020
C24D   20 20 20      JSR $2020
C250   20 20 20      JSR $2020
C253   20 20 20      JSR $2020
C256   20 20 20      JSR $2020
C259   20 20 20      JSR $2020
C25C   20 20 20      JSR $2020
C25F   20 20 20      JSR $2020
C262   20 20 20      JSR $2020
C265   20 20 00      JSR $0020
C268   20 01 20      JSR $2001
C26B   02            ???                ;00000010
C26C   20 03 20      JSR $2003
C26F   04            ???                ;00000100
C270   20 05 20      JSR $2005
C273   06 20         ASL $20
C275   07            ???                ;00000111
C276   20 08 20      JSR $2008
C279   09 20         ORA #$20
C27B   0A            ASL A
C27C   20 0B 20      JSR $200B
C27F   0C            ???                ;00001100
C280   20 0D 20      JSR $200D
C283   0E 20 0F      ASL $0F20
C286   20 10 20      JSR $2010
C289   11 20         ORA ($20),Y
C28B   12            ???                ;00010010
C28C   20 13 20      JSR $2013
C28F   14            ???                ;00010100
C290   20 1B 20      JSR $201B
C293   1C            ???                ;00011100
C294   20 20 20      JSR $2020
C297   15 20         ORA $20,X
C299   1D 20 1E      ORA $1E20,X
C29C   20 1F 20      JSR $201F
C29F   16 20         ASL $20,X
C2A1   20 20 20      JSR $2020
C2A4   20 20 20      JSR $2020
C2A7   17            ???                ;00010111
C2A8   20 20 20      JSR $2020
C2AB   20 20 20      JSR $2020
C2AE   20 20 20      JSR $2020
C2B1   20 20 20      JSR $2020
C2B4   20 20 20      JSR $2020
C2B7   18            CLC
C2B8   20 20 20      JSR $2020
C2BB   20 20 20      JSR $2020
C2BE   20 20 20      JSR $2020
C2C1   20 20 20      JSR $2020
C2C4   20 20 20      JSR $2020
C2C7   19 20 20      ORA $2020,Y
C2CA   20 20 20      JSR $2020
C2CD   20 20 20      JSR $2020
C2D0   20 20 20      JSR $2020
C2D3   20 20 20      JSR $2020
C2D6   20 1A 20      JSR $201A
C2D9   20 20 20      JSR $2020
C2DC   20 20 20      JSR $2020
C2DF   20 20 20      JSR $2020
C2E2   20 20 20      JSR $2020
C2E5   20 20 A0      JSR $A020
C2E8   FF            ???                ;11111111
C2E9   20 D5 CB      JSR $CBD5
C2EC   A0 FF         LDY #$FF
C2EE   20 D5 CB      JSR $CBD5
C2F1   A9 80         LDA #$80
C2F3   85 95         STA $95
C2F5   A9 00         LDA #$00
C2F7   85 87         STA $87
C2F9   20 CF B0      JSR $B0CF
C2FC   20 B3 B0      JSR $B0B3
C2FF   A9 4E         LDA #$4E
C301   8D D7 01      STA $01D7
C304   A9 20         LDA #$20
C306   8D D8 01      STA $01D8
C309   20 9F CB      JSR $CB9F
C30C   A9 08         LDA #$08
C30E   8D DA 01      STA $01DA
C311   A9 18         LDA #$18
C313   8D DB 01      STA $01DB
C316   A9 28         LDA #$28
C318   8D DC 01      STA $01DC
C31B   A9 48         LDA #$48
C31D   8D DD 01      STA $01DD
C320   A9 68         LDA #$68
C322   8D DE 01      STA $01DE
C325   A9 88         LDA #$88
C327   8D DF 01      STA $01DF
C32A   A9 AA         LDA #$AA
C32C   8D E0 01      STA $01E0
C32F   A9 C8         LDA #$C8
C331   8D E1 01      STA $01E1
C334   A9 E8         LDA #$E8
C336   8D E2 01      STA $01E2
C339   A9 FA         LDA #$FA
C33B   8D E3 01      STA $01E3
C33E   A9 D0         LDA #$D0
C340   8D E4 01      STA $01E4
C343   A9 12         LDA #$12
C345   85 98         STA $98
C347   A0 FF         LDY #$FF
C349   8C 01 60      STY $6001
C34C   8C 02 60      STY $6002
C34F   8C 03 60      STY $6003
C352   20 34 AD      JSR $AD34
C355   CC 01 60      CPY $6001
C358   D0 2E         BNE $C388
C35A   CC 02 60      CPY $6002
C35D   D0 29         BNE $C388
C35F   CC 03 60      CPY $6003
C362   D0 24         BNE $C388
C364   88            DEY
C365   D0 E2         BNE $C349
C367   20 D1 CF      JSR $CFD1
C36A   A9 00         LDA #$00
C36C   8D 08 40      STA $4008
C36F   20 2F AD      JSR $AD2F
C372   AD 08 40      LDA $4008
C375   D0 0F         BNE $C386
C377   EE DA 01      INC $01DA
C37A   EE DB 01      INC $01DB
C37D   EE DC 01      INC $01DC
C380   EE DD 01      INC $01DD
C383   EE DE 01      INC $01DE
C386   D0 03         BNE $C38B
C388   A9 0D         LDA #$0D
C38A   2C A9 00      BIT $00A9
C38D   4C CC CD      JMP $CDCC
C390   4C 99 C3      JMP $C399
C393   4C 8B C3      JMP $C38B
C396   20 B1 CB      JSR $CBB1
C399   A9 00         LDA #$00
C39B   A4 83         LDY $83
C39D   99 02 00      STA $0002,Y
C3A0   A9 80         LDA #$80
C3A2   85 83         STA $83
C3A4   A0 08         LDY #$08
C3A6   4C FA CD      JMP $CDFA
C3A9   20 BA CB      JSR $CBBA
C3AC   4C 99 C3      JMP $C399
C3AF   A5 88         LDA $88
C3B1   C5 27         CMP $27
C3B3   F0 03         BEQ $C3B8
C3B5   4C 00 CE      JMP $CE00
C3B8   4C 8B C3      JMP $C38B
C3BB   20 B7 CF      JSR $CFB7
C3BE   20 D6 C3      JSR $C3D6
C3C1   B0 0E         BCS $C3D1
C3C3   20 3F CD      JSR $CD3F
C3C6   D0 0B         BNE $C3D3
C3C8   20 B7 CF      JSR $CFB7
C3CB   20 00 CA      JSR $CA00
C3CE   A9 01         LDA #$01
C3D0   2C A9 06      BIT $06A9
C3D3   4C CC CD      JMP $CDCC
C3D6   A5 88         LDA $88
C3D8   8D 01 60      STA $6001
C3DB   20 E3 CF      JSR $CFE3
C3DE   A5 94         LDA $94
C3E0   85 39         STA $39
C3E2   A5 92         LDA $92
C3E4   85 3A         STA $3A
C3E6   AD E3 01      LDA $01E3
C3E9   20 F4 CB      JSR $CBF4
C3EC   A2 20         LDX #$20
C3EE   AD 00 60      LDA $6000
C3F1   29 03         AND #$03
C3F3   4A            LSR A
C3F4   90 26         BCC $C41C
C3F6   F0 F6         BEQ $C3EE
C3F8   A9 4E         LDA #$4E
C3FA   8D 03 60      STA $6003
C3FD   CA            DEX
C3FE   D0 EE         BNE $C3EE
C400   A2 0C         LDX #$0C
C402   AD 00 60      LDA $6000
C405   29 03         AND #$03
C407   4A            LSR A
C408   90 12         BCC $C41C
C40A   F0 F6         BEQ $C402
C40C   A9 00         LDA #$00
C40E   8D 03 60      STA $6003
C411   CA            DEX
C412   D0 EE         BNE $C402
C414   A2 03         LDX #$03
C416   AD 00 60      LDA $6000
C419   29 03         AND #$03
C41B   4A            LSR A
C41C   90 51         BCC $C46F
C41E   F0 F6         BEQ $C416
C420   A9 F5         LDA #$F5
C422   8D 03 60      STA $6003
C425   CA            DEX
C426   D0 EE         BNE $C416
C428   EA            NOP
C429   AD 00 60      LDA $6000
C42C   29 03         AND #$03
C42E   4A            LSR A
C42F   90 3E         BCC $C46F
C431   F0 F6         BEQ $C429
C433   A9 FE         LDA #$FE
C435   8D 03 60      STA $6003
C438   EA            NOP
C439   AD 00 60      LDA $6000
C43C   29 03         AND #$03
C43E   4A            LSR A
C43F   90 2E         BCC $C46F
C441   F0 F6         BEQ $C439
C443   AD 01 60      LDA $6001
C446   8D 03 60      STA $6003
C449   AD 00 60      LDA $6000
C44C   29 03         AND #$03
C44E   4A            LSR A
C44F   90 1E         BCC $C46F
C451   F0 F6         BEQ $C449
C453   A5 96         LDA $96
C455   8D 03 60      STA $6003
C458   EA            NOP
C459   AD 00 60      LDA $6000
C45C   29 03         AND #$03
C45E   4A            LSR A
C45F   90 0E         BCC $C46F
C461   F0 F6         BEQ $C459
C463   A5 39         LDA $39
C465   8D 03 60      STA $6003
C468   EA            NOP
C469   AD 00 60      LDA $6000
C46C   29 03         AND #$03
C46E   4A            LSR A
C46F   90 33         BCC $C4A4
C471   F0 F6         BEQ $C469
C473   A5 91         LDA $91
C475   8D 03 60      STA $6003
C478   EA            NOP
C479   AD 00 60      LDA $6000
C47C   29 03         AND #$03
C47E   4A            LSR A
C47F   90 23         BCC $C4A4
C481   F0 F6         BEQ $C479
C483   A9 F7         LDA #$F7
C485   8D 03 60      STA $6003
C488   A2 16         LDX #$16
C48A   AD 00 60      LDA $6000
C48D   29 03         AND #$03
C48F   4A            LSR A
C490   90 12         BCC $C4A4
C492   F0 F6         BEQ $C48A
C494   A9 4E         LDA #$4E
C496   8D 03 60      STA $6003
C499   CA            DEX
C49A   D0 EE         BNE $C48A
C49C   A2 0C         LDX #$0C
C49E   AD 00 60      LDA $6000
C4A1   29 03         AND #$03
C4A3   4A            LSR A
C4A4   90 3B         BCC $C4E1
C4A6   F0 F6         BEQ $C49E
C4A8   A9 00         LDA #$00
C4AA   8D 03 60      STA $6003
C4AD   CA            DEX
C4AE   D0 EE         BNE $C49E
C4B0   A2 03         LDX #$03
C4B2   AD 00 60      LDA $6000
C4B5   29 03         AND #$03
C4B7   4A            LSR A
C4B8   90 27         BCC $C4E1
C4BA   F0 F6         BEQ $C4B2
C4BC   A9 F5         LDA #$F5
C4BE   8D 03 60      STA $6003
C4C1   CA            DEX
C4C2   D0 EE         BNE $C4B2
C4C4   EA            NOP
C4C5   AD 00 60      LDA $6000
C4C8   29 03         AND #$03
C4CA   4A            LSR A
C4CB   90 14         BCC $C4E1
C4CD   F0 F6         BEQ $C4C5
C4CF   A9 FB         LDA #$FB
C4D1   8D 03 60      STA $6003
C4D4   A4 91         LDY $91
C4D6   C0 03         CPY #$03
C4D8   D0 01         BNE $C4DB
C4DA   C8            INY
C4DB   AD 00 60      LDA $6000
C4DE   29 03         AND #$03
C4E0   4A            LSR A
C4E1   90 61         BCC $C544
C4E3   F0 F6         BEQ $C4DB
C4E5   A5 9B         LDA $9B
C4E7   C9 F5         CMP #$F5
C4E9   D0 08         BNE $C4F3
C4EB   84 82         STY $82
C4ED   A0 00         LDY #$00
C4EF   B1 4A         LDA ($4A),Y
C4F1   A4 82         LDY $82
C4F3   8D 03 60      STA $6003
C4F6   E6 4A         INC $4A
C4F8   D0 E1         BNE $C4DB
C4FA   E6 4B         INC $4B
C4FC   88            DEY
C4FD   D0 DC         BNE $C4DB
C4FF   AD 00 60      LDA $6000
C502   29 03         AND #$03
C504   4A            LSR A
C505   90 3D         BCC $C544
C507   F0 F6         BEQ $C4FF
C509   A9 F7         LDA #$F7
C50B   8D 03 60      STA $6003
C50E   A6 9A         LDX $9A
C510   EA            NOP
C511   AD 00 60      LDA $6000
C514   29 03         AND #$03
C516   4A            LSR A
C517   90 2B         BCC $C544
C519   F0 F6         BEQ $C511
C51B   A9 4E         LDA #$4E
C51D   8D 03 60      STA $6003
C520   CA            DEX
C521   D0 EE         BNE $C511
C523   C6 3A         DEC $3A
C525   F0 06         BEQ $C52D
C527   E6 39         INC $39
C529   4C 00 C4      JMP $C400
C52C   EA            NOP
C52D   AD 00 60      LDA $6000
C530   29 03         AND #$03
C532   4A            LSR A
C533   90 0A         BCC $C53F
C535   F0 F6         BEQ $C52D
C537   18            CLC
C538   A9 4E         LDA #$4E
C53A   8D 03 60      STA $6003
C53D   D0 EE         BNE $C52D
C53F   20 EC CB      JSR $CBEC
C542   18            CLC
C543   24 38         BIT $38
C545   60            RTS
C546   A5 79         LDA $79
C548   09 40         ORA #$40
C54A   85 79         STA $79
C54C   4C 99 C3      JMP $C399
C54F   A5 79         LDA $79
C551   29 BF         AND #$BF
C553   85 79         STA $79
C555   4C 99 C3      JMP $C399
C558   A5 79         LDA $79
C55A   09 20         ORA #$20
C55C   85 79         STA $79
C55E   4C 99 C3      JMP $C399
C561   A5 79         LDA $79
C563   29 DF         AND #$DF
C565   85 79         STA $79
C567   4C 99 C3      JMP $C399
C56A   A4 83         LDY $83
C56C   B9 CE 01      LDA $01CE,Y
C56F   29 01         AND #$01
C571   85 97         STA $97
C573   D0 03         BNE $C578
C575   A9 00         LDA #$00
C577   2C A9 01      BIT $01A9
C57A   85 36         STA $36
C57C   AD 00 40      LDA $4000
C57F   29 FE         AND #$FE
C581   05 36         ORA $36
C583   8D 00 40      STA $4000
C586   4C 99 C3      JMP $C399
C589   A4 99         LDY $99
C58B   B9 0C 00      LDA $000C,Y
C58E   85 39         STA $39
C590   24 39         BIT $39
C592   10 12         BPL $C5A6
C594   B9 BC 01      LDA $01BC,Y
C597   85 95         STA $95
C599   A4 83         LDY $83
C59B   B9 CE 01      LDA $01CE,Y
C59E   85 97         STA $97
C5A0   20 A4 CE      JSR $CEA4
C5A3   4C 8B C3      JMP $C38B
C5A6   20 AF CE      JSR $CEAF
C5A9   4C 8B C3      JMP $C38B
C5AC   4C 8B C3      JMP $C38B
C5AF   78            SEI
C5B0   6C 48 00      JMP ($0048)
C5B3   FF            ???                ;11111111
C5B4   FF            ???                ;11111111
C5B5   FF            ???                ;11111111
C5B6   FF            ???                ;11111111
C5B7   FF            ???                ;11111111
C5B8   FF            ???                ;11111111
C5B9   FF            ???                ;11111111
C5BA   FF            ???                ;11111111
C5BB   FF            ???                ;11111111
C5BC   FF            ???                ;11111111
C5BD   FF            ???                ;11111111
C5BE   FF            ???                ;11111111
C5BF   FF            ???                ;11111111
C5C0   FF            ???                ;11111111
C5C1   FF            ???                ;11111111
C5C2   FF            ???                ;11111111
C5C3   FF            ???                ;11111111
C5C4   FF            ???                ;11111111
C5C5   FF            ???                ;11111111
C5C6   FF            ???                ;11111111
C5C7   FF            ???                ;11111111
C5C8   FF            ???                ;11111111
C5C9   FF            ???                ;11111111
C5CA   FF            ???                ;11111111
C5CB   FF            ???                ;11111111
C5CC   FF            ???                ;11111111
C5CD   FF            ???                ;11111111
C5CE   FF            ???                ;11111111
C5CF   FF            ???                ;11111111
C5D0   FF            ???                ;11111111
C5D1   FF            ???                ;11111111
C5D2   FF            ???                ;11111111
C5D3   FF            ???                ;11111111
C5D4   FF            ???                ;11111111
C5D5   FF            ???                ;11111111
C5D6   FF            ???                ;11111111
C5D7   FF            ???                ;11111111
C5D8   FF            ???                ;11111111
C5D9   FF            ???                ;11111111
C5DA   FF            ???                ;11111111
C5DB   FF            ???                ;11111111
C5DC   FF            ???                ;11111111
C5DD   FF            ???                ;11111111
C5DE   FF            ???                ;11111111
C5DF   FF            ???                ;11111111
C5E0   FF            ???                ;11111111
C5E1   FF            ???                ;11111111
C5E2   FF            ???                ;11111111
C5E3   FF            ???                ;11111111
C5E4   FF            ???                ;11111111
C5E5   FF            ???                ;11111111
C5E6   FF            ???                ;11111111
C5E7   FF            ???                ;11111111
C5E8   FF            ???                ;11111111
C5E9   FF            ???                ;11111111
C5EA   FF            ???                ;11111111
C5EB   FF            ???                ;11111111
C5EC   FF            ???                ;11111111
C5ED   FF            ???                ;11111111
C5EE   FF            ???                ;11111111
C5EF   FF            ???                ;11111111
C5F0   FF            ???                ;11111111
C5F1   FF            ???                ;11111111
C5F2   FF            ???                ;11111111
C5F3   FF            ???                ;11111111
C5F4   FF            ???                ;11111111
C5F5   FF            ???                ;11111111
C5F6   FF            ???                ;11111111
C5F7   FF            ???                ;11111111
C5F8   FF            ???                ;11111111
C5F9   FF            ???                ;11111111
C5FA   FF            ???                ;11111111
C5FB   FF            ???                ;11111111
C5FC   FF            ???                ;11111111
C5FD   FF            ???                ;11111111
C5FE   FF            ???                ;11111111
C5FF   FF            ???                ;11111111
C600   20 A6 CF      JSR $CFA6
C603   A5 95         LDA $95
C605   C5 1F         CMP $1F
C607   F0 03         BEQ $C60C
C609   4C 88 CB      JMP $CB88
C60C   8D 01 60      STA $6001
C60F   20 E3 CF      JSR $CFE3
C612   20 B7 CF      JSR $CFB7
C615   A5 92         LDA $92
C617   85 3A         STA $3A
C619   A5 21         LDA $21
C61B   AA            TAX
C61C   C5 93         CMP $93
C61E   08            PHP
C61F   D0 06         BNE $C627
C621   A5 94         LDA $94
C623   AA            TAX
C624   38            SEC
C625   E9 01         SBC #$01
C627   38            SEC
C628   E5 94         SBC $94
C62A   18            CLC
C62B   69 01         ADC #$01
C62D   A4 91         LDY $91
C62F   88            DEY
C630   F0 03         BEQ $C635
C632   0A            ASL A
C633   90 FA         BCC $C62F
C635   20 8D CB      JSR $CB8D
C638   8A            TXA
C639   28            PLP
C63A   F0 05         BEQ $C641
C63C   18            CLC
C63D   69 01         ADC #$01
C63F   D0 02         BNE $C643
C641   A5 94         LDA $94
C643   8D 02 60      STA $6002
C646   EA            NOP
C647   EA            NOP
C648   EA            NOP
C649   EA            NOP
C64A   EA            NOP
C64B   EA            NOP
C64C   EA            NOP
C64D   EA            NOP
C64E   EA            NOP
C64F   EA            NOP
C650   EA            NOP
C651   EA            NOP
C652   EA            NOP
C653   EA            NOP
C654   EA            NOP
C655   EA            NOP
C656   EA            NOP
C657   EA            NOP
C658   EA            NOP
C659   EA            NOP
C65A   AD E0 01      LDA $01E0
C65D   20 F4 CB      JSR $CBF4
C660   A4 91         LDY $91
C662   C0 03         CPY #$03
C664   D0 01         BNE $C667
C666   C8            INY
C667   AD 00 60      LDA $6000
C66A   29 03         AND #$03
C66C   4A            LSR A
C66D   90 5D         BCC $C6CC
C66F   F0 F6         BEQ $C667
C671   84 82         STY $82
C673   A0 00         LDY #$00
C675   B1 4A         LDA ($4A),Y
C677   8D 03 60      STA $6003
C67A   A4 82         LDY $82
C67C   E6 4A         INC $4A
C67E   D0 E7         BNE $C667
C680   E6 4B         INC $4B
C682   88            DEY
C683   D0 E2         BNE $C667
C685   20 3F CD      JSR $CD3F
C688   D0 42         BNE $C6CC
C68A   C6 3A         DEC $3A
C68C   F0 3E         BEQ $C6CC
C68E   AD 02 60      LDA $6002
C691   EE 02 60      INC $6002
C694   EA            NOP
C695   EA            NOP
C696   EA            NOP
C697   EA            NOP
C698   EA            NOP
C699   EA            NOP
C69A   EA            NOP
C69B   EA            NOP
C69C   EA            NOP
C69D   EA            NOP
C69E   EA            NOP
C69F   EA            NOP
C6A0   EA            NOP
C6A1   EA            NOP
C6A2   EA            NOP
C6A3   EA            NOP
C6A4   EA            NOP
C6A5   EA            NOP
C6A6   EA            NOP
C6A7   EA            NOP
C6A8   C5 93         CMP $93
C6AA   D0 AE         BNE $C65A
C6AC   A5 8C         LDA $8C
C6AE   85 4B         STA $4B
C6B0   A5 94         LDA $94
C6B2   8D 02 60      STA $6002
C6B5   EA            NOP
C6B6   EA            NOP
C6B7   EA            NOP
C6B8   EA            NOP
C6B9   EA            NOP
C6BA   EA            NOP
C6BB   EA            NOP
C6BC   EA            NOP
C6BD   EA            NOP
C6BE   EA            NOP
C6BF   EA            NOP
C6C0   EA            NOP
C6C1   EA            NOP
C6C2   EA            NOP
C6C3   EA            NOP
C6C4   EA            NOP
C6C5   EA            NOP
C6C6   EA            NOP
C6C7   EA            NOP
C6C8   EA            NOP
C6C9   4C 5A C6      JMP $C65A
C6CC   20 3F CD      JSR $CD3F
C6CF   F0 03         BEQ $C6D4
C6D1   4C CC CD      JMP $CDCC
C6D4   4C E1 C9      JMP $C9E1
C6D7   20 A6 CF      JSR $CFA6
C6DA   4C 8B C3      JMP $C38B
C6DD   FF            ???                ;11111111
C6DE   FF            ???                ;11111111
C6DF   FF            ???                ;11111111
C6E0   FF            ???                ;11111111
C6E1   FF            ???                ;11111111
C6E2   FF            ???                ;11111111
C6E3   FF            ???                ;11111111
C6E4   FF            ???                ;11111111
C6E5   FF            ???                ;11111111
C6E6   FF            ???                ;11111111
C6E7   FF            ???                ;11111111
C6E8   FF            ???                ;11111111
C6E9   FF            ???                ;11111111
C6EA   FF            ???                ;11111111
C6EB   FF            ???                ;11111111
C6EC   FF            ???                ;11111111
C6ED   FF            ???                ;11111111
C6EE   FF            ???                ;11111111
C6EF   FF            ???                ;11111111
C6F0   FF            ???                ;11111111
C6F1   FF            ???                ;11111111
C6F2   FF            ???                ;11111111
C6F3   FF            ???                ;11111111
C6F4   FF            ???                ;11111111
C6F5   FF            ???                ;11111111
C6F6   FF            ???                ;11111111
C6F7   FF            ???                ;11111111
C6F8   FF            ???                ;11111111
C6F9   FF            ???                ;11111111
C6FA   FF            ???                ;11111111
C6FB   FF            ???                ;11111111
C6FC   FF            ???                ;11111111
C6FD   FF            ???                ;11111111
C6FE   FF            ???                ;11111111
C6FF   FF            ???                ;11111111
C700   20 A6 CF      JSR $CFA6
C703   A5 88         LDA $88
C705   C5 1F         CMP $1F
C707   F0 03         BEQ $C70C
C709   4C 88 CB      JMP $CB88
C70C   A6 83         LDX $83
C70E   B5 0B         LDA $0B,X
C710   8D 01 60      STA $6001
C713   B5 0C         LDA $0C,X
C715   8D 02 60      STA $6002
C718   A9 00         LDA #$00
C71A   85 4A         STA $4A
C71C   A9 03         LDA #$03
C71E   85 4B         STA $4B
C720   EA            NOP
C721   EA            NOP
C722   EA            NOP
C723   EA            NOP
C724   EA            NOP
C725   EA            NOP
C726   EA            NOP
C727   EA            NOP
C728   EA            NOP
C729   EA            NOP
C72A   EA            NOP
C72B   EA            NOP
C72C   EA            NOP
C72D   EA            NOP
C72E   EA            NOP
C72F   EA            NOP
C730   EA            NOP
C731   EA            NOP
C732   EA            NOP
C733   AD E0 01      LDA $01E0
C736   20 F4 CB      JSR $CBF4
C739   A4 91         LDY $91
C73B   C0 03         CPY #$03
C73D   D0 02         BNE $C741
C73F   C8            INY
C740   EA            NOP
C741   AD 00 60      LDA $6000
C744   29 03         AND #$03
C746   4A            LSR A
C747   90 16         BCC $C75F
C749   F0 F6         BEQ $C741
C74B   84 82         STY $82
C74D   A0 00         LDY #$00
C74F   B1 4A         LDA ($4A),Y
C751   8D 03 60      STA $6003
C754   A4 82         LDY $82
C756   E6 4A         INC $4A
C758   D0 E7         BNE $C741
C75A   E6 4B         INC $4B
C75C   88            DEY
C75D   D0 E2         BNE $C741
C75F   20 3F CD      JSR $CD3F
C762   4C CC CD      JMP $CDCC
C765   FF            ???                ;11111111
C766   FF            ???                ;11111111
C767   FF            ???                ;11111111
C768   FF            ???                ;11111111
C769   FF            ???                ;11111111
C76A   FF            ???                ;11111111
C76B   FF            ???                ;11111111
C76C   FF            ???                ;11111111
C76D   FF            ???                ;11111111
C76E   FF            ???                ;11111111
C76F   FF            ???                ;11111111
C770   FF            ???                ;11111111
C771   FF            ???                ;11111111
C772   FF            ???                ;11111111
C773   FF            ???                ;11111111
C774   FF            ???                ;11111111
C775   FF            ???                ;11111111
C776   FF            ???                ;11111111
C777   FF            ???                ;11111111
C778   FF            ???                ;11111111
C779   FF            ???                ;11111111
C77A   FF            ???                ;11111111
C77B   FF            ???                ;11111111
C77C   FF            ???                ;11111111
C77D   FF            ???                ;11111111
C77E   FF            ???                ;11111111
C77F   FF            ???                ;11111111
C780   FF            ???                ;11111111
C781   FF            ???                ;11111111
C782   FF            ???                ;11111111
C783   FF            ???                ;11111111
C784   FF            ???                ;11111111
C785   FF            ???                ;11111111
C786   FF            ???                ;11111111
C787   FF            ???                ;11111111
C788   FF            ???                ;11111111
C789   FF            ???                ;11111111
C78A   FF            ???                ;11111111
C78B   FF            ???                ;11111111
C78C   FF            ???                ;11111111
C78D   FF            ???                ;11111111
C78E   FF            ???                ;11111111
C78F   FF            ???                ;11111111
C790   FF            ???                ;11111111
C791   FF            ???                ;11111111
C792   FF            ???                ;11111111
C793   FF            ???                ;11111111
C794   FF            ???                ;11111111
C795   FF            ???                ;11111111
C796   FF            ???                ;11111111
C797   FF            ???                ;11111111
C798   FF            ???                ;11111111
C799   FF            ???                ;11111111
C79A   FF            ???                ;11111111
C79B   FF            ???                ;11111111
C79C   FF            ???                ;11111111
C79D   FF            ???                ;11111111
C79E   FF            ???                ;11111111
C79F   FF            ???                ;11111111
C7A0   FF            ???                ;11111111
C7A1   FF            ???                ;11111111
C7A2   FF            ???                ;11111111
C7A3   FF            ???                ;11111111
C7A4   FF            ???                ;11111111
C7A5   FF            ???                ;11111111
C7A6   FF            ???                ;11111111
C7A7   FF            ???                ;11111111
C7A8   FF            ???                ;11111111
C7A9   FF            ???                ;11111111
C7AA   FF            ???                ;11111111
C7AB   FF            ???                ;11111111
C7AC   FF            ???                ;11111111
C7AD   FF            ???                ;11111111
C7AE   FF            ???                ;11111111
C7AF   FF            ???                ;11111111
C7B0   FF            ???                ;11111111
C7B1   FF            ???                ;11111111
C7B2   FF            ???                ;11111111
C7B3   FF            ???                ;11111111
C7B4   FF            ???                ;11111111
C7B5   FF            ???                ;11111111
C7B6   FF            ???                ;11111111
C7B7   FF            ???                ;11111111
C7B8   FF            ???                ;11111111
C7B9   FF            ???                ;11111111
C7BA   FF            ???                ;11111111
C7BB   FF            ???                ;11111111
C7BC   FF            ???                ;11111111
C7BD   FF            ???                ;11111111
C7BE   FF            ???                ;11111111
C7BF   FF            ???                ;11111111
C7C0   FF            ???                ;11111111
C7C1   FF            ???                ;11111111
C7C2   FF            ???                ;11111111
C7C3   FF            ???                ;11111111
C7C4   FF            ???                ;11111111
C7C5   FF            ???                ;11111111
C7C6   FF            ???                ;11111111
C7C7   FF            ???                ;11111111
C7C8   FF            ???                ;11111111
C7C9   FF            ???                ;11111111
C7CA   FF            ???                ;11111111
C7CB   FF            ???                ;11111111
C7CC   FF            ???                ;11111111
C7CD   FF            ???                ;11111111
C7CE   FF            ???                ;11111111
C7CF   FF            ???                ;11111111
C7D0   FF            ???                ;11111111
C7D1   FF            ???                ;11111111
C7D2   FF            ???                ;11111111
C7D3   FF            ???                ;11111111
C7D4   FF            ???                ;11111111
C7D5   FF            ???                ;11111111
C7D6   FF            ???                ;11111111
C7D7   FF            ???                ;11111111
C7D8   FF            ???                ;11111111
C7D9   FF            ???                ;11111111
C7DA   FF            ???                ;11111111
C7DB   FF            ???                ;11111111
C7DC   FF            ???                ;11111111
C7DD   FF            ???                ;11111111
C7DE   FF            ???                ;11111111
C7DF   FF            ???                ;11111111
C7E0   FF            ???                ;11111111
C7E1   FF            ???                ;11111111
C7E2   FF            ???                ;11111111
C7E3   FF            ???                ;11111111
C7E4   FF            ???                ;11111111
C7E5   FF            ???                ;11111111
C7E6   FF            ???                ;11111111
C7E7   FF            ???                ;11111111
C7E8   FF            ???                ;11111111
C7E9   FF            ???                ;11111111
C7EA   FF            ???                ;11111111
C7EB   FF            ???                ;11111111
C7EC   FF            ???                ;11111111
C7ED   FF            ???                ;11111111
C7EE   FF            ???                ;11111111
C7EF   FF            ???                ;11111111
C7F0   FF            ???                ;11111111
C7F1   FF            ???                ;11111111
C7F2   FF            ???                ;11111111
C7F3   FF            ???                ;11111111
C7F4   FF            ???                ;11111111
C7F5   FF            ???                ;11111111
C7F6   FF            ???                ;11111111
C7F7   FF            ???                ;11111111
C7F8   FF            ???                ;11111111
C7F9   FF            ???                ;11111111
C7FA   FF            ???                ;11111111
C7FB   FF            ???                ;11111111
C7FC   FF            ???                ;11111111
C7FD   FF            ???                ;11111111
C7FE   FF            ???                ;11111111
C7FF   FF            ???                ;11111111
C800   20 A6 CF      JSR $CFA6
C803   A5 88         LDA $88
C805   C5 1F         CMP $1F
C807   F0 03         BEQ $C80C
C809   4C 88 CB      JMP $CB88
C80C   A6 83         LDX $83
C80E   B5 0B         LDA $0B,X
C810   8D 01 60      STA $6001
C813   B5 0C         LDA $0C,X
C815   8D 02 60      STA $6002
C818   A9 00         LDA #$00
C81A   85 4A         STA $4A
C81C   A9 03         LDA #$03
C81E   85 4B         STA $4B
C820   EA            NOP
C821   EA            NOP
C822   EA            NOP
C823   EA            NOP
C824   EA            NOP
C825   EA            NOP
C826   EA            NOP
C827   EA            NOP
C828   EA            NOP
C829   EA            NOP
C82A   EA            NOP
C82B   EA            NOP
C82C   EA            NOP
C82D   EA            NOP
C82E   EA            NOP
C82F   EA            NOP
C830   EA            NOP
C831   EA            NOP
C832   EA            NOP
C833   AD DF 01      LDA $01DF
C836   20 F4 CB      JSR $CBF4
C839   A4 91         LDY $91
C83B   C0 03         CPY #$03
C83D   D0 02         BNE $C841
C83F   C8            INY
C840   EA            NOP
C841   AD 00 60      LDA $6000
C844   29 03         AND #$03
C846   4A            LSR A
C847   90 16         BCC $C85F
C849   F0 F6         BEQ $C841
C84B   84 82         STY $82
C84D   A0 00         LDY #$00
C84F   AD 03 60      LDA $6003
C852   91 4A         STA ($4A),Y
C854   A4 82         LDY $82
C856   E6 4A         INC $4A
C858   D0 E7         BNE $C841
C85A   E6 4B         INC $4B
C85C   88            DEY
C85D   D0 E2         BNE $C841
C85F   20 3F CD      JSR $CD3F
C862   4C CC CD      JMP $CDCC
C865   FF            ???                ;11111111
C866   FF            ???                ;11111111
C867   FF            ???                ;11111111
C868   FF            ???                ;11111111
C869   FF            ???                ;11111111
C86A   FF            ???                ;11111111
C86B   FF            ???                ;11111111
C86C   FF            ???                ;11111111
C86D   FF            ???                ;11111111
C86E   FF            ???                ;11111111
C86F   FF            ???                ;11111111
C870   FF            ???                ;11111111
C871   FF            ???                ;11111111
C872   FF            ???                ;11111111
C873   FF            ???                ;11111111
C874   FF            ???                ;11111111
C875   FF            ???                ;11111111
C876   FF            ???                ;11111111
C877   FF            ???                ;11111111
C878   FF            ???                ;11111111
C879   FF            ???                ;11111111
C87A   FF            ???                ;11111111
C87B   FF            ???                ;11111111
C87C   FF            ???                ;11111111
C87D   FF            ???                ;11111111
C87E   FF            ???                ;11111111
C87F   FF            ???                ;11111111
C880   FF            ???                ;11111111
C881   FF            ???                ;11111111
C882   FF            ???                ;11111111
C883   FF            ???                ;11111111
C884   FF            ???                ;11111111
C885   FF            ???                ;11111111
C886   FF            ???                ;11111111
C887   FF            ???                ;11111111
C888   FF            ???                ;11111111
C889   FF            ???                ;11111111
C88A   FF            ???                ;11111111
C88B   FF            ???                ;11111111
C88C   FF            ???                ;11111111
C88D   FF            ???                ;11111111
C88E   FF            ???                ;11111111
C88F   FF            ???                ;11111111
C890   FF            ???                ;11111111
C891   FF            ???                ;11111111
C892   FF            ???                ;11111111
C893   FF            ???                ;11111111
C894   FF            ???                ;11111111
C895   FF            ???                ;11111111
C896   FF            ???                ;11111111
C897   FF            ???                ;11111111
C898   FF            ???                ;11111111
C899   FF            ???                ;11111111
C89A   FF            ???                ;11111111
C89B   FF            ???                ;11111111
C89C   FF            ???                ;11111111
C89D   FF            ???                ;11111111
C89E   FF            ???                ;11111111
C89F   FF            ???                ;11111111
C8A0   FF            ???                ;11111111
C8A1   FF            ???                ;11111111
C8A2   FF            ???                ;11111111
C8A3   FF            ???                ;11111111
C8A4   FF            ???                ;11111111
C8A5   FF            ???                ;11111111
C8A6   FF            ???                ;11111111
C8A7   FF            ???                ;11111111
C8A8   FF            ???                ;11111111
C8A9   FF            ???                ;11111111
C8AA   FF            ???                ;11111111
C8AB   FF            ???                ;11111111
C8AC   FF            ???                ;11111111
C8AD   FF            ???                ;11111111
C8AE   FF            ???                ;11111111
C8AF   FF            ???                ;11111111
C8B0   FF            ???                ;11111111
C8B1   FF            ???                ;11111111
C8B2   FF            ???                ;11111111
C8B3   FF            ???                ;11111111
C8B4   FF            ???                ;11111111
C8B5   FF            ???                ;11111111
C8B6   FF            ???                ;11111111
C8B7   FF            ???                ;11111111
C8B8   FF            ???                ;11111111
C8B9   FF            ???                ;11111111
C8BA   FF            ???                ;11111111
C8BB   FF            ???                ;11111111
C8BC   FF            ???                ;11111111
C8BD   FF            ???                ;11111111
C8BE   FF            ???                ;11111111
C8BF   FF            ???                ;11111111
C8C0   FF            ???                ;11111111
C8C1   FF            ???                ;11111111
C8C2   FF            ???                ;11111111
C8C3   FF            ???                ;11111111
C8C4   FF            ???                ;11111111
C8C5   FF            ???                ;11111111
C8C6   FF            ???                ;11111111
C8C7   FF            ???                ;11111111
C8C8   FF            ???                ;11111111
C8C9   FF            ???                ;11111111
C8CA   FF            ???                ;11111111
C8CB   FF            ???                ;11111111
C8CC   FF            ???                ;11111111
C8CD   FF            ???                ;11111111
C8CE   FF            ???                ;11111111
C8CF   FF            ???                ;11111111
C8D0   FF            ???                ;11111111
C8D1   FF            ???                ;11111111
C8D2   FF            ???                ;11111111
C8D3   FF            ???                ;11111111
C8D4   FF            ???                ;11111111
C8D5   FF            ???                ;11111111
C8D6   FF            ???                ;11111111
C8D7   FF            ???                ;11111111
C8D8   FF            ???                ;11111111
C8D9   FF            ???                ;11111111
C8DA   FF            ???                ;11111111
C8DB   FF            ???                ;11111111
C8DC   FF            ???                ;11111111
C8DD   FF            ???                ;11111111
C8DE   FF            ???                ;11111111
C8DF   FF            ???                ;11111111
C8E0   FF            ???                ;11111111
C8E1   FF            ???                ;11111111
C8E2   FF            ???                ;11111111
C8E3   FF            ???                ;11111111
C8E4   FF            ???                ;11111111
C8E5   FF            ???                ;11111111
C8E6   FF            ???                ;11111111
C8E7   FF            ???                ;11111111
C8E8   FF            ???                ;11111111
C8E9   FF            ???                ;11111111
C8EA   FF            ???                ;11111111
C8EB   FF            ???                ;11111111
C8EC   FF            ???                ;11111111
C8ED   FF            ???                ;11111111
C8EE   FF            ???                ;11111111
C8EF   FF            ???                ;11111111
C8F0   FF            ???                ;11111111
C8F1   FF            ???                ;11111111
C8F2   FF            ???                ;11111111
C8F3   FF            ???                ;11111111
C8F4   FF            ???                ;11111111
C8F5   FF            ???                ;11111111
C8F6   FF            ???                ;11111111
C8F7   FF            ???                ;11111111
C8F8   FF            ???                ;11111111
C8F9   FF            ???                ;11111111
C8FA   FF            ???                ;11111111
C8FB   FF            ???                ;11111111
C8FC   FF            ???                ;11111111
C8FD   FF            ???                ;11111111
C8FE   FF            ???                ;11111111
C8FF   FF            ???                ;11111111
C900   20 A6 CF      JSR $CFA6
C903   A5 88         LDA $88
C905   C5 1F         CMP $1F
C907   F0 03         BEQ $C90C
C909   4C 88 CB      JMP $CB88
C90C   8D 01 60      STA $6001
C90F   20 B7 CF      JSR $CFB7
C912   A5 96         LDA $96
C914   85 39         STA $39
C916   A5 92         LDA $92
C918   85 3A         STA $3A
C91A   A5 21         LDA $21
C91C   AA            TAX
C91D   C5 93         CMP $93
C91F   08            PHP
C920   D0 06         BNE $C928
C922   A5 94         LDA $94
C924   AA            TAX
C925   38            SEC
C926   E9 01         SBC #$01
C928   38            SEC
C929   E5 94         SBC $94
C92B   18            CLC
C92C   69 01         ADC #$01
C92E   A4 91         LDY $91
C930   88            DEY
C931   F0 03         BEQ $C936
C933   0A            ASL A
C934   90 FA         BCC $C930
C936   20 8D CB      JSR $CB8D
C939   8A            TXA
C93A   28            PLP
C93B   F0 05         BEQ $C942
C93D   18            CLC
C93E   69 01         ADC #$01
C940   D0 02         BNE $C944
C942   A5 94         LDA $94
C944   8D 02 60      STA $6002
C947   EA            NOP
C948   EA            NOP
C949   EA            NOP
C94A   EA            NOP
C94B   EA            NOP
C94C   EA            NOP
C94D   EA            NOP
C94E   EA            NOP
C94F   EA            NOP
C950   EA            NOP
C951   EA            NOP
C952   EA            NOP
C953   EA            NOP
C954   EA            NOP
C955   EA            NOP
C956   EA            NOP
C957   EA            NOP
C958   EA            NOP
C959   EA            NOP
C95A   EA            NOP
C95B   AD DF 01      LDA $01DF
C95E   20 F4 CB      JSR $CBF4
C961   A4 91         LDY $91
C963   C0 03         CPY #$03
C965   D0 02         BNE $C969
C967   C8            INY
C968   EA            NOP
C969   AD 00 60      LDA $6000
C96C   29 03         AND #$03
C96E   4A            LSR A
C96F   90 5D         BCC $C9CE
C971   F0 F6         BEQ $C969
C973   84 82         STY $82
C975   A0 00         LDY #$00
C977   AD 03 60      LDA $6003
C97A   91 4A         STA ($4A),Y
C97C   A4 82         LDY $82
C97E   E6 4A         INC $4A
C980   D0 E7         BNE $C969
C982   E6 4B         INC $4B
C984   88            DEY
C985   D0 E2         BNE $C969
C987   20 3F CD      JSR $CD3F
C98A   D0 42         BNE $C9CE
C98C   C6 3A         DEC $3A
C98E   F0 3E         BEQ $C9CE
C990   AD 02 60      LDA $6002
C993   EE 02 60      INC $6002
C996   EA            NOP
C997   EA            NOP
C998   EA            NOP
C999   EA            NOP
C99A   EA            NOP
C99B   EA            NOP
C99C   EA            NOP
C99D   EA            NOP
C99E   EA            NOP
C99F   EA            NOP
C9A0   EA            NOP
C9A1   EA            NOP
C9A2   EA            NOP
C9A3   EA            NOP
C9A4   EA            NOP
C9A5   EA            NOP
C9A6   EA            NOP
C9A7   EA            NOP
C9A8   EA            NOP
C9A9   EA            NOP
C9AA   C5 93         CMP $93
C9AC   D0 AD         BNE $C95B
C9AE   A5 8C         LDA $8C
C9B0   85 4B         STA $4B
C9B2   A5 94         LDA $94
C9B4   8D 02 60      STA $6002
C9B7   EA            NOP
C9B8   EA            NOP
C9B9   EA            NOP
C9BA   EA            NOP
C9BB   EA            NOP
C9BC   EA            NOP
C9BD   EA            NOP
C9BE   EA            NOP
C9BF   EA            NOP
C9C0   EA            NOP
C9C1   EA            NOP
C9C2   EA            NOP
C9C3   EA            NOP
C9C4   EA            NOP
C9C5   EA            NOP
C9C6   EA            NOP
C9C7   EA            NOP
C9C8   EA            NOP
C9C9   EA            NOP
C9CA   EA            NOP
C9CB   4C 5B C9      JMP $C95B
C9CE   20 3F CD      JSR $CD3F
C9D1   D0 0B         BNE $C9DE
C9D3   A5 96         LDA $96
C9D5   85 97         STA $97
C9D7   A5 88         LDA $88
C9D9   85 95         STA $95
C9DB   4C E2 CD      JMP $CDE2
C9DE   4C CC CD      JMP $CDCC
C9E1   24 8D         BIT $8D
C9E3   10 0B         BPL $C9F0
C9E5   20 DC CB      JSR $CBDC
C9E8   20 00 CA      JSR $CA00
C9EB   06 87         ASL $87
C9ED   4C E2 CD      JMP $CDE2
C9F0   20 DC CB      JSR $CBDC
C9F3   4C EB C9      JMP $C9EB
C9F6   FF            ???                ;11111111
C9F7   FF            ???                ;11111111
C9F8   FF            ???                ;11111111
C9F9   FF            ???                ;11111111
C9FA   FF            ???                ;11111111
C9FB   FF            ???                ;11111111
C9FC   FF            ???                ;11111111
C9FD   FF            ???                ;11111111
C9FE   FF            ???                ;11111111
C9FF   FF            ???                ;11111111
CA00   20 A6 CF      JSR $CFA6
CA03   A5 88         LDA $88
CA05   C5 1F         CMP $1F
CA07   F0 03         BEQ $CA0C
CA09   4C 88 CB      JMP $CB88
CA0C   8D 01 60      STA $6001
CA0F   20 B7 CF      JSR $CFB7
CA12   A5 96         LDA $96
CA14   85 39         STA $39
CA16   A5 92         LDA $92
CA18   85 3A         STA $3A
CA1A   A5 21         LDA $21
CA1C   AA            TAX
CA1D   C5 93         CMP $93
CA1F   08            PHP
CA20   D0 06         BNE $CA28
CA22   A5 94         LDA $94
CA24   AA            TAX
CA25   38            SEC
CA26   E9 01         SBC #$01
CA28   38            SEC
CA29   E5 94         SBC $94
CA2B   18            CLC
CA2C   69 01         ADC #$01
CA2E   A4 91         LDY $91
CA30   88            DEY
CA31   F0 03         BEQ $CA36
CA33   0A            ASL A
CA34   90 FA         BCC $CA30
CA36   20 8D CB      JSR $CB8D
CA39   8A            TXA
CA3A   28            PLP
CA3B   F0 05         BEQ $CA42
CA3D   18            CLC
CA3E   69 01         ADC #$01
CA40   D0 02         BNE $CA44
CA42   A5 94         LDA $94
CA44   8D 02 60      STA $6002
CA47   EA            NOP
CA48   EA            NOP
CA49   EA            NOP
CA4A   EA            NOP
CA4B   EA            NOP
CA4C   EA            NOP
CA4D   EA            NOP
CA4E   EA            NOP
CA4F   EA            NOP
CA50   EA            NOP
CA51   EA            NOP
CA52   EA            NOP
CA53   EA            NOP
CA54   EA            NOP
CA55   EA            NOP
CA56   EA            NOP
CA57   EA            NOP
CA58   EA            NOP
CA59   EA            NOP
CA5A   EA            NOP
CA5B   AD DF 01      LDA $01DF
CA5E   20 F4 CB      JSR $CBF4
CA61   A4 91         LDY $91
CA63   C0 03         CPY #$03
CA65   D0 02         BNE $CA69
CA67   C8            INY
CA68   EA            NOP
CA69   AD 00 60      LDA $6000
CA6C   29 03         AND #$03
CA6E   4A            LSR A
CA6F   90 65         BCC $CAD6
CA71   F0 F6         BEQ $CA69
CA73   A5 9B         LDA $9B
CA75   C9 F5         CMP #$F5
CA77   D0 08         BNE $CA81
CA79   84 82         STY $82
CA7B   A0 00         LDY #$00
CA7D   B1 4A         LDA ($4A),Y
CA7F   A4 82         LDY $82
CA81   CD 03 60      CMP $6003
CA84   D0 56         BNE $CADC
CA86   E6 4A         INC $4A
CA88   D0 DF         BNE $CA69
CA8A   E6 4B         INC $4B
CA8C   88            DEY
CA8D   D0 DA         BNE $CA69
CA8F   20 3F CD      JSR $CD3F
CA92   D0 47         BNE $CADB
CA94   C6 3A         DEC $3A
CA96   F0 3E         BEQ $CAD6
CA98   AD 02 60      LDA $6002
CA9B   EE 02 60      INC $6002
CA9E   EA            NOP
CA9F   EA            NOP
CAA0   EA            NOP
CAA1   EA            NOP
CAA2   EA            NOP
CAA3   EA            NOP
CAA4   EA            NOP
CAA5   EA            NOP
CAA6   EA            NOP
CAA7   EA            NOP
CAA8   EA            NOP
CAA9   EA            NOP
CAAA   EA            NOP
CAAB   EA            NOP
CAAC   EA            NOP
CAAD   EA            NOP
CAAE   EA            NOP
CAAF   EA            NOP
CAB0   EA            NOP
CAB1   EA            NOP
CAB2   C5 93         CMP $93
CAB4   D0 A5         BNE $CA5B
CAB6   A5 8C         LDA $8C
CAB8   85 4B         STA $4B
CABA   A5 94         LDA $94
CABC   8D 02 60      STA $6002
CABF   EA            NOP
CAC0   EA            NOP
CAC1   EA            NOP
CAC2   EA            NOP
CAC3   EA            NOP
CAC4   EA            NOP
CAC5   EA            NOP
CAC6   EA            NOP
CAC7   EA            NOP
CAC8   EA            NOP
CAC9   EA            NOP
CACA   EA            NOP
CACB   EA            NOP
CACC   EA            NOP
CACD   EA            NOP
CACE   EA            NOP
CACF   EA            NOP
CAD0   EA            NOP
CAD1   EA            NOP
CAD2   EA            NOP
CAD3   4C 5B CA      JMP $CA5B
CAD6   20 3F CD      JSR $CD3F
CAD9   D0 06         BNE $CAE1
CADB   60            RTS
CADC   20 D1 CF      JSR $CFD1
CADF   A9 07         LDA #$07
CAE1   4C CC CD      JMP $CDCC
CAE4   20 A6 CF      JSR $CFA6
CAE7   A5 27         LDA $27
CAE9   C5 88         CMP $88
CAEB   D0 19         BNE $CB06
CAED   A0 3C         LDY #$3C
CAEF   84 39         STY $39
CAF1   20 A6 CF      JSR $CFA6
CAF4   A4 99         LDY $99
CAF6   B9 BD 01      LDA $01BD,Y
CAF9   C5 21         CMP $21
CAFB   F0 0C         BEQ $CB09
CAFD   C6 39         DEC $39
CAFF   D0 F0         BNE $CAF1
CB01   A9 02         LDA #$02
CB03   4C CC CD      JMP $CDCC
CB06   4C 00 CE      JMP $CE00
CB09   20 A6 CF      JSR $CFA6
CB0C   4C 8B C3      JMP $C38B
CB0F   AD DA 01      LDA $01DA
CB12   20 F4 CB      JSR $CBF4
CB15   20 EC CB      JSR $CBEC
CB18   A5 8E         LDA $8E
CB1A   85 27         STA $27
CB1C   85 88         STA $88
CB1E   A4 98         LDY $98
CB20   20 D5 CB      JSR $CBD5
CB23   4C 8B C3      JMP $C38B
CB26   A6 83         LDX $83
CB28   BD F1 01      LDA $01F1,X
CB2B   85 49         STA $49
CB2D   A0 00         LDY #$00
CB2F   84 48         STY $48
CB31   8A            TXA
CB32   6C 48 00      JMP ($0048)
CB35   A9 00         LDA #$00
CB37   85 96         STA $96
CB39   A5 96         LDA $96
CB3B   20 C0 CF      JSR $CFC0
CB3E   20 B7 CF      JSR $CFB7
CB41   20 D6 C3      JSR $C3D6
CB44   20 3F CD      JSR $CD3F
CB47   D0 1C         BNE $CB65
CB49   20 DC CB      JSR $CBDC
CB4C   20 B7 CF      JSR $CFB7
CB4F   20 00 CA      JSR $CA00
CB52   E6 96         INC $96
CB54   A5 96         LDA $96
CB56   C9 02         CMP #$02
CB58   90 DF         BCC $CB39
CB5A   A5 88         LDA $88
CB5C   C5 8F         CMP $8F
CB5E   D0 08         BNE $CB68
CB60   A9 01         LDA #$01
CB62   2C A9 06      BIT $06A9
CB65   4C CC CD      JMP $CDCC
CB68   A4 99         LDY $99
CB6A   B9 BC 01      LDA $01BC,Y
CB6D   18            CLC
CB6E   69 01         ADC #$01
CB70   99 BC 01      STA $01BC,Y
CB73   4C FA CD      JMP $CDFA
CB76   A9 40         LDA #$40
CB78   2C 01 40      BIT $4001
CB7B   D0 03         BNE $CB80
CB7D   A9 08         LDA #$08
CB7F   2C A9 00      BIT $00A9
CB82   4C CC CD      JMP $CDCC
CB85   A9 0E         LDA #$0E
CB87   2C A9 02      BIT $02A9
CB8A   4C CC CD      JMP $CDCC
CB8D   18            CLC
CB8E   65 8C         ADC $8C
CB90   85 4B         STA $4B
CB92   C9 20         CMP #$20
CB94   B0 01         BCS $CB97
CB96   60            RTS
CB97   68            PLA
CB98   68            PLA
CB99   20 3F CD      JSR $CD3F
CB9C   4C 88 CB      JMP $CB88
CB9F   AD D7 01      LDA $01D7
CBA2   8D 07 40      STA $4007
CBA5   AD D8 01      LDA $01D8
CBA8   8D 06 40      STA $4006
CBAB   A9 11         LDA #$11
CBAD   8D 0F 40      STA $400F
CBB0   60            RTS
CBB1   AD 00 40      LDA $4000
CBB4   29 FB         AND #$FB
CBB6   8D 00 40      STA $4000
CBB9   60            RTS
CBBA   AD 00 40      LDA $4000
CBBD   09 04         ORA #$04
CBBF   8D 00 40      STA $4000
CBC2   60            RTS
CBC3   AD 00 40      LDA $4000
CBC6   29 BF         AND #$BF
CBC8   8D 00 40      STA $4000
CBCB   60            RTS
CBCC   AD 00 40      LDA $4000
CBCF   09 40         ORA #$40
CBD1   8D 00 40      STA $4000
CBD4   60            RTS
CBD5   20 DF CB      JSR $CBDF
CBD8   88            DEY
CBD9   D0 FA         BNE $CBD5
CBDB   60            RTS
CBDC   A2 03         LDX #$03
CBDE   2C A2 02      BIT $02A2
CBE1   18            CLC
CBE2   A9 6F         LDA #$6F
CBE4   69 01         ADC #$01
CBE6   D0 FC         BNE $CBE4
CBE8   CA            DEX
CBE9   D0 F9         BNE $CBE4
CBEB   60            RTS
CBEC   A9 01         LDA #$01
CBEE   2C 00 60      BIT $6000
CBF1   D0 FB         BNE $CBEE
CBF3   60            RTS
CBF4   EA            NOP
CBF5   8D 00 60      STA $6000
CBF8   A9 01         LDA #$01
CBFA   2C 00 60      BIT $6000
CBFD   F0 FB         BEQ $CBFA
CBFF   4C 34 AD      JMP $AD34
CC02   FF            ???                ;11111111
CC03   FF            ???                ;11111111
CC04   FF            ???                ;11111111
CC05   FF            ???                ;11111111
CC06   FF            ???                ;11111111
CC07   FF            ???                ;11111111
CC08   FF            ???                ;11111111
CC09   FF            ???                ;11111111
CC0A   FF            ???                ;11111111
CC0B   FF            ???                ;11111111
CC0C   FF            ???                ;11111111
CC0D   FF            ???                ;11111111
CC0E   FF            ???                ;11111111
CC0F   FF            ???                ;11111111
CC10   FF            ???                ;11111111
CC11   FF            ???                ;11111111
CC12   FF            ???                ;11111111
CC13   FF            ???                ;11111111
CC14   FF            ???                ;11111111
CC15   FF            ???                ;11111111
CC16   FF            ???                ;11111111
CC17   FF            ???                ;11111111
CC18   FF            ???                ;11111111
CC19   FF            ???                ;11111111
CC1A   FF            ???                ;11111111
CC1B   FF            ???                ;11111111
CC1C   FF            ???                ;11111111
CC1D   FF            ???                ;11111111
CC1E   FF            ???                ;11111111
CC1F   FF            ???                ;11111111
CC20   FF            ???                ;11111111
CC21   FF            ???                ;11111111
CC22   FF            ???                ;11111111
CC23   FF            ???                ;11111111
CC24   FF            ???                ;11111111
CC25   FF            ???                ;11111111
CC26   FF            ???                ;11111111
CC27   FF            ???                ;11111111
CC28   FF            ???                ;11111111
CC29   FF            ???                ;11111111
CC2A   FF            ???                ;11111111
CC2B   FF            ???                ;11111111
CC2C   FF            ???                ;11111111
CC2D   FF            ???                ;11111111
CC2E   FF            ???                ;11111111
CC2F   FF            ???                ;11111111
CC30   FF            ???                ;11111111
CC31   FF            ???                ;11111111
CC32   FF            ???                ;11111111
CC33   FF            ???                ;11111111
CC34   FF            ???                ;11111111
CC35   FF            ???                ;11111111
CC36   FF            ???                ;11111111
CC37   FF            ???                ;11111111
CC38   FF            ???                ;11111111
CC39   FF            ???                ;11111111
CC3A   FF            ???                ;11111111
CC3B   FF            ???                ;11111111
CC3C   FF            ???                ;11111111
CC3D   FF            ???                ;11111111
CC3E   FF            ???                ;11111111
CC3F   FF            ???                ;11111111
CC40   FF            ???                ;11111111
CC41   FF            ???                ;11111111
CC42   FF            ???                ;11111111
CC43   FF            ???                ;11111111
CC44   FF            ???                ;11111111
CC45   FF            ???                ;11111111
CC46   FF            ???                ;11111111
CC47   FF            ???                ;11111111
CC48   FF            ???                ;11111111
CC49   FF            ???                ;11111111
CC4A   FF            ???                ;11111111
CC4B   FF            ???                ;11111111
CC4C   FF            ???                ;11111111
CC4D   FF            ???                ;11111111
CC4E   FF            ???                ;11111111
CC4F   FF            ???                ;11111111
CC50   FF            ???                ;11111111
CC51   FF            ???                ;11111111
CC52   FF            ???                ;11111111
CC53   FF            ???                ;11111111
CC54   FF            ???                ;11111111
CC55   FF            ???                ;11111111
CC56   FF            ???                ;11111111
CC57   FF            ???                ;11111111
CC58   FF            ???                ;11111111
CC59   FF            ???                ;11111111
CC5A   FF            ???                ;11111111
CC5B   FF            ???                ;11111111
CC5C   FF            ???                ;11111111
CC5D   FF            ???                ;11111111
CC5E   FF            ???                ;11111111
CC5F   FF            ???                ;11111111
CC60   FF            ???                ;11111111
CC61   FF            ???                ;11111111
CC62   FF            ???                ;11111111
CC63   FF            ???                ;11111111
CC64   FF            ???                ;11111111
CC65   FF            ???                ;11111111
CC66   FF            ???                ;11111111
CC67   FF            ???                ;11111111
CC68   FF            ???                ;11111111
CC69   FF            ???                ;11111111
CC6A   FF            ???                ;11111111
CC6B   FF            ???                ;11111111
CC6C   FF            ???                ;11111111
CC6D   FF            ???                ;11111111
CC6E   FF            ???                ;11111111
CC6F   FF            ???                ;11111111
CC70   FF            ???                ;11111111
CC71   FF            ???                ;11111111
CC72   FF            ???                ;11111111
CC73   FF            ???                ;11111111
CC74   FF            ???                ;11111111
CC75   FF            ???                ;11111111
CC76   FF            ???                ;11111111
CC77   FF            ???                ;11111111
CC78   FF            ???                ;11111111
CC79   FF            ???                ;11111111
CC7A   FF            ???                ;11111111
CC7B   FF            ???                ;11111111
CC7C   FF            ???                ;11111111
CC7D   FF            ???                ;11111111
CC7E   FF            ???                ;11111111
CC7F   FF            ???                ;11111111
CC80   FF            ???                ;11111111
CC81   FF            ???                ;11111111
CC82   FF            ???                ;11111111
CC83   FF            ???                ;11111111
CC84   FF            ???                ;11111111
CC85   FF            ???                ;11111111
CC86   FF            ???                ;11111111
CC87   FF            ???                ;11111111
CC88   FF            ???                ;11111111
CC89   FF            ???                ;11111111
CC8A   FF            ???                ;11111111
CC8B   FF            ???                ;11111111
CC8C   FF            ???                ;11111111
CC8D   FF            ???                ;11111111
CC8E   FF            ???                ;11111111
CC8F   FF            ???                ;11111111
CC90   FF            ???                ;11111111
CC91   FF            ???                ;11111111
CC92   FF            ???                ;11111111
CC93   FF            ???                ;11111111
CC94   FF            ???                ;11111111
CC95   FF            ???                ;11111111
CC96   FF            ???                ;11111111
CC97   FF            ???                ;11111111
CC98   FF            ???                ;11111111
CC99   FF            ???                ;11111111
CC9A   FF            ???                ;11111111
CC9B   FF            ???                ;11111111
CC9C   FF            ???                ;11111111
CC9D   FF            ???                ;11111111
CC9E   FF            ???                ;11111111
CC9F   FF            ???                ;11111111
CCA0   FF            ???                ;11111111
CCA1   FF            ???                ;11111111
CCA2   FF            ???                ;11111111
CCA3   FF            ???                ;11111111
CCA4   FF            ???                ;11111111
CCA5   FF            ???                ;11111111
CCA6   FF            ???                ;11111111
CCA7   FF            ???                ;11111111
CCA8   FF            ???                ;11111111
CCA9   FF            ???                ;11111111
CCAA   FF            ???                ;11111111
CCAB   FF            ???                ;11111111
CCAC   FF            ???                ;11111111
CCAD   FF            ???                ;11111111
CCAE   FF            ???                ;11111111
CCAF   FF            ???                ;11111111
CCB0   FF            ???                ;11111111
CCB1   FF            ???                ;11111111
CCB2   FF            ???                ;11111111
CCB3   FF            ???                ;11111111
CCB4   FF            ???                ;11111111
CCB5   FF            ???                ;11111111
CCB6   FF            ???                ;11111111
CCB7   FF            ???                ;11111111
CCB8   FF            ???                ;11111111
CCB9   FF            ???                ;11111111
CCBA   FF            ???                ;11111111
CCBB   FF            ???                ;11111111
CCBC   FF            ???                ;11111111
CCBD   FF            ???                ;11111111
CCBE   FF            ???                ;11111111
CCBF   FF            ???                ;11111111
CCC0   FF            ???                ;11111111
CCC1   FF            ???                ;11111111
CCC2   FF            ???                ;11111111
CCC3   FF            ???                ;11111111
CCC4   FF            ???                ;11111111
CCC5   FF            ???                ;11111111
CCC6   FF            ???                ;11111111
CCC7   FF            ???                ;11111111
CCC8   FF            ???                ;11111111
CCC9   FF            ???                ;11111111
CCCA   FF            ???                ;11111111
CCCB   FF            ???                ;11111111
CCCC   FF            ???                ;11111111
CCCD   FF            ???                ;11111111
CCCE   FF            ???                ;11111111
CCCF   FF            ???                ;11111111
CCD0   FF            ???                ;11111111
CCD1   FF            ???                ;11111111
CCD2   FF            ???                ;11111111
CCD3   FF            ???                ;11111111
CCD4   FF            ???                ;11111111
CCD5   FF            ???                ;11111111
CCD6   FF            ???                ;11111111
CCD7   FF            ???                ;11111111
CCD8   FF            ???                ;11111111
CCD9   FF            ???                ;11111111
CCDA   FF            ???                ;11111111
CCDB   FF            ???                ;11111111
CCDC   FF            ???                ;11111111
CCDD   FF            ???                ;11111111
CCDE   FF            ???                ;11111111
CCDF   FF            ???                ;11111111
CCE0   FF            ???                ;11111111
CCE1   FF            ???                ;11111111
CCE2   FF            ???                ;11111111
CCE3   FF            ???                ;11111111
CCE4   FF            ???                ;11111111
CCE5   FF            ???                ;11111111
CCE6   FF            ???                ;11111111
CCE7   FF            ???                ;11111111
CCE8   FF            ???                ;11111111
CCE9   FF            ???                ;11111111
CCEA   FF            ???                ;11111111
CCEB   FF            ???                ;11111111
CCEC   FF            ???                ;11111111
CCED   FF            ???                ;11111111
CCEE   FF            ???                ;11111111
CCEF   FF            ???                ;11111111
CCF0   FF            ???                ;11111111
CCF1   FF            ???                ;11111111
CCF2   FF            ???                ;11111111
CCF3   FF            ???                ;11111111
CCF4   FF            ???                ;11111111
CCF5   FF            ???                ;11111111
CCF6   FF            ???                ;11111111
CCF7   FF            ???                ;11111111
CCF8   FF            ???                ;11111111
CCF9   FF            ???                ;11111111
CCFA   FF            ???                ;11111111
CCFB   FF            ???                ;11111111
CCFC   FF            ???                ;11111111
CCFD   FF            ???                ;11111111
CCFE   FF            ???                ;11111111
CCFF   FF            ???                ;11111111
CD00   A2 05         LDX #$05
CD02   8A            TXA
CD03   95 1F         STA $1F,X
CD05   CA            DEX
CD06   10 FA         BPL $CD02
CD08   20 BC CD      JSR $CDBC
CD0B   B0 2C         BCS $CD39
CD0D   AD E1 01      LDA $01E1
CD10   20 F4 CB      JSR $CBF4
CD13   A2 00         LDX #$00
CD15   A0 06         LDY #$06
CD17   AD 00 60      LDA $6000
CD1A   29 03         AND #$03
CD1C   4A            LSR A
CD1D   90 0B         BCC $CD2A
CD1F   F0 F6         BEQ $CD17
CD21   AD 03 60      LDA $6003
CD24   95 1F         STA $1F,X
CD26   E8            INX
CD27   88            DEY
CD28   D0 ED         BNE $CD17
CD2A   20 3F CD      JSR $CD3F
CD2D   F0 02         BEQ $CD31
CD2F   38            SEC
CD30   24 18         BIT $18
CD32   24 8D         BIT $8D
CD34   50 08         BVC $CD3E
CD36   4C 63 DA      JMP $DA63
CD39   A9 03         LDA #$03
CD3B   85 7D         STA $7D
CD3D   38            SEC
CD3E   60            RTS
CD3F   20 EC CB      JSR $CBEC
CD42   08            PHP
CD43   AD 00 60      LDA $6000
CD46   4A            LSR A
CD47   4A            LSR A
CD48   4A            LSR A
CD49   B0 08         BCS $CD53
CD4B   29 0B         AND #$0B
CD4D   AA            TAX
CD4E   28            PLP
CD4F   BD 5A CD      LDA $CD5A,X
CD52   2C A9 09      BIT $09A9
CD55   85 7D         STA $7D
CD57   A5 7D         LDA $7D
CD59   60            RTS
CD5A   00            BRK
CD5B   05 02         ORA $02
CD5D   00            BRK
CD5E   00            BRK
CD5F   00            BRK
CD60   00            BRK
CD61   00            BRK
CD62   08            PHP
CD63   A5 26         LDA $26
CD65   30 13         BMI $CD7A
CD67   29 30         AND #$30
CD69   D0 0B         BNE $CD76
CD6B   20 B1 CB      JSR $CBB1
CD6E   AD D9 01      LDA $01D9
CD71   85 2A         STA $2A
CD73   A9 A0         LDA #$A0
CD75   2C A9 20      BIT $20A9
CD78   85 26         STA $26
CD7A   60            RTS
CD7B   A5 26         LDA $26
CD7D   10 04         BPL $CD83
CD7F   A5 2A         LDA $2A
CD81   D0 34         BNE $CDB7
CD83   AD 00 40      LDA $4000
CD86   29 80         AND #$80
CD88   D0 23         BNE $CDAD
CD8A   AD DD 01      LDA $01DD
CD8D   20 F4 CB      JSR $CBF4
CD90   20 EC CB      JSR $CBEC
CD93   AD DE 01      LDA $01DE
CD96   20 F4 CB      JSR $CBF4
CD99   20 EC CB      JSR $CBEC
CD9C   A4 98         LDY $98
CD9E   20 D5 CB      JSR $CBD5
CDA1   AD 00 40      LDA $4000
CDA4   29 80         AND #$80
CDA6   D0 05         BNE $CDAD
CDA8   A9 03         LDA #$03
CDAA   4C CC CD      JMP $CDCC
CDAD   20 BC CD      JSR $CDBC
CDB0   B0 F6         BCS $CDA8
CDB2   A9 20         LDA #$20
CDB4   85 26         STA $26
CDB6   60            RTS
CDB7   68            PLA
CDB8   68            PLA
CDB9   4C 00 CE      JMP $CE00
CDBC   A0 1E         LDY #$1E
CDBE   AD 00 40      LDA $4000
CDC1   29 02         AND #$02
CDC3   D0 05         BNE $CDCA
CDC5   88            DEY
CDC6   D0 F6         BNE $CDBE
CDC8   18            CLC
CDC9   24 38         BIT $38
CDCB   60            RTS
CDCC   A4 83         LDY $83
CDCE   99 02 00      STA $0002,Y
CDD1   A0 80         LDY #$80
CDD3   C9 02         CMP #$02
CDD5   90 06         BCC $CDDD
CDD7   A9 00         LDA #$00
CDD9   85 87         STA $87
CDDB   84 95         STY $95
CDDD   84 83         STY $83
CDDF   A0 08         LDY #$08
CDE1   2C A4 83      BIT $83A4
CDE4   A5 26         LDA $26
CDE6   F0 12         BEQ $CDFA
CDE8   29 10         AND #$10
CDEA   D0 0E         BNE $CDFA
CDEC   A5 26         LDA $26
CDEE   09 10         ORA #$10
CDF0   85 26         STA $26
CDF2   A9 FF         LDA #$FF
CDF4   85 2A         STA $2A
CDF6   A9 04         LDA #$04
CDF8   85 2B         STA $2B
CDFA   A6 2C         LDX $2C
CDFC   9A            TXS
CDFD   4C C7 C0      JMP $C0C7
CE00   A6 2C         LDX $2C
CE02   E8            INX
CE03   E8            INX
CE04   BD 04 01      LDA $0104,X
CE07   29 10         AND #$10
CE09   D0 66         BNE $CE71
CE0B   A5 9C         LDA $9C
CE0D   F0 02         BEQ $CE11
CE0F   C6 9C         DEC $9C
CE11   A5 79         LDA $79
CE13   29 20         AND #$20
CE15   F0 10         BEQ $CE27
CE17   C6 9E         DEC $9E
CE19   10 0C         BPL $CE27
CE1B   A9 09         LDA #$09
CE1D   85 9E         STA $9E
CE1F   AD 00 40      LDA $4000
CE22   49 20         EOR #$20
CE24   8D 00 40      STA $4000
CE27   A5 79         LDA $79
CE29   29 40         AND #$40
CE2B   25 79         AND $79
CE2D   85 36         STA $36
CE2F   AD 00 40      LDA $4000
CE32   29 BF         AND #$BF
CE34   05 36         ORA $36
CE36   8D 00 40      STA $4000
CE39   AD 00 40      LDA $4000
CE3C   29 80         AND #$80
CE3E   D0 0A         BNE $CE4A
CE40   85 87         STA $87
CE42   A9 80         LDA #$80
CE44   85 95         STA $95
CE46   A9 01         LDA #$01
CE48   85 25         STA $25
CE4A   A5 26         LDA $26
CE4C   F0 1F         BEQ $CE6D
CE4E   A8            TAY
CE4F   C9 20         CMP #$20
CE51   F0 20         BEQ $CE73
CE53   C6 2A         DEC $2A
CE55   D0 1C         BNE $CE73
CE57   98            TYA
CE58   10 04         BPL $CE5E
CE5A   29 7F         AND #$7F
CE5C   85 26         STA $26
CE5E   29 10         AND #$10
CE60   F0 11         BEQ $CE73
CE62   C6 2B         DEC $2B
CE64   D0 0D         BNE $CE73
CE66   20 BA CB      JSR $CBBA
CE69   A9 00         LDA #$00
CE6B   85 26         STA $26
CE6D   A6 2C         LDX $2C
CE6F   9A            TXS
CE70   60            RTS
CE71   A4 26         LDY $26
CE73   98            TYA
CE74   29 40         AND #$40
CE76   F0 F5         BEQ $CE6D
CE78   A5 88         LDA $88
CE7A   C5 27         CMP $27
CE7C   F0 18         BEQ $CE96
CE7E   8D 03 60      STA $6003
CE81   A5 27         LDA $27
CE83   8D 01 60      STA $6001
CE86   AD DB 01      LDA $01DB
CE89   20 F4 CB      JSR $CBF4
CE8C   20 EC CB      JSR $CBEC
CE8F   A5 88         LDA $88
CE91   85 27         STA $27
CE93   8D 01 60      STA $6001
CE96   A5 26         LDA $26
CE98   29 BF         AND #$BF
CE9A   85 26         STA $26
CE9C   A4 98         LDY $98
CE9E   20 D5 CB      JSR $CBD5
CEA1   4C 6D CE      JMP $CE6D
CEA4   24 39         BIT $39
CEA6   50 03         BVC $CEAB
CEA8   A9 80         LDA #$80
CEAA   2C A9 00      BIT $00A9
CEAD   85 87         STA $87
CEAF   A9 20         LDA #$20
CEB1   24 37         BIT $37
CEB3   D0 01         BNE $CEB6
CEB5   60            RTS
CEB6   A4 99         LDY $99
CEB8   B9 0B 00      LDA $000B,Y
CEBB   18            CLC
CEBC   65 8C         ADC $8C
CEBE   85 4B         STA $4B
CEC0   A0 00         LDY #$00
CEC2   84 48         STY $48
CEC4   84 4A         STY $4A
CEC6   A6 83         LDX $83
CEC8   BD F1 01      LDA $01F1,X
CECB   85 49         STA $49
CECD   A5 39         LDA $39
CECF   29 1F         AND #$1F
CED1   AA            TAX
CED2   24 39         BIT $39
CED4   10 03         BPL $CED9
CED6   4C 3E D0      JMP $D03E
CED9   4C 58 D5      JMP $D558
CEDC   06 86         ASL $86
CEDE   B0 6E         BCS $CF4E
CEE0   A4 99         LDY $99
CEE2   06 85         ASL $85
CEE4   90 44         BCC $CF2A
CEE6   A6 83         LDX $83
CEE8   B5 9F         LDA $9F,X
CEEA   10 01         BPL $CEED
CEEC   60            RTS
CEED   B9 0B 00      LDA $000B,Y
CEF0   38            SEC
CEF1   E9 01         SBC #$01
CEF3   99 BC 01      STA $01BC,Y
CEF6   A5 75         LDA $75
CEF8   4A            LSR A
CEF9   AA            TAX
CEFA   D9 0C 00      CMP $000C,Y
CEFD   F0 05         BEQ $CF04
CEFF   90 03         BCC $CF04
CF01   A9 00         LDA #$00
CF03   2C A9 01      BIT $01A9
CF06   85 96         STA $96
CF08   F0 01         BEQ $CF0B
CF0A   8A            TXA
CF0B   85 39         STA $39
CF0D   A6 83         LDX $83
CF0F   B9 0C 00      LDA $000C,Y
CF12   38            SEC
CF13   E5 39         SBC $39
CF15   09 80         ORA #$80
CF17   95 9F         STA $9F,X
CF19   29 7F         AND #$7F
CF1B   A6 91         LDX $91
CF1D   CA            DEX
CF1E   F0 04         BEQ $CF24
CF20   4A            LSR A
CF21   4C 1D CF      JMP $CF1D
CF24   18            CLC
CF25   65 94         ADC $94
CF27   4C 4A CF      JMP $CF4A
CF2A   A6 83         LDX $83
CF2C   BD CE 01      LDA $01CE,X
CF2F   85 96         STA $96
CF31   B9 0B 00      LDA $000B,Y
CF34   99 BC 01      STA $01BC,Y
CF37   B9 0C 00      LDA $000C,Y
CF3A   48            PHA
CF3B   38            SEC
CF3C   E5 94         SBC $94
CF3E   A6 91         LDX $91
CF40   CA            DEX
CF41   F0 04         BEQ $CF47
CF43   0A            ASL A
CF44   4C 40 CF      JMP $CF40
CF47   95 9F         STA $9F,X
CF49   68            PLA
CF4A   99 BD 01      STA $01BD,Y
CF4D   2C 06 85      BIT $8506
CF50   60            RTS
CF51   A4 99         LDY $99
CF53   B9 BC 01      LDA $01BC,Y
CF56   C5 95         CMP $95
CF58   D0 09         BNE $CF63
CF5A   A5 96         LDA $96
CF5C   C5 97         CMP $97
CF5E   D0 03         BNE $CF63
CF60   4C 64 CF      JMP $CF64
CF63   60            RTS
CF64   A6 83         LDX $83
CF66   BD F1 01      LDA $01F1,X
CF69   85 49         STA $49
CF6B   B5 9F         LDA $9F,X
CF6D   29 7F         AND #$7F
CF6F   18            CLC
CF70   65 8C         ADC $8C
CF72   85 4B         STA $4B
CF74   A0 00         LDY #$00
CF76   84 48         STY $48
CF78   84 4A         STY $4A
CF7A   A2 01         LDX #$01
CF7C   06 86         ASL $86
CF7E   B0 18         BCS $CF98
CF80   06 86         ASL $86
CF82   B0 06         BCS $CF8A
CF84   20 58 D5      JSR $D558
CF87   4C 99 C3      JMP $C399
CF8A   AD FA 01      LDA $01FA
CF8D   D0 14         BNE $CFA3
CF8F   20 3E D0      JSR $D03E
CF92   A9 80         LDA #$80
CF94   85 87         STA $87
CF96   D0 EF         BNE $CF87
CF98   06 86         ASL $86
CF9A   90 EB         BCC $CF87
CF9C   AD FA 01      LDA $01FA
CF9F   D0 02         BNE $CFA3
CFA1   B0 EF         BCS $CF92
CFA3   4C 9B C3      JMP $C39B
CFA6   20 00 CD      JSR $CD00
CFA9   B0 09         BCS $CFB4
CFAB   A5 1F         LDA $1F
CFAD   85 27         STA $27
CFAF   A5 22         LDA $22
CFB1   85 91         STA $91
CFB3   60            RTS
CFB4   4C CC CD      JMP $CDCC
CFB7   A5 8B         LDA $8B
CFB9   85 4A         STA $4A
CFBB   A5 8C         LDA $8C
CFBD   85 4B         STA $4B
CFBF   60            RTS
CFC0   F0 02         BEQ $CFC4
CFC2   A9 01         LDA #$01
CFC4   85 36         STA $36
CFC6   AD 00 40      LDA $4000
CFC9   29 FE         AND #$FE
CFCB   05 36         ORA $36
CFCD   8D 00 40      STA $4000
CFD0   60            RTS
CFD1   AD E4 01      LDA $01E4
CFD4   8D 00 60      STA $6000
CFD7   20 2F AD      JSR $AD2F
CFDA   20 2F AD      JSR $AD2F
CFDD   20 2F AD      JSR $AD2F
CFE0   4C EC CB      JMP $CBEC
CFE3   38            SEC
CFE4   E5 94         SBC $94
CFE6   C9 2B         CMP #$2B
CFE8   90 12         BCC $CFFC
CFEA   AD E0 01      LDA $01E0
CFED   09 02         ORA #$02
CFEF   8D E0 01      STA $01E0
CFF2   AD E3 01      LDA $01E3
CFF5   09 02         ORA #$02
CFF7   8D E3 01      STA $01E3
CFFA   B0 10         BCS $D00C
CFFC   AD E0 01      LDA $01E0
CFFF   29 FD         AND #$FD
D001   8D E0 01      STA $01E0
D004   AD E3 01      LDA $01E3
D007   29 FD         AND #$FD
D009   8D E3 01      STA $01E3
D00C   60            RTS
D00D   41 4D         EOR ($4D,X)
D00F   20 49 20      JSR $2049
D012   4C 41 5A      JMP $5A41
D015   59 3F 3F      EOR $3F3F,Y
D018   3F            ???                ;00111111 '?'
D019   2E 2E 2E      ROL $2E2E
D01C   4E 4F 20      LSR $204F
D01F   4A            LSR A
D020   55 53         EOR $53,X
D022   54            ???                ;01010100 'T'
D023   20 57 41      JSR $4157
D026   4E 54 45      LSR $4554
D029   44            ???                ;01000100 'D'
D02A   20 54 4F      JSR $4F54
D02D   20 53 41      JSR $4153
D030   56 45         LSR $45,X
D032   20 41 20      JSR $2041
D035   46 45         LSR $45
D037   57            ???                ;01010111 'W'
D038   20 4D 53      JSR $534D
D03B   2E 2E 2E      ROL $2E2E
D03E   B1 48         LDA ($48),Y
D040   91 4A         STA ($4A),Y
D042   C8            INY
D043   B1 48         LDA ($48),Y
D045   91 4A         STA ($4A),Y
D047   C8            INY
D048   B1 48         LDA ($48),Y
D04A   91 4A         STA ($4A),Y
D04C   C8            INY
D04D   B1 48         LDA ($48),Y
D04F   91 4A         STA ($4A),Y
D051   C8            INY
D052   B1 48         LDA ($48),Y
D054   91 4A         STA ($4A),Y
D056   C8            INY
D057   B1 48         LDA ($48),Y
D059   91 4A         STA ($4A),Y
D05B   C8            INY
D05C   B1 48         LDA ($48),Y
D05E   91 4A         STA ($4A),Y
D060   C8            INY
D061   B1 48         LDA ($48),Y
D063   91 4A         STA ($4A),Y
D065   C8            INY
D066   B1 48         LDA ($48),Y
D068   91 4A         STA ($4A),Y
D06A   C8            INY
D06B   B1 48         LDA ($48),Y
D06D   91 4A         STA ($4A),Y
D06F   C8            INY
D070   B1 48         LDA ($48),Y
D072   91 4A         STA ($4A),Y
D074   C8            INY
D075   B1 48         LDA ($48),Y
D077   91 4A         STA ($4A),Y
D079   C8            INY
D07A   B1 48         LDA ($48),Y
D07C   91 4A         STA ($4A),Y
D07E   C8            INY
D07F   B1 48         LDA ($48),Y
D081   91 4A         STA ($4A),Y
D083   C8            INY
D084   B1 48         LDA ($48),Y
D086   91 4A         STA ($4A),Y
D088   C8            INY
D089   B1 48         LDA ($48),Y
D08B   91 4A         STA ($4A),Y
D08D   C8            INY
D08E   B1 48         LDA ($48),Y
D090   91 4A         STA ($4A),Y
D092   C8            INY
D093   B1 48         LDA ($48),Y
D095   91 4A         STA ($4A),Y
D097   C8            INY
D098   B1 48         LDA ($48),Y
D09A   91 4A         STA ($4A),Y
D09C   C8            INY
D09D   B1 48         LDA ($48),Y
D09F   91 4A         STA ($4A),Y
D0A1   C8            INY
D0A2   B1 48         LDA ($48),Y
D0A4   91 4A         STA ($4A),Y
D0A6   C8            INY
D0A7   B1 48         LDA ($48),Y
D0A9   91 4A         STA ($4A),Y
D0AB   C8            INY
D0AC   B1 48         LDA ($48),Y
D0AE   91 4A         STA ($4A),Y
D0B0   C8            INY
D0B1   B1 48         LDA ($48),Y
D0B3   91 4A         STA ($4A),Y
D0B5   C8            INY
D0B6   B1 48         LDA ($48),Y
D0B8   91 4A         STA ($4A),Y
D0BA   C8            INY
D0BB   B1 48         LDA ($48),Y
D0BD   91 4A         STA ($4A),Y
D0BF   C8            INY
D0C0   B1 48         LDA ($48),Y
D0C2   91 4A         STA ($4A),Y
D0C4   C8            INY
D0C5   B1 48         LDA ($48),Y
D0C7   91 4A         STA ($4A),Y
D0C9   C8            INY
D0CA   B1 48         LDA ($48),Y
D0CC   91 4A         STA ($4A),Y
D0CE   C8            INY
D0CF   B1 48         LDA ($48),Y
D0D1   91 4A         STA ($4A),Y
D0D3   C8            INY
D0D4   B1 48         LDA ($48),Y
D0D6   91 4A         STA ($4A),Y
D0D8   C8            INY
D0D9   B1 48         LDA ($48),Y
D0DB   91 4A         STA ($4A),Y
D0DD   C8            INY
D0DE   B1 48         LDA ($48),Y
D0E0   91 4A         STA ($4A),Y
D0E2   C8            INY
D0E3   B1 48         LDA ($48),Y
D0E5   91 4A         STA ($4A),Y
D0E7   C8            INY
D0E8   B1 48         LDA ($48),Y
D0EA   91 4A         STA ($4A),Y
D0EC   C8            INY
D0ED   B1 48         LDA ($48),Y
D0EF   91 4A         STA ($4A),Y
D0F1   C8            INY
D0F2   B1 48         LDA ($48),Y
D0F4   91 4A         STA ($4A),Y
D0F6   C8            INY
D0F7   B1 48         LDA ($48),Y
D0F9   91 4A         STA ($4A),Y
D0FB   C8            INY
D0FC   B1 48         LDA ($48),Y
D0FE   91 4A         STA ($4A),Y
D100   C8            INY
D101   B1 48         LDA ($48),Y
D103   91 4A         STA ($4A),Y
D105   C8            INY
D106   B1 48         LDA ($48),Y
D108   91 4A         STA ($4A),Y
D10A   C8            INY
D10B   B1 48         LDA ($48),Y
D10D   91 4A         STA ($4A),Y
D10F   C8            INY
D110   B1 48         LDA ($48),Y
D112   91 4A         STA ($4A),Y
D114   C8            INY
D115   B1 48         LDA ($48),Y
D117   91 4A         STA ($4A),Y
D119   C8            INY
D11A   B1 48         LDA ($48),Y
D11C   91 4A         STA ($4A),Y
D11E   C8            INY
D11F   B1 48         LDA ($48),Y
D121   91 4A         STA ($4A),Y
D123   C8            INY
D124   B1 48         LDA ($48),Y
D126   91 4A         STA ($4A),Y
D128   C8            INY
D129   B1 48         LDA ($48),Y
D12B   91 4A         STA ($4A),Y
D12D   C8            INY
D12E   B1 48         LDA ($48),Y
D130   91 4A         STA ($4A),Y
D132   C8            INY
D133   B1 48         LDA ($48),Y
D135   91 4A         STA ($4A),Y
D137   C8            INY
D138   B1 48         LDA ($48),Y
D13A   91 4A         STA ($4A),Y
D13C   C8            INY
D13D   B1 48         LDA ($48),Y
D13F   91 4A         STA ($4A),Y
D141   C8            INY
D142   B1 48         LDA ($48),Y
D144   91 4A         STA ($4A),Y
D146   C8            INY
D147   B1 48         LDA ($48),Y
D149   91 4A         STA ($4A),Y
D14B   C8            INY
D14C   B1 48         LDA ($48),Y
D14E   91 4A         STA ($4A),Y
D150   C8            INY
D151   B1 48         LDA ($48),Y
D153   91 4A         STA ($4A),Y
D155   C8            INY
D156   B1 48         LDA ($48),Y
D158   91 4A         STA ($4A),Y
D15A   C8            INY
D15B   B1 48         LDA ($48),Y
D15D   91 4A         STA ($4A),Y
D15F   C8            INY
D160   B1 48         LDA ($48),Y
D162   91 4A         STA ($4A),Y
D164   C8            INY
D165   B1 48         LDA ($48),Y
D167   91 4A         STA ($4A),Y
D169   C8            INY
D16A   B1 48         LDA ($48),Y
D16C   91 4A         STA ($4A),Y
D16E   C8            INY
D16F   B1 48         LDA ($48),Y
D171   91 4A         STA ($4A),Y
D173   C8            INY
D174   B1 48         LDA ($48),Y
D176   91 4A         STA ($4A),Y
D178   C8            INY
D179   B1 48         LDA ($48),Y
D17B   91 4A         STA ($4A),Y
D17D   C8            INY
D17E   B1 48         LDA ($48),Y
D180   91 4A         STA ($4A),Y
D182   C8            INY
D183   B1 48         LDA ($48),Y
D185   91 4A         STA ($4A),Y
D187   C8            INY
D188   B1 48         LDA ($48),Y
D18A   91 4A         STA ($4A),Y
D18C   C8            INY
D18D   B1 48         LDA ($48),Y
D18F   91 4A         STA ($4A),Y
D191   C8            INY
D192   B1 48         LDA ($48),Y
D194   91 4A         STA ($4A),Y
D196   C8            INY
D197   B1 48         LDA ($48),Y
D199   91 4A         STA ($4A),Y
D19B   C8            INY
D19C   B1 48         LDA ($48),Y
D19E   91 4A         STA ($4A),Y
D1A0   C8            INY
D1A1   B1 48         LDA ($48),Y
D1A3   91 4A         STA ($4A),Y
D1A5   C8            INY
D1A6   B1 48         LDA ($48),Y
D1A8   91 4A         STA ($4A),Y
D1AA   C8            INY
D1AB   B1 48         LDA ($48),Y
D1AD   91 4A         STA ($4A),Y
D1AF   C8            INY
D1B0   B1 48         LDA ($48),Y
D1B2   91 4A         STA ($4A),Y
D1B4   C8            INY
D1B5   B1 48         LDA ($48),Y
D1B7   91 4A         STA ($4A),Y
D1B9   C8            INY
D1BA   B1 48         LDA ($48),Y
D1BC   91 4A         STA ($4A),Y
D1BE   C8            INY
D1BF   B1 48         LDA ($48),Y
D1C1   91 4A         STA ($4A),Y
D1C3   C8            INY
D1C4   B1 48         LDA ($48),Y
D1C6   91 4A         STA ($4A),Y
D1C8   C8            INY
D1C9   B1 48         LDA ($48),Y
D1CB   91 4A         STA ($4A),Y
D1CD   C8            INY
D1CE   B1 48         LDA ($48),Y
D1D0   91 4A         STA ($4A),Y
D1D2   C8            INY
D1D3   B1 48         LDA ($48),Y
D1D5   91 4A         STA ($4A),Y
D1D7   C8            INY
D1D8   B1 48         LDA ($48),Y
D1DA   91 4A         STA ($4A),Y
D1DC   C8            INY
D1DD   B1 48         LDA ($48),Y
D1DF   91 4A         STA ($4A),Y
D1E1   C8            INY
D1E2   B1 48         LDA ($48),Y
D1E4   91 4A         STA ($4A),Y
D1E6   C8            INY
D1E7   B1 48         LDA ($48),Y
D1E9   91 4A         STA ($4A),Y
D1EB   C8            INY
D1EC   B1 48         LDA ($48),Y
D1EE   91 4A         STA ($4A),Y
D1F0   C8            INY
D1F1   B1 48         LDA ($48),Y
D1F3   91 4A         STA ($4A),Y
D1F5   C8            INY
D1F6   B1 48         LDA ($48),Y
D1F8   91 4A         STA ($4A),Y
D1FA   C8            INY
D1FB   B1 48         LDA ($48),Y
D1FD   91 4A         STA ($4A),Y
D1FF   C8            INY
D200   B1 48         LDA ($48),Y
D202   91 4A         STA ($4A),Y
D204   C8            INY
D205   B1 48         LDA ($48),Y
D207   91 4A         STA ($4A),Y
D209   C8            INY
D20A   B1 48         LDA ($48),Y
D20C   91 4A         STA ($4A),Y
D20E   C8            INY
D20F   B1 48         LDA ($48),Y
D211   91 4A         STA ($4A),Y
D213   C8            INY
D214   B1 48         LDA ($48),Y
D216   91 4A         STA ($4A),Y
D218   C8            INY
D219   B1 48         LDA ($48),Y
D21B   91 4A         STA ($4A),Y
D21D   C8            INY
D21E   B1 48         LDA ($48),Y
D220   91 4A         STA ($4A),Y
D222   C8            INY
D223   B1 48         LDA ($48),Y
D225   91 4A         STA ($4A),Y
D227   C8            INY
D228   B1 48         LDA ($48),Y
D22A   91 4A         STA ($4A),Y
D22C   C8            INY
D22D   B1 48         LDA ($48),Y
D22F   91 4A         STA ($4A),Y
D231   C8            INY
D232   B1 48         LDA ($48),Y
D234   91 4A         STA ($4A),Y
D236   C8            INY
D237   B1 48         LDA ($48),Y
D239   91 4A         STA ($4A),Y
D23B   C8            INY
D23C   B1 48         LDA ($48),Y
D23E   91 4A         STA ($4A),Y
D240   C8            INY
D241   B1 48         LDA ($48),Y
D243   91 4A         STA ($4A),Y
D245   C8            INY
D246   B1 48         LDA ($48),Y
D248   91 4A         STA ($4A),Y
D24A   C8            INY
D24B   B1 48         LDA ($48),Y
D24D   91 4A         STA ($4A),Y
D24F   C8            INY
D250   B1 48         LDA ($48),Y
D252   91 4A         STA ($4A),Y
D254   C8            INY
D255   B1 48         LDA ($48),Y
D257   91 4A         STA ($4A),Y
D259   C8            INY
D25A   B1 48         LDA ($48),Y
D25C   91 4A         STA ($4A),Y
D25E   C8            INY
D25F   B1 48         LDA ($48),Y
D261   91 4A         STA ($4A),Y
D263   C8            INY
D264   B1 48         LDA ($48),Y
D266   91 4A         STA ($4A),Y
D268   C8            INY
D269   B1 48         LDA ($48),Y
D26B   91 4A         STA ($4A),Y
D26D   C8            INY
D26E   B1 48         LDA ($48),Y
D270   91 4A         STA ($4A),Y
D272   C8            INY
D273   B1 48         LDA ($48),Y
D275   91 4A         STA ($4A),Y
D277   C8            INY
D278   B1 48         LDA ($48),Y
D27A   91 4A         STA ($4A),Y
D27C   C8            INY
D27D   B1 48         LDA ($48),Y
D27F   91 4A         STA ($4A),Y
D281   C8            INY
D282   B1 48         LDA ($48),Y
D284   91 4A         STA ($4A),Y
D286   C8            INY
D287   B1 48         LDA ($48),Y
D289   91 4A         STA ($4A),Y
D28B   C8            INY
D28C   B1 48         LDA ($48),Y
D28E   91 4A         STA ($4A),Y
D290   C8            INY
D291   B1 48         LDA ($48),Y
D293   91 4A         STA ($4A),Y
D295   C8            INY
D296   B1 48         LDA ($48),Y
D298   91 4A         STA ($4A),Y
D29A   C8            INY
D29B   B1 48         LDA ($48),Y
D29D   91 4A         STA ($4A),Y
D29F   C8            INY
D2A0   B1 48         LDA ($48),Y
D2A2   91 4A         STA ($4A),Y
D2A4   C8            INY
D2A5   B1 48         LDA ($48),Y
D2A7   91 4A         STA ($4A),Y
D2A9   C8            INY
D2AA   B1 48         LDA ($48),Y
D2AC   91 4A         STA ($4A),Y
D2AE   C8            INY
D2AF   B1 48         LDA ($48),Y
D2B1   91 4A         STA ($4A),Y
D2B3   C8            INY
D2B4   B1 48         LDA ($48),Y
D2B6   91 4A         STA ($4A),Y
D2B8   C8            INY
D2B9   B1 48         LDA ($48),Y
D2BB   91 4A         STA ($4A),Y
D2BD   C8            INY
D2BE   B1 48         LDA ($48),Y
D2C0   91 4A         STA ($4A),Y
D2C2   C8            INY
D2C3   B1 48         LDA ($48),Y
D2C5   91 4A         STA ($4A),Y
D2C7   C8            INY
D2C8   B1 48         LDA ($48),Y
D2CA   91 4A         STA ($4A),Y
D2CC   C8            INY
D2CD   B1 48         LDA ($48),Y
D2CF   91 4A         STA ($4A),Y
D2D1   C8            INY
D2D2   B1 48         LDA ($48),Y
D2D4   91 4A         STA ($4A),Y
D2D6   C8            INY
D2D7   B1 48         LDA ($48),Y
D2D9   91 4A         STA ($4A),Y
D2DB   C8            INY
D2DC   B1 48         LDA ($48),Y
D2DE   91 4A         STA ($4A),Y
D2E0   C8            INY
D2E1   B1 48         LDA ($48),Y
D2E3   91 4A         STA ($4A),Y
D2E5   C8            INY
D2E6   B1 48         LDA ($48),Y
D2E8   91 4A         STA ($4A),Y
D2EA   C8            INY
D2EB   B1 48         LDA ($48),Y
D2ED   91 4A         STA ($4A),Y
D2EF   C8            INY
D2F0   B1 48         LDA ($48),Y
D2F2   91 4A         STA ($4A),Y
D2F4   C8            INY
D2F5   B1 48         LDA ($48),Y
D2F7   91 4A         STA ($4A),Y
D2F9   C8            INY
D2FA   B1 48         LDA ($48),Y
D2FC   91 4A         STA ($4A),Y
D2FE   C8            INY
D2FF   B1 48         LDA ($48),Y
D301   91 4A         STA ($4A),Y
D303   C8            INY
D304   B1 48         LDA ($48),Y
D306   91 4A         STA ($4A),Y
D308   C8            INY
D309   B1 48         LDA ($48),Y
D30B   91 4A         STA ($4A),Y
D30D   C8            INY
D30E   B1 48         LDA ($48),Y
D310   91 4A         STA ($4A),Y
D312   C8            INY
D313   B1 48         LDA ($48),Y
D315   91 4A         STA ($4A),Y
D317   C8            INY
D318   B1 48         LDA ($48),Y
D31A   91 4A         STA ($4A),Y
D31C   C8            INY
D31D   B1 48         LDA ($48),Y
D31F   91 4A         STA ($4A),Y
D321   C8            INY
D322   B1 48         LDA ($48),Y
D324   91 4A         STA ($4A),Y
D326   C8            INY
D327   B1 48         LDA ($48),Y
D329   91 4A         STA ($4A),Y
D32B   C8            INY
D32C   B1 48         LDA ($48),Y
D32E   91 4A         STA ($4A),Y
D330   C8            INY
D331   B1 48         LDA ($48),Y
D333   91 4A         STA ($4A),Y
D335   C8            INY
D336   B1 48         LDA ($48),Y
D338   91 4A         STA ($4A),Y
D33A   C8            INY
D33B   B1 48         LDA ($48),Y
D33D   91 4A         STA ($4A),Y
D33F   C8            INY
D340   B1 48         LDA ($48),Y
D342   91 4A         STA ($4A),Y
D344   C8            INY
D345   B1 48         LDA ($48),Y
D347   91 4A         STA ($4A),Y
D349   C8            INY
D34A   B1 48         LDA ($48),Y
D34C   91 4A         STA ($4A),Y
D34E   C8            INY
D34F   B1 48         LDA ($48),Y
D351   91 4A         STA ($4A),Y
D353   C8            INY
D354   B1 48         LDA ($48),Y
D356   91 4A         STA ($4A),Y
D358   C8            INY
D359   B1 48         LDA ($48),Y
D35B   91 4A         STA ($4A),Y
D35D   C8            INY
D35E   B1 48         LDA ($48),Y
D360   91 4A         STA ($4A),Y
D362   C8            INY
D363   B1 48         LDA ($48),Y
D365   91 4A         STA ($4A),Y
D367   C8            INY
D368   B1 48         LDA ($48),Y
D36A   91 4A         STA ($4A),Y
D36C   C8            INY
D36D   B1 48         LDA ($48),Y
D36F   91 4A         STA ($4A),Y
D371   C8            INY
D372   B1 48         LDA ($48),Y
D374   91 4A         STA ($4A),Y
D376   C8            INY
D377   B1 48         LDA ($48),Y
D379   91 4A         STA ($4A),Y
D37B   C8            INY
D37C   B1 48         LDA ($48),Y
D37E   91 4A         STA ($4A),Y
D380   C8            INY
D381   B1 48         LDA ($48),Y
D383   91 4A         STA ($4A),Y
D385   C8            INY
D386   B1 48         LDA ($48),Y
D388   91 4A         STA ($4A),Y
D38A   C8            INY
D38B   B1 48         LDA ($48),Y
D38D   91 4A         STA ($4A),Y
D38F   C8            INY
D390   B1 48         LDA ($48),Y
D392   91 4A         STA ($4A),Y
D394   C8            INY
D395   B1 48         LDA ($48),Y
D397   91 4A         STA ($4A),Y
D399   C8            INY
D39A   B1 48         LDA ($48),Y
D39C   91 4A         STA ($4A),Y
D39E   C8            INY
D39F   B1 48         LDA ($48),Y
D3A1   91 4A         STA ($4A),Y
D3A3   C8            INY
D3A4   B1 48         LDA ($48),Y
D3A6   91 4A         STA ($4A),Y
D3A8   C8            INY
D3A9   B1 48         LDA ($48),Y
D3AB   91 4A         STA ($4A),Y
D3AD   C8            INY
D3AE   B1 48         LDA ($48),Y
D3B0   91 4A         STA ($4A),Y
D3B2   C8            INY
D3B3   B1 48         LDA ($48),Y
D3B5   91 4A         STA ($4A),Y
D3B7   C8            INY
D3B8   B1 48         LDA ($48),Y
D3BA   91 4A         STA ($4A),Y
D3BC   C8            INY
D3BD   B1 48         LDA ($48),Y
D3BF   91 4A         STA ($4A),Y
D3C1   C8            INY
D3C2   B1 48         LDA ($48),Y
D3C4   91 4A         STA ($4A),Y
D3C6   C8            INY
D3C7   B1 48         LDA ($48),Y
D3C9   91 4A         STA ($4A),Y
D3CB   C8            INY
D3CC   B1 48         LDA ($48),Y
D3CE   91 4A         STA ($4A),Y
D3D0   C8            INY
D3D1   B1 48         LDA ($48),Y
D3D3   91 4A         STA ($4A),Y
D3D5   C8            INY
D3D6   B1 48         LDA ($48),Y
D3D8   91 4A         STA ($4A),Y
D3DA   C8            INY
D3DB   B1 48         LDA ($48),Y
D3DD   91 4A         STA ($4A),Y
D3DF   C8            INY
D3E0   B1 48         LDA ($48),Y
D3E2   91 4A         STA ($4A),Y
D3E4   C8            INY
D3E5   B1 48         LDA ($48),Y
D3E7   91 4A         STA ($4A),Y
D3E9   C8            INY
D3EA   B1 48         LDA ($48),Y
D3EC   91 4A         STA ($4A),Y
D3EE   C8            INY
D3EF   B1 48         LDA ($48),Y
D3F1   91 4A         STA ($4A),Y
D3F3   C8            INY
D3F4   B1 48         LDA ($48),Y
D3F6   91 4A         STA ($4A),Y
D3F8   C8            INY
D3F9   B1 48         LDA ($48),Y
D3FB   91 4A         STA ($4A),Y
D3FD   C8            INY
D3FE   B1 48         LDA ($48),Y
D400   91 4A         STA ($4A),Y
D402   C8            INY
D403   B1 48         LDA ($48),Y
D405   91 4A         STA ($4A),Y
D407   C8            INY
D408   B1 48         LDA ($48),Y
D40A   91 4A         STA ($4A),Y
D40C   C8            INY
D40D   B1 48         LDA ($48),Y
D40F   91 4A         STA ($4A),Y
D411   C8            INY
D412   B1 48         LDA ($48),Y
D414   91 4A         STA ($4A),Y
D416   C8            INY
D417   B1 48         LDA ($48),Y
D419   91 4A         STA ($4A),Y
D41B   C8            INY
D41C   B1 48         LDA ($48),Y
D41E   91 4A         STA ($4A),Y
D420   C8            INY
D421   B1 48         LDA ($48),Y
D423   91 4A         STA ($4A),Y
D425   C8            INY
D426   B1 48         LDA ($48),Y
D428   91 4A         STA ($4A),Y
D42A   C8            INY
D42B   B1 48         LDA ($48),Y
D42D   91 4A         STA ($4A),Y
D42F   C8            INY
D430   B1 48         LDA ($48),Y
D432   91 4A         STA ($4A),Y
D434   C8            INY
D435   B1 48         LDA ($48),Y
D437   91 4A         STA ($4A),Y
D439   C8            INY
D43A   B1 48         LDA ($48),Y
D43C   91 4A         STA ($4A),Y
D43E   C8            INY
D43F   B1 48         LDA ($48),Y
D441   91 4A         STA ($4A),Y
D443   C8            INY
D444   B1 48         LDA ($48),Y
D446   91 4A         STA ($4A),Y
D448   C8            INY
D449   B1 48         LDA ($48),Y
D44B   91 4A         STA ($4A),Y
D44D   C8            INY
D44E   B1 48         LDA ($48),Y
D450   91 4A         STA ($4A),Y
D452   C8            INY
D453   B1 48         LDA ($48),Y
D455   91 4A         STA ($4A),Y
D457   C8            INY
D458   B1 48         LDA ($48),Y
D45A   91 4A         STA ($4A),Y
D45C   C8            INY
D45D   B1 48         LDA ($48),Y
D45F   91 4A         STA ($4A),Y
D461   C8            INY
D462   B1 48         LDA ($48),Y
D464   91 4A         STA ($4A),Y
D466   C8            INY
D467   B1 48         LDA ($48),Y
D469   91 4A         STA ($4A),Y
D46B   C8            INY
D46C   B1 48         LDA ($48),Y
D46E   91 4A         STA ($4A),Y
D470   C8            INY
D471   B1 48         LDA ($48),Y
D473   91 4A         STA ($4A),Y
D475   C8            INY
D476   B1 48         LDA ($48),Y
D478   91 4A         STA ($4A),Y
D47A   C8            INY
D47B   B1 48         LDA ($48),Y
D47D   91 4A         STA ($4A),Y
D47F   C8            INY
D480   B1 48         LDA ($48),Y
D482   91 4A         STA ($4A),Y
D484   C8            INY
D485   B1 48         LDA ($48),Y
D487   91 4A         STA ($4A),Y
D489   C8            INY
D48A   B1 48         LDA ($48),Y
D48C   91 4A         STA ($4A),Y
D48E   C8            INY
D48F   B1 48         LDA ($48),Y
D491   91 4A         STA ($4A),Y
D493   C8            INY
D494   B1 48         LDA ($48),Y
D496   91 4A         STA ($4A),Y
D498   C8            INY
D499   B1 48         LDA ($48),Y
D49B   91 4A         STA ($4A),Y
D49D   C8            INY
D49E   B1 48         LDA ($48),Y
D4A0   91 4A         STA ($4A),Y
D4A2   C8            INY
D4A3   B1 48         LDA ($48),Y
D4A5   91 4A         STA ($4A),Y
D4A7   C8            INY
D4A8   B1 48         LDA ($48),Y
D4AA   91 4A         STA ($4A),Y
D4AC   C8            INY
D4AD   B1 48         LDA ($48),Y
D4AF   91 4A         STA ($4A),Y
D4B1   C8            INY
D4B2   B1 48         LDA ($48),Y
D4B4   91 4A         STA ($4A),Y
D4B6   C8            INY
D4B7   B1 48         LDA ($48),Y
D4B9   91 4A         STA ($4A),Y
D4BB   C8            INY
D4BC   B1 48         LDA ($48),Y
D4BE   91 4A         STA ($4A),Y
D4C0   C8            INY
D4C1   B1 48         LDA ($48),Y
D4C3   91 4A         STA ($4A),Y
D4C5   C8            INY
D4C6   B1 48         LDA ($48),Y
D4C8   91 4A         STA ($4A),Y
D4CA   C8            INY
D4CB   B1 48         LDA ($48),Y
D4CD   91 4A         STA ($4A),Y
D4CF   C8            INY
D4D0   B1 48         LDA ($48),Y
D4D2   91 4A         STA ($4A),Y
D4D4   C8            INY
D4D5   B1 48         LDA ($48),Y
D4D7   91 4A         STA ($4A),Y
D4D9   C8            INY
D4DA   B1 48         LDA ($48),Y
D4DC   91 4A         STA ($4A),Y
D4DE   C8            INY
D4DF   B1 48         LDA ($48),Y
D4E1   91 4A         STA ($4A),Y
D4E3   C8            INY
D4E4   B1 48         LDA ($48),Y
D4E6   91 4A         STA ($4A),Y
D4E8   C8            INY
D4E9   B1 48         LDA ($48),Y
D4EB   91 4A         STA ($4A),Y
D4ED   C8            INY
D4EE   B1 48         LDA ($48),Y
D4F0   91 4A         STA ($4A),Y
D4F2   C8            INY
D4F3   B1 48         LDA ($48),Y
D4F5   91 4A         STA ($4A),Y
D4F7   C8            INY
D4F8   B1 48         LDA ($48),Y
D4FA   91 4A         STA ($4A),Y
D4FC   C8            INY
D4FD   B1 48         LDA ($48),Y
D4FF   91 4A         STA ($4A),Y
D501   C8            INY
D502   B1 48         LDA ($48),Y
D504   91 4A         STA ($4A),Y
D506   C8            INY
D507   B1 48         LDA ($48),Y
D509   91 4A         STA ($4A),Y
D50B   C8            INY
D50C   B1 48         LDA ($48),Y
D50E   91 4A         STA ($4A),Y
D510   C8            INY
D511   B1 48         LDA ($48),Y
D513   91 4A         STA ($4A),Y
D515   C8            INY
D516   B1 48         LDA ($48),Y
D518   91 4A         STA ($4A),Y
D51A   C8            INY
D51B   B1 48         LDA ($48),Y
D51D   91 4A         STA ($4A),Y
D51F   C8            INY
D520   B1 48         LDA ($48),Y
D522   91 4A         STA ($4A),Y
D524   C8            INY
D525   B1 48         LDA ($48),Y
D527   91 4A         STA ($4A),Y
D529   C8            INY
D52A   B1 48         LDA ($48),Y
D52C   91 4A         STA ($4A),Y
D52E   C8            INY
D52F   B1 48         LDA ($48),Y
D531   91 4A         STA ($4A),Y
D533   C8            INY
D534   B1 48         LDA ($48),Y
D536   91 4A         STA ($4A),Y
D538   C8            INY
D539   B1 48         LDA ($48),Y
D53B   91 4A         STA ($4A),Y
D53D   C8            INY
D53E   CA            DEX
D53F   F0 07         BEQ $D548
D541   E6 49         INC $49
D543   E6 4B         INC $4B
D545   4C 3E D0      JMP $D03E
D548   60            RTS
D549   54            ???                ;01010100 'T'
D54A   48            PHA
D54B   49 53         EOR #$53
D54D   20 49 53      JSR $5349
D550   20 4C 41      JSR $414C
D553   5A            ???                ;01011010 'Z'
D554   59 21 21      EOR $2121,Y
D557   21 B1         AND ($B1,X)
D559   4A            LSR A
D55A   91 48         STA ($48),Y
D55C   C8            INY
D55D   B1 4A         LDA ($4A),Y
D55F   91 48         STA ($48),Y
D561   C8            INY
D562   B1 4A         LDA ($4A),Y
D564   91 48         STA ($48),Y
D566   C8            INY
D567   B1 4A         LDA ($4A),Y
D569   91 48         STA ($48),Y
D56B   C8            INY
D56C   B1 4A         LDA ($4A),Y
D56E   91 48         STA ($48),Y
D570   C8            INY
D571   B1 4A         LDA ($4A),Y
D573   91 48         STA ($48),Y
D575   C8            INY
D576   B1 4A         LDA ($4A),Y
D578   91 48         STA ($48),Y
D57A   C8            INY
D57B   B1 4A         LDA ($4A),Y
D57D   91 48         STA ($48),Y
D57F   C8            INY
D580   B1 4A         LDA ($4A),Y
D582   91 48         STA ($48),Y
D584   C8            INY
D585   B1 4A         LDA ($4A),Y
D587   91 48         STA ($48),Y
D589   C8            INY
D58A   B1 4A         LDA ($4A),Y
D58C   91 48         STA ($48),Y
D58E   C8            INY
D58F   B1 4A         LDA ($4A),Y
D591   91 48         STA ($48),Y
D593   C8            INY
D594   B1 4A         LDA ($4A),Y
D596   91 48         STA ($48),Y
D598   C8            INY
D599   B1 4A         LDA ($4A),Y
D59B   91 48         STA ($48),Y
D59D   C8            INY
D59E   B1 4A         LDA ($4A),Y
D5A0   91 48         STA ($48),Y
D5A2   C8            INY
D5A3   B1 4A         LDA ($4A),Y
D5A5   91 48         STA ($48),Y
D5A7   C8            INY
D5A8   B1 4A         LDA ($4A),Y
D5AA   91 48         STA ($48),Y
D5AC   C8            INY
D5AD   B1 4A         LDA ($4A),Y
D5AF   91 48         STA ($48),Y
D5B1   C8            INY
D5B2   B1 4A         LDA ($4A),Y
D5B4   91 48         STA ($48),Y
D5B6   C8            INY
D5B7   B1 4A         LDA ($4A),Y
D5B9   91 48         STA ($48),Y
D5BB   C8            INY
D5BC   B1 4A         LDA ($4A),Y
D5BE   91 48         STA ($48),Y
D5C0   C8            INY
D5C1   B1 4A         LDA ($4A),Y
D5C3   91 48         STA ($48),Y
D5C5   C8            INY
D5C6   B1 4A         LDA ($4A),Y
D5C8   91 48         STA ($48),Y
D5CA   C8            INY
D5CB   B1 4A         LDA ($4A),Y
D5CD   91 48         STA ($48),Y
D5CF   C8            INY
D5D0   B1 4A         LDA ($4A),Y
D5D2   91 48         STA ($48),Y
D5D4   C8            INY
D5D5   B1 4A         LDA ($4A),Y
D5D7   91 48         STA ($48),Y
D5D9   C8            INY
D5DA   B1 4A         LDA ($4A),Y
D5DC   91 48         STA ($48),Y
D5DE   C8            INY
D5DF   B1 4A         LDA ($4A),Y
D5E1   91 48         STA ($48),Y
D5E3   C8            INY
D5E4   B1 4A         LDA ($4A),Y
D5E6   91 48         STA ($48),Y
D5E8   C8            INY
D5E9   B1 4A         LDA ($4A),Y
D5EB   91 48         STA ($48),Y
D5ED   C8            INY
D5EE   B1 4A         LDA ($4A),Y
D5F0   91 48         STA ($48),Y
D5F2   C8            INY
D5F3   B1 4A         LDA ($4A),Y
D5F5   91 48         STA ($48),Y
D5F7   C8            INY
D5F8   B1 4A         LDA ($4A),Y
D5FA   91 48         STA ($48),Y
D5FC   C8            INY
D5FD   B1 4A         LDA ($4A),Y
D5FF   91 48         STA ($48),Y
D601   C8            INY
D602   B1 4A         LDA ($4A),Y
D604   91 48         STA ($48),Y
D606   C8            INY
D607   B1 4A         LDA ($4A),Y
D609   91 48         STA ($48),Y
D60B   C8            INY
D60C   B1 4A         LDA ($4A),Y
D60E   91 48         STA ($48),Y
D610   C8            INY
D611   B1 4A         LDA ($4A),Y
D613   91 48         STA ($48),Y
D615   C8            INY
D616   B1 4A         LDA ($4A),Y
D618   91 48         STA ($48),Y
D61A   C8            INY
D61B   B1 4A         LDA ($4A),Y
D61D   91 48         STA ($48),Y
D61F   C8            INY
D620   B1 4A         LDA ($4A),Y
D622   91 48         STA ($48),Y
D624   C8            INY
D625   B1 4A         LDA ($4A),Y
D627   91 48         STA ($48),Y
D629   C8            INY
D62A   B1 4A         LDA ($4A),Y
D62C   91 48         STA ($48),Y
D62E   C8            INY
D62F   B1 4A         LDA ($4A),Y
D631   91 48         STA ($48),Y
D633   C8            INY
D634   B1 4A         LDA ($4A),Y
D636   91 48         STA ($48),Y
D638   C8            INY
D639   B1 4A         LDA ($4A),Y
D63B   91 48         STA ($48),Y
D63D   C8            INY
D63E   B1 4A         LDA ($4A),Y
D640   91 48         STA ($48),Y
D642   C8            INY
D643   B1 4A         LDA ($4A),Y
D645   91 48         STA ($48),Y
D647   C8            INY
D648   B1 4A         LDA ($4A),Y
D64A   91 48         STA ($48),Y
D64C   C8            INY
D64D   B1 4A         LDA ($4A),Y
D64F   91 48         STA ($48),Y
D651   C8            INY
D652   B1 4A         LDA ($4A),Y
D654   91 48         STA ($48),Y
D656   C8            INY
D657   B1 4A         LDA ($4A),Y
D659   91 48         STA ($48),Y
D65B   C8            INY
D65C   B1 4A         LDA ($4A),Y
D65E   91 48         STA ($48),Y
D660   C8            INY
D661   B1 4A         LDA ($4A),Y
D663   91 48         STA ($48),Y
D665   C8            INY
D666   B1 4A         LDA ($4A),Y
D668   91 48         STA ($48),Y
D66A   C8            INY
D66B   B1 4A         LDA ($4A),Y
D66D   91 48         STA ($48),Y
D66F   C8            INY
D670   B1 4A         LDA ($4A),Y
D672   91 48         STA ($48),Y
D674   C8            INY
D675   B1 4A         LDA ($4A),Y
D677   91 48         STA ($48),Y
D679   C8            INY
D67A   B1 4A         LDA ($4A),Y
D67C   91 48         STA ($48),Y
D67E   C8            INY
D67F   B1 4A         LDA ($4A),Y
D681   91 48         STA ($48),Y
D683   C8            INY
D684   B1 4A         LDA ($4A),Y
D686   91 48         STA ($48),Y
D688   C8            INY
D689   B1 4A         LDA ($4A),Y
D68B   91 48         STA ($48),Y
D68D   C8            INY
D68E   B1 4A         LDA ($4A),Y
D690   91 48         STA ($48),Y
D692   C8            INY
D693   B1 4A         LDA ($4A),Y
D695   91 48         STA ($48),Y
D697   C8            INY
D698   B1 4A         LDA ($4A),Y
D69A   91 48         STA ($48),Y
D69C   C8            INY
D69D   B1 4A         LDA ($4A),Y
D69F   91 48         STA ($48),Y
D6A1   C8            INY
D6A2   B1 4A         LDA ($4A),Y
D6A4   91 48         STA ($48),Y
D6A6   C8            INY
D6A7   B1 4A         LDA ($4A),Y
D6A9   91 48         STA ($48),Y
D6AB   C8            INY
D6AC   B1 4A         LDA ($4A),Y
D6AE   91 48         STA ($48),Y
D6B0   C8            INY
D6B1   B1 4A         LDA ($4A),Y
D6B3   91 48         STA ($48),Y
D6B5   C8            INY
D6B6   B1 4A         LDA ($4A),Y
D6B8   91 48         STA ($48),Y
D6BA   C8            INY
D6BB   B1 4A         LDA ($4A),Y
D6BD   91 48         STA ($48),Y
D6BF   C8            INY
D6C0   B1 4A         LDA ($4A),Y
D6C2   91 48         STA ($48),Y
D6C4   C8            INY
D6C5   B1 4A         LDA ($4A),Y
D6C7   91 48         STA ($48),Y
D6C9   C8            INY
D6CA   B1 4A         LDA ($4A),Y
D6CC   91 48         STA ($48),Y
D6CE   C8            INY
D6CF   B1 4A         LDA ($4A),Y
D6D1   91 48         STA ($48),Y
D6D3   C8            INY
D6D4   B1 4A         LDA ($4A),Y
D6D6   91 48         STA ($48),Y
D6D8   C8            INY
D6D9   B1 4A         LDA ($4A),Y
D6DB   91 48         STA ($48),Y
D6DD   C8            INY
D6DE   B1 4A         LDA ($4A),Y
D6E0   91 48         STA ($48),Y
D6E2   C8            INY
D6E3   B1 4A         LDA ($4A),Y
D6E5   91 48         STA ($48),Y
D6E7   C8            INY
D6E8   B1 4A         LDA ($4A),Y
D6EA   91 48         STA ($48),Y
D6EC   C8            INY
D6ED   B1 4A         LDA ($4A),Y
D6EF   91 48         STA ($48),Y
D6F1   C8            INY
D6F2   B1 4A         LDA ($4A),Y
D6F4   91 48         STA ($48),Y
D6F6   C8            INY
D6F7   B1 4A         LDA ($4A),Y
D6F9   91 48         STA ($48),Y
D6FB   C8            INY
D6FC   B1 4A         LDA ($4A),Y
D6FE   91 48         STA ($48),Y
D700   C8            INY
D701   B1 4A         LDA ($4A),Y
D703   91 48         STA ($48),Y
D705   C8            INY
D706   B1 4A         LDA ($4A),Y
D708   91 48         STA ($48),Y
D70A   C8            INY
D70B   B1 4A         LDA ($4A),Y
D70D   91 48         STA ($48),Y
D70F   C8            INY
D710   B1 4A         LDA ($4A),Y
D712   91 48         STA ($48),Y
D714   C8            INY
D715   B1 4A         LDA ($4A),Y
D717   91 48         STA ($48),Y
D719   C8            INY
D71A   B1 4A         LDA ($4A),Y
D71C   91 48         STA ($48),Y
D71E   C8            INY
D71F   B1 4A         LDA ($4A),Y
D721   91 48         STA ($48),Y
D723   C8            INY
D724   B1 4A         LDA ($4A),Y
D726   91 48         STA ($48),Y
D728   C8            INY
D729   B1 4A         LDA ($4A),Y
D72B   91 48         STA ($48),Y
D72D   C8            INY
D72E   B1 4A         LDA ($4A),Y
D730   91 48         STA ($48),Y
D732   C8            INY
D733   B1 4A         LDA ($4A),Y
D735   91 48         STA ($48),Y
D737   C8            INY
D738   B1 4A         LDA ($4A),Y
D73A   91 48         STA ($48),Y
D73C   C8            INY
D73D   B1 4A         LDA ($4A),Y
D73F   91 48         STA ($48),Y
D741   C8            INY
D742   B1 4A         LDA ($4A),Y
D744   91 48         STA ($48),Y
D746   C8            INY
D747   B1 4A         LDA ($4A),Y
D749   91 48         STA ($48),Y
D74B   C8            INY
D74C   B1 4A         LDA ($4A),Y
D74E   91 48         STA ($48),Y
D750   C8            INY
D751   B1 4A         LDA ($4A),Y
D753   91 48         STA ($48),Y
D755   C8            INY
D756   B1 4A         LDA ($4A),Y
D758   91 48         STA ($48),Y
D75A   C8            INY
D75B   B1 4A         LDA ($4A),Y
D75D   91 48         STA ($48),Y
D75F   C8            INY
D760   B1 4A         LDA ($4A),Y
D762   91 48         STA ($48),Y
D764   C8            INY
D765   B1 4A         LDA ($4A),Y
D767   91 48         STA ($48),Y
D769   C8            INY
D76A   B1 4A         LDA ($4A),Y
D76C   91 48         STA ($48),Y
D76E   C8            INY
D76F   B1 4A         LDA ($4A),Y
D771   91 48         STA ($48),Y
D773   C8            INY
D774   B1 4A         LDA ($4A),Y
D776   91 48         STA ($48),Y
D778   C8            INY
D779   B1 4A         LDA ($4A),Y
D77B   91 48         STA ($48),Y
D77D   C8            INY
D77E   B1 4A         LDA ($4A),Y
D780   91 48         STA ($48),Y
D782   C8            INY
D783   B1 4A         LDA ($4A),Y
D785   91 48         STA ($48),Y
D787   C8            INY
D788   B1 4A         LDA ($4A),Y
D78A   91 48         STA ($48),Y
D78C   C8            INY
D78D   B1 4A         LDA ($4A),Y
D78F   91 48         STA ($48),Y
D791   C8            INY
D792   B1 4A         LDA ($4A),Y
D794   91 48         STA ($48),Y
D796   C8            INY
D797   B1 4A         LDA ($4A),Y
D799   91 48         STA ($48),Y
D79B   C8            INY
D79C   B1 4A         LDA ($4A),Y
D79E   91 48         STA ($48),Y
D7A0   C8            INY
D7A1   B1 4A         LDA ($4A),Y
D7A3   91 48         STA ($48),Y
D7A5   C8            INY
D7A6   B1 4A         LDA ($4A),Y
D7A8   91 48         STA ($48),Y
D7AA   C8            INY
D7AB   B1 4A         LDA ($4A),Y
D7AD   91 48         STA ($48),Y
D7AF   C8            INY
D7B0   B1 4A         LDA ($4A),Y
D7B2   91 48         STA ($48),Y
D7B4   C8            INY
D7B5   B1 4A         LDA ($4A),Y
D7B7   91 48         STA ($48),Y
D7B9   C8            INY
D7BA   B1 4A         LDA ($4A),Y
D7BC   91 48         STA ($48),Y
D7BE   C8            INY
D7BF   B1 4A         LDA ($4A),Y
D7C1   91 48         STA ($48),Y
D7C3   C8            INY
D7C4   B1 4A         LDA ($4A),Y
D7C6   91 48         STA ($48),Y
D7C8   C8            INY
D7C9   B1 4A         LDA ($4A),Y
D7CB   91 48         STA ($48),Y
D7CD   C8            INY
D7CE   B1 4A         LDA ($4A),Y
D7D0   91 48         STA ($48),Y
D7D2   C8            INY
D7D3   B1 4A         LDA ($4A),Y
D7D5   91 48         STA ($48),Y
D7D7   C8            INY
D7D8   B1 4A         LDA ($4A),Y
D7DA   91 48         STA ($48),Y
D7DC   C8            INY
D7DD   B1 4A         LDA ($4A),Y
D7DF   91 48         STA ($48),Y
D7E1   C8            INY
D7E2   B1 4A         LDA ($4A),Y
D7E4   91 48         STA ($48),Y
D7E6   C8            INY
D7E7   B1 4A         LDA ($4A),Y
D7E9   91 48         STA ($48),Y
D7EB   C8            INY
D7EC   B1 4A         LDA ($4A),Y
D7EE   91 48         STA ($48),Y
D7F0   C8            INY
D7F1   B1 4A         LDA ($4A),Y
D7F3   91 48         STA ($48),Y
D7F5   C8            INY
D7F6   B1 4A         LDA ($4A),Y
D7F8   91 48         STA ($48),Y
D7FA   C8            INY
D7FB   B1 4A         LDA ($4A),Y
D7FD   91 48         STA ($48),Y
D7FF   C8            INY
D800   B1 4A         LDA ($4A),Y
D802   91 48         STA ($48),Y
D804   C8            INY
D805   B1 4A         LDA ($4A),Y
D807   91 48         STA ($48),Y
D809   C8            INY
D80A   B1 4A         LDA ($4A),Y
D80C   91 48         STA ($48),Y
D80E   C8            INY
D80F   B1 4A         LDA ($4A),Y
D811   91 48         STA ($48),Y
D813   C8            INY
D814   B1 4A         LDA ($4A),Y
D816   91 48         STA ($48),Y
D818   C8            INY
D819   B1 4A         LDA ($4A),Y
D81B   91 48         STA ($48),Y
D81D   C8            INY
D81E   B1 4A         LDA ($4A),Y
D820   91 48         STA ($48),Y
D822   C8            INY
D823   B1 4A         LDA ($4A),Y
D825   91 48         STA ($48),Y
D827   C8            INY
D828   B1 4A         LDA ($4A),Y
D82A   91 48         STA ($48),Y
D82C   C8            INY
D82D   B1 4A         LDA ($4A),Y
D82F   91 48         STA ($48),Y
D831   C8            INY
D832   B1 4A         LDA ($4A),Y
D834   91 48         STA ($48),Y
D836   C8            INY
D837   B1 4A         LDA ($4A),Y
D839   91 48         STA ($48),Y
D83B   C8            INY
D83C   B1 4A         LDA ($4A),Y
D83E   91 48         STA ($48),Y
D840   C8            INY
D841   B1 4A         LDA ($4A),Y
D843   91 48         STA ($48),Y
D845   C8            INY
D846   B1 4A         LDA ($4A),Y
D848   91 48         STA ($48),Y
D84A   C8            INY
D84B   B1 4A         LDA ($4A),Y
D84D   91 48         STA ($48),Y
D84F   C8            INY
D850   B1 4A         LDA ($4A),Y
D852   91 48         STA ($48),Y
D854   C8            INY
D855   B1 4A         LDA ($4A),Y
D857   91 48         STA ($48),Y
D859   C8            INY
D85A   B1 4A         LDA ($4A),Y
D85C   91 48         STA ($48),Y
D85E   C8            INY
D85F   B1 4A         LDA ($4A),Y
D861   91 48         STA ($48),Y
D863   C8            INY
D864   B1 4A         LDA ($4A),Y
D866   91 48         STA ($48),Y
D868   C8            INY
D869   B1 4A         LDA ($4A),Y
D86B   91 48         STA ($48),Y
D86D   C8            INY
D86E   B1 4A         LDA ($4A),Y
D870   91 48         STA ($48),Y
D872   C8            INY
D873   B1 4A         LDA ($4A),Y
D875   91 48         STA ($48),Y
D877   C8            INY
D878   B1 4A         LDA ($4A),Y
D87A   91 48         STA ($48),Y
D87C   C8            INY
D87D   B1 4A         LDA ($4A),Y
D87F   91 48         STA ($48),Y
D881   C8            INY
D882   B1 4A         LDA ($4A),Y
D884   91 48         STA ($48),Y
D886   C8            INY
D887   B1 4A         LDA ($4A),Y
D889   91 48         STA ($48),Y
D88B   C8            INY
D88C   B1 4A         LDA ($4A),Y
D88E   91 48         STA ($48),Y
D890   C8            INY
D891   B1 4A         LDA ($4A),Y
D893   91 48         STA ($48),Y
D895   C8            INY
D896   B1 4A         LDA ($4A),Y
D898   91 48         STA ($48),Y
D89A   C8            INY
D89B   B1 4A         LDA ($4A),Y
D89D   91 48         STA ($48),Y
D89F   C8            INY
D8A0   B1 4A         LDA ($4A),Y
D8A2   91 48         STA ($48),Y
D8A4   C8            INY
D8A5   B1 4A         LDA ($4A),Y
D8A7   91 48         STA ($48),Y
D8A9   C8            INY
D8AA   B1 4A         LDA ($4A),Y
D8AC   91 48         STA ($48),Y
D8AE   C8            INY
D8AF   B1 4A         LDA ($4A),Y
D8B1   91 48         STA ($48),Y
D8B3   C8            INY
D8B4   B1 4A         LDA ($4A),Y
D8B6   91 48         STA ($48),Y
D8B8   C8            INY
D8B9   B1 4A         LDA ($4A),Y
D8BB   91 48         STA ($48),Y
D8BD   C8            INY
D8BE   B1 4A         LDA ($4A),Y
D8C0   91 48         STA ($48),Y
D8C2   C8            INY
D8C3   B1 4A         LDA ($4A),Y
D8C5   91 48         STA ($48),Y
D8C7   C8            INY
D8C8   B1 4A         LDA ($4A),Y
D8CA   91 48         STA ($48),Y
D8CC   C8            INY
D8CD   B1 4A         LDA ($4A),Y
D8CF   91 48         STA ($48),Y
D8D1   C8            INY
D8D2   B1 4A         LDA ($4A),Y
D8D4   91 48         STA ($48),Y
D8D6   C8            INY
D8D7   B1 4A         LDA ($4A),Y
D8D9   91 48         STA ($48),Y
D8DB   C8            INY
D8DC   B1 4A         LDA ($4A),Y
D8DE   91 48         STA ($48),Y
D8E0   C8            INY
D8E1   B1 4A         LDA ($4A),Y
D8E3   91 48         STA ($48),Y
D8E5   C8            INY
D8E6   B1 4A         LDA ($4A),Y
D8E8   91 48         STA ($48),Y
D8EA   C8            INY
D8EB   B1 4A         LDA ($4A),Y
D8ED   91 48         STA ($48),Y
D8EF   C8            INY
D8F0   B1 4A         LDA ($4A),Y
D8F2   91 48         STA ($48),Y
D8F4   C8            INY
D8F5   B1 4A         LDA ($4A),Y
D8F7   91 48         STA ($48),Y
D8F9   C8            INY
D8FA   B1 4A         LDA ($4A),Y
D8FC   91 48         STA ($48),Y
D8FE   C8            INY
D8FF   B1 4A         LDA ($4A),Y
D901   91 48         STA ($48),Y
D903   C8            INY
D904   B1 4A         LDA ($4A),Y
D906   91 48         STA ($48),Y
D908   C8            INY
D909   B1 4A         LDA ($4A),Y
D90B   91 48         STA ($48),Y
D90D   C8            INY
D90E   B1 4A         LDA ($4A),Y
D910   91 48         STA ($48),Y
D912   C8            INY
D913   B1 4A         LDA ($4A),Y
D915   91 48         STA ($48),Y
D917   C8            INY
D918   B1 4A         LDA ($4A),Y
D91A   91 48         STA ($48),Y
D91C   C8            INY
D91D   B1 4A         LDA ($4A),Y
D91F   91 48         STA ($48),Y
D921   C8            INY
D922   B1 4A         LDA ($4A),Y
D924   91 48         STA ($48),Y
D926   C8            INY
D927   B1 4A         LDA ($4A),Y
D929   91 48         STA ($48),Y
D92B   C8            INY
D92C   B1 4A         LDA ($4A),Y
D92E   91 48         STA ($48),Y
D930   C8            INY
D931   B1 4A         LDA ($4A),Y
D933   91 48         STA ($48),Y
D935   C8            INY
D936   B1 4A         LDA ($4A),Y
D938   91 48         STA ($48),Y
D93A   C8            INY
D93B   B1 4A         LDA ($4A),Y
D93D   91 48         STA ($48),Y
D93F   C8            INY
D940   B1 4A         LDA ($4A),Y
D942   91 48         STA ($48),Y
D944   C8            INY
D945   B1 4A         LDA ($4A),Y
D947   91 48         STA ($48),Y
D949   C8            INY
D94A   B1 4A         LDA ($4A),Y
D94C   91 48         STA ($48),Y
D94E   C8            INY
D94F   B1 4A         LDA ($4A),Y
D951   91 48         STA ($48),Y
D953   C8            INY
D954   B1 4A         LDA ($4A),Y
D956   91 48         STA ($48),Y
D958   C8            INY
D959   B1 4A         LDA ($4A),Y
D95B   91 48         STA ($48),Y
D95D   C8            INY
D95E   B1 4A         LDA ($4A),Y
D960   91 48         STA ($48),Y
D962   C8            INY
D963   B1 4A         LDA ($4A),Y
D965   91 48         STA ($48),Y
D967   C8            INY
D968   B1 4A         LDA ($4A),Y
D96A   91 48         STA ($48),Y
D96C   C8            INY
D96D   B1 4A         LDA ($4A),Y
D96F   91 48         STA ($48),Y
D971   C8            INY
D972   B1 4A         LDA ($4A),Y
D974   91 48         STA ($48),Y
D976   C8            INY
D977   B1 4A         LDA ($4A),Y
D979   91 48         STA ($48),Y
D97B   C8            INY
D97C   B1 4A         LDA ($4A),Y
D97E   91 48         STA ($48),Y
D980   C8            INY
D981   B1 4A         LDA ($4A),Y
D983   91 48         STA ($48),Y
D985   C8            INY
D986   B1 4A         LDA ($4A),Y
D988   91 48         STA ($48),Y
D98A   C8            INY
D98B   B1 4A         LDA ($4A),Y
D98D   91 48         STA ($48),Y
D98F   C8            INY
D990   B1 4A         LDA ($4A),Y
D992   91 48         STA ($48),Y
D994   C8            INY
D995   B1 4A         LDA ($4A),Y
D997   91 48         STA ($48),Y
D999   C8            INY
D99A   B1 4A         LDA ($4A),Y
D99C   91 48         STA ($48),Y
D99E   C8            INY
D99F   B1 4A         LDA ($4A),Y
D9A1   91 48         STA ($48),Y
D9A3   C8            INY
D9A4   B1 4A         LDA ($4A),Y
D9A6   91 48         STA ($48),Y
D9A8   C8            INY
D9A9   B1 4A         LDA ($4A),Y
D9AB   91 48         STA ($48),Y
D9AD   C8            INY
D9AE   B1 4A         LDA ($4A),Y
D9B0   91 48         STA ($48),Y
D9B2   C8            INY
D9B3   B1 4A         LDA ($4A),Y
D9B5   91 48         STA ($48),Y
D9B7   C8            INY
D9B8   B1 4A         LDA ($4A),Y
D9BA   91 48         STA ($48),Y
D9BC   C8            INY
D9BD   B1 4A         LDA ($4A),Y
D9BF   91 48         STA ($48),Y
D9C1   C8            INY
D9C2   B1 4A         LDA ($4A),Y
D9C4   91 48         STA ($48),Y
D9C6   C8            INY
D9C7   B1 4A         LDA ($4A),Y
D9C9   91 48         STA ($48),Y
D9CB   C8            INY
D9CC   B1 4A         LDA ($4A),Y
D9CE   91 48         STA ($48),Y
D9D0   C8            INY
D9D1   B1 4A         LDA ($4A),Y
D9D3   91 48         STA ($48),Y
D9D5   C8            INY
D9D6   B1 4A         LDA ($4A),Y
D9D8   91 48         STA ($48),Y
D9DA   C8            INY
D9DB   B1 4A         LDA ($4A),Y
D9DD   91 48         STA ($48),Y
D9DF   C8            INY
D9E0   B1 4A         LDA ($4A),Y
D9E2   91 48         STA ($48),Y
D9E4   C8            INY
D9E5   B1 4A         LDA ($4A),Y
D9E7   91 48         STA ($48),Y
D9E9   C8            INY
D9EA   B1 4A         LDA ($4A),Y
D9EC   91 48         STA ($48),Y
D9EE   C8            INY
D9EF   B1 4A         LDA ($4A),Y
D9F1   91 48         STA ($48),Y
D9F3   C8            INY
D9F4   B1 4A         LDA ($4A),Y
D9F6   91 48         STA ($48),Y
D9F8   C8            INY
D9F9   B1 4A         LDA ($4A),Y
D9FB   91 48         STA ($48),Y
D9FD   C8            INY
D9FE   B1 4A         LDA ($4A),Y
DA00   91 48         STA ($48),Y
DA02   C8            INY
DA03   B1 4A         LDA ($4A),Y
DA05   91 48         STA ($48),Y
DA07   C8            INY
DA08   B1 4A         LDA ($4A),Y
DA0A   91 48         STA ($48),Y
DA0C   C8            INY
DA0D   B1 4A         LDA ($4A),Y
DA0F   91 48         STA ($48),Y
DA11   C8            INY
DA12   B1 4A         LDA ($4A),Y
DA14   91 48         STA ($48),Y
DA16   C8            INY
DA17   B1 4A         LDA ($4A),Y
DA19   91 48         STA ($48),Y
DA1B   C8            INY
DA1C   B1 4A         LDA ($4A),Y
DA1E   91 48         STA ($48),Y
DA20   C8            INY
DA21   B1 4A         LDA ($4A),Y
DA23   91 48         STA ($48),Y
DA25   C8            INY
DA26   B1 4A         LDA ($4A),Y
DA28   91 48         STA ($48),Y
DA2A   C8            INY
DA2B   B1 4A         LDA ($4A),Y
DA2D   91 48         STA ($48),Y
DA2F   C8            INY
DA30   B1 4A         LDA ($4A),Y
DA32   91 48         STA ($48),Y
DA34   C8            INY
DA35   B1 4A         LDA ($4A),Y
DA37   91 48         STA ($48),Y
DA39   C8            INY
DA3A   B1 4A         LDA ($4A),Y
DA3C   91 48         STA ($48),Y
DA3E   C8            INY
DA3F   B1 4A         LDA ($4A),Y
DA41   91 48         STA ($48),Y
DA43   C8            INY
DA44   B1 4A         LDA ($4A),Y
DA46   91 48         STA ($48),Y
DA48   C8            INY
DA49   B1 4A         LDA ($4A),Y
DA4B   91 48         STA ($48),Y
DA4D   C8            INY
DA4E   B1 4A         LDA ($4A),Y
DA50   91 48         STA ($48),Y
DA52   C8            INY
DA53   B1 4A         LDA ($4A),Y
DA55   91 48         STA ($48),Y
DA57   C8            INY
DA58   CA            DEX
DA59   F0 07         BEQ $DA62
DA5B   E6 49         INC $49
DA5D   E6 4B         INC $4B
DA5F   4C 58 D5      JMP $D558
DA62   60            RTS
DA63   A5 38         LDA $38
DA65   48            PHA
DA66   A5 39         LDA $39
DA68   48            PHA
DA69   A5 3A         LDA $3A
DA6B   48            PHA
DA6C   A5 3B         LDA $3B
DA6E   48            PHA
DA6F   A5 3C         LDA $3C
DA71   48            PHA
DA72   A5 3D         LDA $3D
DA74   48            PHA
DA75   A5 3E         LDA $3E
DA77   48            PHA
DA78   A9 30         LDA #$30
DA7A   85 3D         STA $3D
DA7C   A9 B2         LDA #$B2
DA7E   85 3E         STA $3E
DA80   A0 00         LDY #$00
DA82   B9 1F 00      LDA $001F,Y
DA85   85 39         STA $39
DA87   AA            TAX
DA88   C8            INY
DA89   B9 1F 00      LDA $001F,Y
DA8C   85 38         STA $38
DA8E   8A            TXA
DA8F   A2 10         LDX #$10
DA91   85 3A         STA $3A
DA93   18            CLC
DA94   26 38         ROL $38
DA96   26 39         ROL $39
DA98   A9 00         LDA #$00
DA9A   85 3B         STA $3B
DA9C   85 3C         STA $3C
DA9E   24 3A         BIT $3A
DAA0   10 08         BPL $DAAA
DAA2   A9 21         LDA #$21
DAA4   85 3B         STA $3B
DAA6   A9 10         LDA #$10
DAA8   85 3C         STA $3C
DAAA   24 3E         BIT $3E
DAAC   10 0C         BPL $DABA
DAAE   A5 3B         LDA $3B
DAB0   49 21         EOR #$21
DAB2   85 3B         STA $3B
DAB4   A5 3C         LDA $3C
DAB6   49 10         EOR #$10
DAB8   85 3C         STA $3C
DABA   18            CLC
DABB   26 3D         ROL $3D
DABD   26 3E         ROL $3E
DABF   A5 3D         LDA $3D
DAC1   45 3B         EOR $3B
DAC3   85 3D         STA $3D
DAC5   A5 3E         LDA $3E
DAC7   45 3C         EOR $3C
DAC9   85 3E         STA $3E
DACB   A5 39         LDA $39
DACD   CA            DEX
DACE   D0 C1         BNE $DA91
DAD0   C8            INY
DAD1   C0 05         CPY #$05
DAD3   90 AD         BCC $DA82
DAD5   A4 3D         LDY $3D
DAD7   A6 3E         LDX $3E
DAD9   68            PLA
DADA   85 3E         STA $3E
DADC   68            PLA
DADD   85 3D         STA $3D
DADF   68            PLA
DAE0   85 3C         STA $3C
DAE2   68            PLA
DAE3   85 3B         STA $3B
DAE5   68            PLA
DAE6   85 3A         STA $3A
DAE8   68            PLA
DAE9   85 39         STA $39
DAEB   68            PLA
DAEC   85 38         STA $38
DAEE   C0 00         CPY #$00
DAF0   D0 06         BNE $DAF8
DAF2   E0 00         CPX #$00
DAF4   D0 02         BNE $DAF8
DAF6   18            CLC
DAF7   60            RTS
DAF8   A9 09         LDA #$09
DAFA   4C CC CD      JMP $CDCC
DAFD   48            PHA
DAFE   8A            TXA
DAFF   48            PHA
DB00   98            TYA
DB01   48            PHA
DB02   AD 0D 40      LDA $400D
DB05   A8            TAY
DB06   25 76         AND $76
DB08   29 08         AND #$08
DB0A   F0 06         BEQ $DB12
DB0C   A5 76         LDA $76
DB0E   09 20         ORA #$20
DB10   85 76         STA $76
DB12   98            TYA
DB13   29 10         AND #$10
DB15   F0 06         BEQ $DB1D
DB17   A5 76         LDA $76
DB19   09 01         ORA #$01
DB1B   85 76         STA $76
DB1D   98            TYA
DB1E   29 02         AND #$02
DB20   F0 03         BEQ $DB25
DB22   20 39 FF      JSR $FF39
DB25   BA            TSX
DB26   BD 04 01      LDA $0104,X
DB29   29 10         AND #$10
DB2B   F0 03         BEQ $DB30
DB2D   20 39 FF      JSR $FF39
DB30   68            PLA
DB31   A8            TAY
DB32   68            PLA
DB33   AA            TAX
DB34   68            PLA
DB35   40            RTI
DB36   11 BB         ORA ($BB),Y
DB38   FA            ???                ;11111010
DB39   BA            TSX
DB3A   01 BC         ORA ($BC,X)
DB3C   F9 BB B2      SBC $B2BB,Y
DB3F   BC FA BA      LDY $BAFA,X
DB42   12            ???                ;00010010
DB43   BD 12 BD      LDA $BD12,X
DB46   FC            ???                ;11111100
DB47   BD FC BD      LDA $BDFC,X
DB4A   06 BE         ASL $BE
DB4C   FA            ???                ;11111010
DB4D   BA            TSX
DB4E   BB            ???                ;10111011
DB4F   BE FA BA      LDX $BAFA,Y
DB52   F8            SED
DB53   BE F8 BE      LDX $BEF8,Y
DB56   11 BB         ORA ($BB),Y
DB58   FA            ???                ;11111010
DB59   BA            TSX
DB5A   01 BC         ORA ($BC,X)
DB5C   F9 BB B2      SBC $B2BB,Y
DB5F   BC FA BA      LDY $BAFA,X
DB62   12            ???                ;00010010
DB63   BD 12 BD      LDA $BD12,X
DB66   CB            ???                ;11001011
DB67   89            ???                ;10001001
DB68   CB            ???                ;11001011
DB69   89            ???                ;10001001
DB6A   06 BE         ASL $BE
DB6C   FA            ???                ;11111010
DB6D   BA            TSX
DB6E   02            ???                ;00000010
DB6F   BF            ???                ;10111111
DB70   02            ???                ;00000010
DB71   BF            ???                ;10111111
DB72   3C            ???                ;00111100 '<'
DB73   AA            TAX
DB74   D5 B8         CMP $B8,X
DB76   06 04         ASL $04
DB78   56 49         LSR $49,X
DB7A   2F            ???                ;00101111 '/'
DB7B   4D 42 55      EOR $5542
DB7E   50 26         BVC $DBA6
DB80   43            ???                ;01000011 'C'
DB81   52            ???                ;01010010 'R'
DB82   53            ???                ;01010011 'S'
DB83   4E 09 0C      LSR $0C09
DB86   0F            ???                ;00001111
DB87   12            ???                ;00010010
DB88   15 18         ORA $18,X
DB8A   1B            ???                ;00011011
DB8B   1E 21 24      ASL $2421,X
DB8E   27            ???                ;00100111 '''
DB8F   2A            ROL A
DB90   FF            ???                ;11111111
DB91   FF            ???                ;11111111
DB92   FF            ???                ;11111111
DB93   FF            ???                ;11111111
DB94   FF            ???                ;11111111
DB95   FF            ???                ;11111111
DB96   FF            ???                ;11111111
DB97   FF            ???                ;11111111
DB98   FF            ???                ;11111111
DB99   FF            ???                ;11111111
DB9A   FF            ???                ;11111111
DB9B   FF            ???                ;11111111
DB9C   51 DD         EOR ($DD),Y
DB9E   1C            ???                ;00011100
DB9F   9E            ???                ;10011110
DBA0   1C            ???                ;00011100
DBA1   52            ???                ;01010010 'R'
DBA2   57            ???                ;01010111 'W'
DBA3   41 4D         EOR ($4D,X)
DBA5   44            ???                ;01000100 'D'
DBA6   53            ???                ;01010011 'S'
DBA7   50 55         BVC $DBFE
DBA9   4C 43 44      JMP $4443
DBAC   53            ???                ;01010011 'S'
DBAD   50 55         BVC $DC04
DBAF   52            ???                ;01010010 'R'
DBB0   43            ???                ;01000011 'C'
DBB1   45 45         EOR $45
DBB3   52            ???                ;01010010 'R'
DBB4   53            ???                ;01010011 'S'
DBB5   45 42         EOR $42
DBB7   4C 51 47      JMP $4751
DBBA   52            ???                ;01010010 'R'
DBBB   4C 4D 00      JMP $004D
DBBE   3F            ???                ;00111111 '?'
DBBF   7F            ???                ;01111111
DBC0   BF            ???                ;10111111
DBC1   FF            ???                ;11111111
DBC2   01 FF         ORA ($FF,X)
DBC4   FF            ???                ;11111111
DBC5   01 00         ORA ($00,X)
DBC7   8D 0E 40      STA $400E
DBCA   AD 01 40      LDA $4001
DBCD   09 20         ORA #$20
DBCF   8D 01 40      STA $4001
DBD2   AD 0E 40      LDA $400E
DBD5   09 40         ORA #$40
DBD7   8D 0E 40      STA $400E
DBDA   29 BF         AND #$BF
DBDC   8D 0E 40      STA $400E
DBDF   60            RTS
DBE0   8D 0E 40      STA $400E
DBE3   29 BF         AND #$BF
DBE5   8D 0E 40      STA $400E
DBE8   09 40         ORA #$40
DBEA   8D 0E 40      STA $400E
DBED   60            RTS
DBEE   20 15 B5      JSR $B515
DBF1   4C 01 87      JMP $8701
DBF4   20 9D 95      JSR $959D
DBF7   C9 02         CMP #$02
DBF9   B0 05         BCS $DC00
DBFB   A9 B0         LDA #$B0
DBFD   20 9D 95      JSR $959D
DC00   60            RTS
DC01   28            PLP
DC02   43            ???                ;01000011 'C'
DC03   29 31         AND #$31
DC05   39 38 37      AND $3738,Y
DC08   20 43 4F      JSR $4F43
DC0B   4D 4D 4F      EOR $4F4D
DC0E   44            ???                ;01000100 'D'
DC0F   4F            ???                ;01001111 'O'
DC10   52            ???                ;01010010 'R'
DC11   45 20         EOR $20
DC13   45 4C         EOR $4C
DC15   45 43         EOR $43
DC17   54            ???                ;01010100 'T'
DC18   52            ???                ;01010010 'R'
DC19   4F            ???                ;01001111 'O'
DC1A   4E 49 43      LSR $4349
DC1D   53            ???                ;01010011 'S'
DC1E   20 4C 54      JSR $544C
DC21   44            ???                ;01000100 'D'
DC22   2E 2C 20      ROL $202C
DC25   41 4C         EOR ($4C,X)
DC27   4C 20 52      JMP $5220
DC2A   49 47         EOR #$47
DC2C   48            PHA
DC2D   54            ???                ;01010100 'T'
DC2E   53            ???                ;01010011 'S'
DC2F   20 52 45      JSR $4552
DC32   53            ???                ;01010011 'S'
DC33   45 52         EOR $52
DC35   56 45         LSR $45,X
DC37   44            ???                ;01000100 'D'
DC38   FF            ???                ;11111111
DC39   FF            ???                ;11111111
DC3A   FF            ???                ;11111111
DC3B   FF            ???                ;11111111
DC3C   FF            ???                ;11111111
DC3D   FF            ???                ;11111111
DC3E   FF            ???                ;11111111
DC3F   FF            ???                ;11111111
DC40   FF            ???                ;11111111
DC41   FF            ???                ;11111111
DC42   FF            ???                ;11111111
DC43   FF            ???                ;11111111
DC44   FF            ???                ;11111111
DC45   FF            ???                ;11111111
DC46   FF            ???                ;11111111
DC47   FF            ???                ;11111111
DC48   FF            ???                ;11111111
DC49   FF            ???                ;11111111
DC4A   FF            ???                ;11111111
DC4B   FF            ???                ;11111111
DC4C   FF            ???                ;11111111
DC4D   FF            ???                ;11111111
DC4E   FF            ???                ;11111111
DC4F   FF            ???                ;11111111
DC50   FF            ???                ;11111111
DC51   FF            ???                ;11111111
DC52   FF            ???                ;11111111
DC53   FF            ???                ;11111111
DC54   FF            ???                ;11111111
DC55   FF            ???                ;11111111
DC56   FF            ???                ;11111111
DC57   FF            ???                ;11111111
DC58   FF            ???                ;11111111
DC59   FF            ???                ;11111111
DC5A   FF            ???                ;11111111
DC5B   FF            ???                ;11111111
DC5C   FF            ???                ;11111111
DC5D   FF            ???                ;11111111
DC5E   FF            ???                ;11111111
DC5F   FF            ???                ;11111111
DC60   FF            ???                ;11111111
DC61   FF            ???                ;11111111
DC62   FF            ???                ;11111111
DC63   FF            ???                ;11111111
DC64   FF            ???                ;11111111
DC65   FF            ???                ;11111111
DC66   FF            ???                ;11111111
DC67   FF            ???                ;11111111
DC68   FF            ???                ;11111111
DC69   FF            ???                ;11111111
DC6A   FF            ???                ;11111111
DC6B   FF            ???                ;11111111
DC6C   FF            ???                ;11111111
DC6D   FF            ???                ;11111111
DC6E   FF            ???                ;11111111
DC6F   FF            ???                ;11111111
DC70   FF            ???                ;11111111
DC71   FF            ???                ;11111111
DC72   FF            ???                ;11111111
DC73   FF            ???                ;11111111
DC74   FF            ???                ;11111111
DC75   FF            ???                ;11111111
DC76   FF            ???                ;11111111
DC77   FF            ???                ;11111111
DC78   FF            ???                ;11111111
DC79   FF            ???                ;11111111
DC7A   FF            ???                ;11111111
DC7B   FF            ???                ;11111111
DC7C   FF            ???                ;11111111
DC7D   FF            ???                ;11111111
DC7E   FF            ???                ;11111111
DC7F   FF            ???                ;11111111
DC80   FF            ???                ;11111111
DC81   FF            ???                ;11111111
DC82   FF            ???                ;11111111
DC83   FF            ???                ;11111111
DC84   FF            ???                ;11111111
DC85   FF            ???                ;11111111
DC86   FF            ???                ;11111111
DC87   FF            ???                ;11111111
DC88   FF            ???                ;11111111
DC89   FF            ???                ;11111111
DC8A   FF            ???                ;11111111
DC8B   FF            ???                ;11111111
DC8C   FF            ???                ;11111111
DC8D   FF            ???                ;11111111
DC8E   FF            ???                ;11111111
DC8F   FF            ???                ;11111111
DC90   FF            ???                ;11111111
DC91   FF            ???                ;11111111
DC92   FF            ???                ;11111111
DC93   FF            ???                ;11111111
DC94   FF            ???                ;11111111
DC95   FF            ???                ;11111111
DC96   FF            ???                ;11111111
DC97   FF            ???                ;11111111
DC98   FF            ???                ;11111111
DC99   FF            ???                ;11111111
DC9A   FF            ???                ;11111111
DC9B   FF            ???                ;11111111
DC9C   FF            ???                ;11111111
DC9D   FF            ???                ;11111111
DC9E   FF            ???                ;11111111
DC9F   FF            ???                ;11111111
DCA0   FF            ???                ;11111111
DCA1   FF            ???                ;11111111
DCA2   FF            ???                ;11111111
DCA3   FF            ???                ;11111111
DCA4   FF            ???                ;11111111
DCA5   FF            ???                ;11111111
DCA6   FF            ???                ;11111111
DCA7   FF            ???                ;11111111
DCA8   FF            ???                ;11111111
DCA9   FF            ???                ;11111111
DCAA   FF            ???                ;11111111
DCAB   FF            ???                ;11111111
DCAC   FF            ???                ;11111111
DCAD   FF            ???                ;11111111
DCAE   FF            ???                ;11111111
DCAF   FF            ???                ;11111111
DCB0   FF            ???                ;11111111
DCB1   FF            ???                ;11111111
DCB2   FF            ???                ;11111111
DCB3   FF            ???                ;11111111
DCB4   FF            ???                ;11111111
DCB5   FF            ???                ;11111111
DCB6   FF            ???                ;11111111
DCB7   FF            ???                ;11111111
DCB8   FF            ???                ;11111111
DCB9   FF            ???                ;11111111
DCBA   FF            ???                ;11111111
DCBB   FF            ???                ;11111111
DCBC   FF            ???                ;11111111
DCBD   FF            ???                ;11111111
DCBE   FF            ???                ;11111111
DCBF   FF            ???                ;11111111
DCC0   FF            ???                ;11111111
DCC1   FF            ???                ;11111111
DCC2   FF            ???                ;11111111
DCC3   FF            ???                ;11111111
DCC4   FF            ???                ;11111111
DCC5   FF            ???                ;11111111
DCC6   FF            ???                ;11111111
DCC7   FF            ???                ;11111111
DCC8   FF            ???                ;11111111
DCC9   FF            ???                ;11111111
DCCA   FF            ???                ;11111111
DCCB   FF            ???                ;11111111
DCCC   FF            ???                ;11111111
DCCD   FF            ???                ;11111111
DCCE   FF            ???                ;11111111
DCCF   FF            ???                ;11111111
DCD0   FF            ???                ;11111111
DCD1   FF            ???                ;11111111
DCD2   FF            ???                ;11111111
DCD3   FF            ???                ;11111111
DCD4   FF            ???                ;11111111
DCD5   FF            ???                ;11111111
DCD6   FF            ???                ;11111111
DCD7   FF            ???                ;11111111
DCD8   FF            ???                ;11111111
DCD9   FF            ???                ;11111111
DCDA   FF            ???                ;11111111
DCDB   FF            ???                ;11111111
DCDC   FF            ???                ;11111111
DCDD   FF            ???                ;11111111
DCDE   FF            ???                ;11111111
DCDF   FF            ???                ;11111111
DCE0   FF            ???                ;11111111
DCE1   FF            ???                ;11111111
DCE2   FF            ???                ;11111111
DCE3   FF            ???                ;11111111
DCE4   FF            ???                ;11111111
DCE5   FF            ???                ;11111111
DCE6   FF            ???                ;11111111
DCE7   FF            ???                ;11111111
DCE8   FF            ???                ;11111111
DCE9   FF            ???                ;11111111
DCEA   FF            ???                ;11111111
DCEB   FF            ???                ;11111111
DCEC   FF            ???                ;11111111
DCED   FF            ???                ;11111111
DCEE   FF            ???                ;11111111
DCEF   FF            ???                ;11111111
DCF0   FF            ???                ;11111111
DCF1   FF            ???                ;11111111
DCF2   FF            ???                ;11111111
DCF3   FF            ???                ;11111111
DCF4   FF            ???                ;11111111
DCF5   FF            ???                ;11111111
DCF6   FF            ???                ;11111111
DCF7   FF            ???                ;11111111
DCF8   FF            ???                ;11111111
DCF9   FF            ???                ;11111111
DCFA   FF            ???                ;11111111
DCFB   FF            ???                ;11111111
DCFC   FF            ???                ;11111111
DCFD   FF            ???                ;11111111
DCFE   FF            ???                ;11111111
DCFF   FF            ???                ;11111111
DD00   FF            ???                ;11111111
DD01   FF            ???                ;11111111
DD02   FF            ???                ;11111111
DD03   FF            ???                ;11111111
DD04   FF            ???                ;11111111
DD05   FF            ???                ;11111111
DD06   FF            ???                ;11111111
DD07   FF            ???                ;11111111
DD08   FF            ???                ;11111111
DD09   FF            ???                ;11111111
DD0A   FF            ???                ;11111111
DD0B   FF            ???                ;11111111
DD0C   FF            ???                ;11111111
DD0D   FF            ???                ;11111111
DD0E   FF            ???                ;11111111
DD0F   FF            ???                ;11111111
DD10   FF            ???                ;11111111
DD11   FF            ???                ;11111111
DD12   FF            ???                ;11111111
DD13   FF            ???                ;11111111
DD14   FF            ???                ;11111111
DD15   FF            ???                ;11111111
DD16   FF            ???                ;11111111
DD17   FF            ???                ;11111111
DD18   FF            ???                ;11111111
DD19   FF            ???                ;11111111
DD1A   FF            ???                ;11111111
DD1B   FF            ???                ;11111111
DD1C   FF            ???                ;11111111
DD1D   FF            ???                ;11111111
DD1E   FF            ???                ;11111111
DD1F   FF            ???                ;11111111
DD20   FF            ???                ;11111111
DD21   FF            ???                ;11111111
DD22   FF            ???                ;11111111
DD23   FF            ???                ;11111111
DD24   FF            ???                ;11111111
DD25   FF            ???                ;11111111
DD26   FF            ???                ;11111111
DD27   FF            ???                ;11111111
DD28   FF            ???                ;11111111
DD29   FF            ???                ;11111111
DD2A   FF            ???                ;11111111
DD2B   FF            ???                ;11111111
DD2C   FF            ???                ;11111111
DD2D   FF            ???                ;11111111
DD2E   FF            ???                ;11111111
DD2F   FF            ???                ;11111111
DD30   FF            ???                ;11111111
DD31   FF            ???                ;11111111
DD32   FF            ???                ;11111111
DD33   FF            ???                ;11111111
DD34   FF            ???                ;11111111
DD35   FF            ???                ;11111111
DD36   FF            ???                ;11111111
DD37   FF            ???                ;11111111
DD38   FF            ???                ;11111111
DD39   FF            ???                ;11111111
DD3A   FF            ???                ;11111111
DD3B   FF            ???                ;11111111
DD3C   FF            ???                ;11111111
DD3D   FF            ???                ;11111111
DD3E   FF            ???                ;11111111
DD3F   FF            ???                ;11111111
DD40   FF            ???                ;11111111
DD41   FF            ???                ;11111111
DD42   FF            ???                ;11111111
DD43   FF            ???                ;11111111
DD44   FF            ???                ;11111111
DD45   FF            ???                ;11111111
DD46   FF            ???                ;11111111
DD47   FF            ???                ;11111111
DD48   FF            ???                ;11111111
DD49   FF            ???                ;11111111
DD4A   FF            ???                ;11111111
DD4B   FF            ???                ;11111111
DD4C   FF            ???                ;11111111
DD4D   FF            ???                ;11111111
DD4E   FF            ???                ;11111111
DD4F   FF            ???                ;11111111
DD50   FF            ???                ;11111111
DD51   FF            ???                ;11111111
DD52   FF            ???                ;11111111
DD53   FF            ???                ;11111111
DD54   FF            ???                ;11111111
DD55   FF            ???                ;11111111
DD56   FF            ???                ;11111111
DD57   FF            ???                ;11111111
DD58   FF            ???                ;11111111
DD59   FF            ???                ;11111111
DD5A   FF            ???                ;11111111
DD5B   FF            ???                ;11111111
DD5C   FF            ???                ;11111111
DD5D   FF            ???                ;11111111
DD5E   FF            ???                ;11111111
DD5F   FF            ???                ;11111111
DD60   FF            ???                ;11111111
DD61   FF            ???                ;11111111
DD62   FF            ???                ;11111111
DD63   FF            ???                ;11111111
DD64   FF            ???                ;11111111
DD65   FF            ???                ;11111111
DD66   FF            ???                ;11111111
DD67   FF            ???                ;11111111
DD68   FF            ???                ;11111111
DD69   FF            ???                ;11111111
DD6A   FF            ???                ;11111111
DD6B   FF            ???                ;11111111
DD6C   FF            ???                ;11111111
DD6D   FF            ???                ;11111111
DD6E   FF            ???                ;11111111
DD6F   FF            ???                ;11111111
DD70   FF            ???                ;11111111
DD71   FF            ???                ;11111111
DD72   FF            ???                ;11111111
DD73   FF            ???                ;11111111
DD74   FF            ???                ;11111111
DD75   FF            ???                ;11111111
DD76   FF            ???                ;11111111
DD77   FF            ???                ;11111111
DD78   FF            ???                ;11111111
DD79   FF            ???                ;11111111
DD7A   FF            ???                ;11111111
DD7B   FF            ???                ;11111111
DD7C   FF            ???                ;11111111
DD7D   FF            ???                ;11111111
DD7E   FF            ???                ;11111111
DD7F   FF            ???                ;11111111
DD80   FF            ???                ;11111111
DD81   FF            ???                ;11111111
DD82   FF            ???                ;11111111
DD83   FF            ???                ;11111111
DD84   FF            ???                ;11111111
DD85   FF            ???                ;11111111
DD86   FF            ???                ;11111111
DD87   FF            ???                ;11111111
DD88   FF            ???                ;11111111
DD89   FF            ???                ;11111111
DD8A   FF            ???                ;11111111
DD8B   FF            ???                ;11111111
DD8C   FF            ???                ;11111111
DD8D   FF            ???                ;11111111
DD8E   FF            ???                ;11111111
DD8F   FF            ???                ;11111111
DD90   FF            ???                ;11111111
DD91   FF            ???                ;11111111
DD92   FF            ???                ;11111111
DD93   FF            ???                ;11111111
DD94   FF            ???                ;11111111
DD95   FF            ???                ;11111111
DD96   FF            ???                ;11111111
DD97   FF            ???                ;11111111
DD98   FF            ???                ;11111111
DD99   FF            ???                ;11111111
DD9A   FF            ???                ;11111111
DD9B   FF            ???                ;11111111
DD9C   FF            ???                ;11111111
DD9D   FF            ???                ;11111111
DD9E   FF            ???                ;11111111
DD9F   FF            ???                ;11111111
DDA0   FF            ???                ;11111111
DDA1   FF            ???                ;11111111
DDA2   FF            ???                ;11111111
DDA3   FF            ???                ;11111111
DDA4   FF            ???                ;11111111
DDA5   FF            ???                ;11111111
DDA6   FF            ???                ;11111111
DDA7   FF            ???                ;11111111
DDA8   FF            ???                ;11111111
DDA9   FF            ???                ;11111111
DDAA   FF            ???                ;11111111
DDAB   FF            ???                ;11111111
DDAC   FF            ???                ;11111111
DDAD   FF            ???                ;11111111
DDAE   FF            ???                ;11111111
DDAF   FF            ???                ;11111111
DDB0   FF            ???                ;11111111
DDB1   FF            ???                ;11111111
DDB2   FF            ???                ;11111111
DDB3   FF            ???                ;11111111
DDB4   FF            ???                ;11111111
DDB5   FF            ???                ;11111111
DDB6   FF            ???                ;11111111
DDB7   FF            ???                ;11111111
DDB8   FF            ???                ;11111111
DDB9   FF            ???                ;11111111
DDBA   FF            ???                ;11111111
DDBB   FF            ???                ;11111111
DDBC   FF            ???                ;11111111
DDBD   FF            ???                ;11111111
DDBE   FF            ???                ;11111111
DDBF   FF            ???                ;11111111
DDC0   FF            ???                ;11111111
DDC1   FF            ???                ;11111111
DDC2   FF            ???                ;11111111
DDC3   FF            ???                ;11111111
DDC4   FF            ???                ;11111111
DDC5   FF            ???                ;11111111
DDC6   FF            ???                ;11111111
DDC7   FF            ???                ;11111111
DDC8   FF            ???                ;11111111
DDC9   FF            ???                ;11111111
DDCA   FF            ???                ;11111111
DDCB   FF            ???                ;11111111
DDCC   FF            ???                ;11111111
DDCD   FF            ???                ;11111111
DDCE   FF            ???                ;11111111
DDCF   FF            ???                ;11111111
DDD0   FF            ???                ;11111111
DDD1   FF            ???                ;11111111
DDD2   FF            ???                ;11111111
DDD3   FF            ???                ;11111111
DDD4   FF            ???                ;11111111
DDD5   FF            ???                ;11111111
DDD6   FF            ???                ;11111111
DDD7   FF            ???                ;11111111
DDD8   FF            ???                ;11111111
DDD9   FF            ???                ;11111111
DDDA   FF            ???                ;11111111
DDDB   FF            ???                ;11111111
DDDC   FF            ???                ;11111111
DDDD   FF            ???                ;11111111
DDDE   FF            ???                ;11111111
DDDF   FF            ???                ;11111111
DDE0   FF            ???                ;11111111
DDE1   FF            ???                ;11111111
DDE2   FF            ???                ;11111111
DDE3   FF            ???                ;11111111
DDE4   FF            ???                ;11111111
DDE5   FF            ???                ;11111111
DDE6   FF            ???                ;11111111
DDE7   FF            ???                ;11111111
DDE8   FF            ???                ;11111111
DDE9   FF            ???                ;11111111
DDEA   FF            ???                ;11111111
DDEB   FF            ???                ;11111111
DDEC   FF            ???                ;11111111
DDED   FF            ???                ;11111111
DDEE   FF            ???                ;11111111
DDEF   FF            ???                ;11111111
DDF0   FF            ???                ;11111111
DDF1   FF            ???                ;11111111
DDF2   FF            ???                ;11111111
DDF3   FF            ???                ;11111111
DDF4   FF            ???                ;11111111
DDF5   FF            ???                ;11111111
DDF6   FF            ???                ;11111111
DDF7   FF            ???                ;11111111
DDF8   FF            ???                ;11111111
DDF9   FF            ???                ;11111111
DDFA   FF            ???                ;11111111
DDFB   FF            ???                ;11111111
DDFC   FF            ???                ;11111111
DDFD   FF            ???                ;11111111
DDFE   FF            ???                ;11111111
DDFF   FF            ???                ;11111111
DE00   FF            ???                ;11111111
DE01   FF            ???                ;11111111
DE02   FF            ???                ;11111111
DE03   FF            ???                ;11111111
DE04   FF            ???                ;11111111
DE05   FF            ???                ;11111111
DE06   FF            ???                ;11111111
DE07   FF            ???                ;11111111
DE08   FF            ???                ;11111111
DE09   FF            ???                ;11111111
DE0A   FF            ???                ;11111111
DE0B   FF            ???                ;11111111
DE0C   FF            ???                ;11111111
DE0D   FF            ???                ;11111111
DE0E   FF            ???                ;11111111
DE0F   FF            ???                ;11111111
DE10   FF            ???                ;11111111
DE11   FF            ???                ;11111111
DE12   FF            ???                ;11111111
DE13   FF            ???                ;11111111
DE14   FF            ???                ;11111111
DE15   FF            ???                ;11111111
DE16   FF            ???                ;11111111
DE17   FF            ???                ;11111111
DE18   FF            ???                ;11111111
DE19   FF            ???                ;11111111
DE1A   FF            ???                ;11111111
DE1B   FF            ???                ;11111111
DE1C   FF            ???                ;11111111
DE1D   FF            ???                ;11111111
DE1E   FF            ???                ;11111111
DE1F   FF            ???                ;11111111
DE20   FF            ???                ;11111111
DE21   FF            ???                ;11111111
DE22   FF            ???                ;11111111
DE23   FF            ???                ;11111111
DE24   FF            ???                ;11111111
DE25   FF            ???                ;11111111
DE26   FF            ???                ;11111111
DE27   FF            ???                ;11111111
DE28   FF            ???                ;11111111
DE29   FF            ???                ;11111111
DE2A   FF            ???                ;11111111
DE2B   FF            ???                ;11111111
DE2C   FF            ???                ;11111111
DE2D   FF            ???                ;11111111
DE2E   FF            ???                ;11111111
DE2F   FF            ???                ;11111111
DE30   FF            ???                ;11111111
DE31   FF            ???                ;11111111
DE32   FF            ???                ;11111111
DE33   FF            ???                ;11111111
DE34   FF            ???                ;11111111
DE35   FF            ???                ;11111111
DE36   FF            ???                ;11111111
DE37   FF            ???                ;11111111
DE38   FF            ???                ;11111111
DE39   FF            ???                ;11111111
DE3A   FF            ???                ;11111111
DE3B   FF            ???                ;11111111
DE3C   FF            ???                ;11111111
DE3D   FF            ???                ;11111111
DE3E   FF            ???                ;11111111
DE3F   FF            ???                ;11111111
DE40   FF            ???                ;11111111
DE41   FF            ???                ;11111111
DE42   FF            ???                ;11111111
DE43   FF            ???                ;11111111
DE44   FF            ???                ;11111111
DE45   FF            ???                ;11111111
DE46   FF            ???                ;11111111
DE47   FF            ???                ;11111111
DE48   FF            ???                ;11111111
DE49   FF            ???                ;11111111
DE4A   FF            ???                ;11111111
DE4B   FF            ???                ;11111111
DE4C   FF            ???                ;11111111
DE4D   FF            ???                ;11111111
DE4E   FF            ???                ;11111111
DE4F   FF            ???                ;11111111
DE50   FF            ???                ;11111111
DE51   FF            ???                ;11111111
DE52   FF            ???                ;11111111
DE53   FF            ???                ;11111111
DE54   FF            ???                ;11111111
DE55   FF            ???                ;11111111
DE56   FF            ???                ;11111111
DE57   FF            ???                ;11111111
DE58   FF            ???                ;11111111
DE59   FF            ???                ;11111111
DE5A   FF            ???                ;11111111
DE5B   FF            ???                ;11111111
DE5C   FF            ???                ;11111111
DE5D   FF            ???                ;11111111
DE5E   FF            ???                ;11111111
DE5F   FF            ???                ;11111111
DE60   FF            ???                ;11111111
DE61   FF            ???                ;11111111
DE62   FF            ???                ;11111111
DE63   FF            ???                ;11111111
DE64   FF            ???                ;11111111
DE65   FF            ???                ;11111111
DE66   FF            ???                ;11111111
DE67   FF            ???                ;11111111
DE68   FF            ???                ;11111111
DE69   FF            ???                ;11111111
DE6A   FF            ???                ;11111111
DE6B   FF            ???                ;11111111
DE6C   FF            ???                ;11111111
DE6D   FF            ???                ;11111111
DE6E   FF            ???                ;11111111
DE6F   FF            ???                ;11111111
DE70   FF            ???                ;11111111
DE71   FF            ???                ;11111111
DE72   FF            ???                ;11111111
DE73   FF            ???                ;11111111
DE74   FF            ???                ;11111111
DE75   FF            ???                ;11111111
DE76   FF            ???                ;11111111
DE77   FF            ???                ;11111111
DE78   FF            ???                ;11111111
DE79   FF            ???                ;11111111
DE7A   FF            ???                ;11111111
DE7B   FF            ???                ;11111111
DE7C   FF            ???                ;11111111
DE7D   FF            ???                ;11111111
DE7E   FF            ???                ;11111111
DE7F   FF            ???                ;11111111
DE80   FF            ???                ;11111111
DE81   FF            ???                ;11111111
DE82   FF            ???                ;11111111
DE83   FF            ???                ;11111111
DE84   FF            ???                ;11111111
DE85   FF            ???                ;11111111
DE86   FF            ???                ;11111111
DE87   FF            ???                ;11111111
DE88   FF            ???                ;11111111
DE89   FF            ???                ;11111111
DE8A   FF            ???                ;11111111
DE8B   FF            ???                ;11111111
DE8C   FF            ???                ;11111111
DE8D   FF            ???                ;11111111
DE8E   FF            ???                ;11111111
DE8F   FF            ???                ;11111111
DE90   FF            ???                ;11111111
DE91   FF            ???                ;11111111
DE92   FF            ???                ;11111111
DE93   FF            ???                ;11111111
DE94   FF            ???                ;11111111
DE95   FF            ???                ;11111111
DE96   FF            ???                ;11111111
DE97   FF            ???                ;11111111
DE98   FF            ???                ;11111111
DE99   FF            ???                ;11111111
DE9A   FF            ???                ;11111111
DE9B   FF            ???                ;11111111
DE9C   FF            ???                ;11111111
DE9D   FF            ???                ;11111111
DE9E   FF            ???                ;11111111
DE9F   FF            ???                ;11111111
DEA0   FF            ???                ;11111111
DEA1   FF            ???                ;11111111
DEA2   FF            ???                ;11111111
DEA3   FF            ???                ;11111111
DEA4   FF            ???                ;11111111
DEA5   FF            ???                ;11111111
DEA6   FF            ???                ;11111111
DEA7   FF            ???                ;11111111
DEA8   FF            ???                ;11111111
DEA9   FF            ???                ;11111111
DEAA   FF            ???                ;11111111
DEAB   FF            ???                ;11111111
DEAC   FF            ???                ;11111111
DEAD   FF            ???                ;11111111
DEAE   FF            ???                ;11111111
DEAF   FF            ???                ;11111111
DEB0   FF            ???                ;11111111
DEB1   FF            ???                ;11111111
DEB2   FF            ???                ;11111111
DEB3   FF            ???                ;11111111
DEB4   FF            ???                ;11111111
DEB5   FF            ???                ;11111111
DEB6   FF            ???                ;11111111
DEB7   FF            ???                ;11111111
DEB8   FF            ???                ;11111111
DEB9   FF            ???                ;11111111
DEBA   FF            ???                ;11111111
DEBB   FF            ???                ;11111111
DEBC   FF            ???                ;11111111
DEBD   FF            ???                ;11111111
DEBE   FF            ???                ;11111111
DEBF   FF            ???                ;11111111
DEC0   FF            ???                ;11111111
DEC1   FF            ???                ;11111111
DEC2   FF            ???                ;11111111
DEC3   FF            ???                ;11111111
DEC4   FF            ???                ;11111111
DEC5   FF            ???                ;11111111
DEC6   FF            ???                ;11111111
DEC7   FF            ???                ;11111111
DEC8   FF            ???                ;11111111
DEC9   FF            ???                ;11111111
DECA   FF            ???                ;11111111
DECB   FF            ???                ;11111111
DECC   FF            ???                ;11111111
DECD   FF            ???                ;11111111
DECE   FF            ???                ;11111111
DECF   FF            ???                ;11111111
DED0   FF            ???                ;11111111
DED1   FF            ???                ;11111111
DED2   FF            ???                ;11111111
DED3   FF            ???                ;11111111
DED4   FF            ???                ;11111111
DED5   FF            ???                ;11111111
DED6   FF            ???                ;11111111
DED7   FF            ???                ;11111111
DED8   FF            ???                ;11111111
DED9   FF            ???                ;11111111
DEDA   FF            ???                ;11111111
DEDB   FF            ???                ;11111111
DEDC   FF            ???                ;11111111
DEDD   FF            ???                ;11111111
DEDE   FF            ???                ;11111111
DEDF   FF            ???                ;11111111
DEE0   FF            ???                ;11111111
DEE1   FF            ???                ;11111111
DEE2   FF            ???                ;11111111
DEE3   FF            ???                ;11111111
DEE4   FF            ???                ;11111111
DEE5   FF            ???                ;11111111
DEE6   FF            ???                ;11111111
DEE7   FF            ???                ;11111111
DEE8   FF            ???                ;11111111
DEE9   FF            ???                ;11111111
DEEA   FF            ???                ;11111111
DEEB   FF            ???                ;11111111
DEEC   FF            ???                ;11111111
DEED   FF            ???                ;11111111
DEEE   FF            ???                ;11111111
DEEF   FF            ???                ;11111111
DEF0   FF            ???                ;11111111
DEF1   FF            ???                ;11111111
DEF2   FF            ???                ;11111111
DEF3   FF            ???                ;11111111
DEF4   FF            ???                ;11111111
DEF5   FF            ???                ;11111111
DEF6   FF            ???                ;11111111
DEF7   FF            ???                ;11111111
DEF8   FF            ???                ;11111111
DEF9   FF            ???                ;11111111
DEFA   FF            ???                ;11111111
DEFB   FF            ???                ;11111111
DEFC   FF            ???                ;11111111
DEFD   FF            ???                ;11111111
DEFE   FF            ???                ;11111111
DEFF   FF            ???                ;11111111
DF00   FF            ???                ;11111111
DF01   FF            ???                ;11111111
DF02   FF            ???                ;11111111
DF03   FF            ???                ;11111111
DF04   FF            ???                ;11111111
DF05   FF            ???                ;11111111
DF06   FF            ???                ;11111111
DF07   FF            ???                ;11111111
DF08   FF            ???                ;11111111
DF09   FF            ???                ;11111111
DF0A   FF            ???                ;11111111
DF0B   FF            ???                ;11111111
DF0C   FF            ???                ;11111111
DF0D   FF            ???                ;11111111
DF0E   FF            ???                ;11111111
DF0F   FF            ???                ;11111111
DF10   FF            ???                ;11111111
DF11   FF            ???                ;11111111
DF12   FF            ???                ;11111111
DF13   FF            ???                ;11111111
DF14   FF            ???                ;11111111
DF15   FF            ???                ;11111111
DF16   FF            ???                ;11111111
DF17   FF            ???                ;11111111
DF18   FF            ???                ;11111111
DF19   FF            ???                ;11111111
DF1A   FF            ???                ;11111111
DF1B   FF            ???                ;11111111
DF1C   FF            ???                ;11111111
DF1D   FF            ???                ;11111111
DF1E   FF            ???                ;11111111
DF1F   FF            ???                ;11111111
DF20   FF            ???                ;11111111
DF21   FF            ???                ;11111111
DF22   FF            ???                ;11111111
DF23   FF            ???                ;11111111
DF24   FF            ???                ;11111111
DF25   FF            ???                ;11111111
DF26   FF            ???                ;11111111
DF27   FF            ???                ;11111111
DF28   FF            ???                ;11111111
DF29   FF            ???                ;11111111
DF2A   FF            ???                ;11111111
DF2B   FF            ???                ;11111111
DF2C   FF            ???                ;11111111
DF2D   FF            ???                ;11111111
DF2E   FF            ???                ;11111111
DF2F   FF            ???                ;11111111
DF30   FF            ???                ;11111111
DF31   FF            ???                ;11111111
DF32   FF            ???                ;11111111
DF33   FF            ???                ;11111111
DF34   FF            ???                ;11111111
DF35   FF            ???                ;11111111
DF36   FF            ???                ;11111111
DF37   FF            ???                ;11111111
DF38   FF            ???                ;11111111
DF39   FF            ???                ;11111111
DF3A   FF            ???                ;11111111
DF3B   FF            ???                ;11111111
DF3C   FF            ???                ;11111111
DF3D   FF            ???                ;11111111
DF3E   FF            ???                ;11111111
DF3F   FF            ???                ;11111111
DF40   FF            ???                ;11111111
DF41   FF            ???                ;11111111
DF42   FF            ???                ;11111111
DF43   FF            ???                ;11111111
DF44   FF            ???                ;11111111
DF45   FF            ???                ;11111111
DF46   FF            ???                ;11111111
DF47   FF            ???                ;11111111
DF48   FF            ???                ;11111111
DF49   FF            ???                ;11111111
DF4A   FF            ???                ;11111111
DF4B   FF            ???                ;11111111
DF4C   FF            ???                ;11111111
DF4D   FF            ???                ;11111111
DF4E   FF            ???                ;11111111
DF4F   FF            ???                ;11111111
DF50   FF            ???                ;11111111
DF51   FF            ???                ;11111111
DF52   FF            ???                ;11111111
DF53   FF            ???                ;11111111
DF54   FF            ???                ;11111111
DF55   FF            ???                ;11111111
DF56   FF            ???                ;11111111
DF57   FF            ???                ;11111111
DF58   FF            ???                ;11111111
DF59   FF            ???                ;11111111
DF5A   FF            ???                ;11111111
DF5B   FF            ???                ;11111111
DF5C   FF            ???                ;11111111
DF5D   FF            ???                ;11111111
DF5E   FF            ???                ;11111111
DF5F   FF            ???                ;11111111
DF60   FF            ???                ;11111111
DF61   FF            ???                ;11111111
DF62   FF            ???                ;11111111
DF63   FF            ???                ;11111111
DF64   FF            ???                ;11111111
DF65   FF            ???                ;11111111
DF66   FF            ???                ;11111111
DF67   FF            ???                ;11111111
DF68   FF            ???                ;11111111
DF69   FF            ???                ;11111111
DF6A   FF            ???                ;11111111
DF6B   FF            ???                ;11111111
DF6C   FF            ???                ;11111111
DF6D   FF            ???                ;11111111
DF6E   FF            ???                ;11111111
DF6F   FF            ???                ;11111111
DF70   FF            ???                ;11111111
DF71   FF            ???                ;11111111
DF72   FF            ???                ;11111111
DF73   FF            ???                ;11111111
DF74   FF            ???                ;11111111
DF75   FF            ???                ;11111111
DF76   FF            ???                ;11111111
DF77   FF            ???                ;11111111
DF78   FF            ???                ;11111111
DF79   FF            ???                ;11111111
DF7A   FF            ???                ;11111111
DF7B   FF            ???                ;11111111
DF7C   FF            ???                ;11111111
DF7D   FF            ???                ;11111111
DF7E   FF            ???                ;11111111
DF7F   FF            ???                ;11111111
DF80   FF            ???                ;11111111
DF81   FF            ???                ;11111111
DF82   FF            ???                ;11111111
DF83   FF            ???                ;11111111
DF84   FF            ???                ;11111111
DF85   FF            ???                ;11111111
DF86   FF            ???                ;11111111
DF87   FF            ???                ;11111111
DF88   FF            ???                ;11111111
DF89   FF            ???                ;11111111
DF8A   FF            ???                ;11111111
DF8B   FF            ???                ;11111111
DF8C   FF            ???                ;11111111
DF8D   FF            ???                ;11111111
DF8E   FF            ???                ;11111111
DF8F   FF            ???                ;11111111
DF90   FF            ???                ;11111111
DF91   FF            ???                ;11111111
DF92   FF            ???                ;11111111
DF93   FF            ???                ;11111111
DF94   FF            ???                ;11111111
DF95   FF            ???                ;11111111
DF96   FF            ???                ;11111111
DF97   FF            ???                ;11111111
DF98   FF            ???                ;11111111
DF99   FF            ???                ;11111111
DF9A   FF            ???                ;11111111
DF9B   FF            ???                ;11111111
DF9C   FF            ???                ;11111111
DF9D   FF            ???                ;11111111
DF9E   FF            ???                ;11111111
DF9F   FF            ???                ;11111111
DFA0   FF            ???                ;11111111
DFA1   FF            ???                ;11111111
DFA2   FF            ???                ;11111111
DFA3   FF            ???                ;11111111
DFA4   FF            ???                ;11111111
DFA5   FF            ???                ;11111111
DFA6   FF            ???                ;11111111
DFA7   FF            ???                ;11111111
DFA8   FF            ???                ;11111111
DFA9   FF            ???                ;11111111
DFAA   FF            ???                ;11111111
DFAB   FF            ???                ;11111111
DFAC   FF            ???                ;11111111
DFAD   FF            ???                ;11111111
DFAE   FF            ???                ;11111111
DFAF   FF            ???                ;11111111
DFB0   FF            ???                ;11111111
DFB1   FF            ???                ;11111111
DFB2   FF            ???                ;11111111
DFB3   FF            ???                ;11111111
DFB4   FF            ???                ;11111111
DFB5   FF            ???                ;11111111
DFB6   FF            ???                ;11111111
DFB7   FF            ???                ;11111111
DFB8   FF            ???                ;11111111
DFB9   FF            ???                ;11111111
DFBA   FF            ???                ;11111111
DFBB   FF            ???                ;11111111
DFBC   FF            ???                ;11111111
DFBD   FF            ???                ;11111111
DFBE   FF            ???                ;11111111
DFBF   FF            ???                ;11111111
DFC0   FF            ???                ;11111111
DFC1   FF            ???                ;11111111
DFC2   FF            ???                ;11111111
DFC3   FF            ???                ;11111111
DFC4   FF            ???                ;11111111
DFC5   FF            ???                ;11111111
DFC6   FF            ???                ;11111111
DFC7   FF            ???                ;11111111
DFC8   FF            ???                ;11111111
DFC9   FF            ???                ;11111111
DFCA   FF            ???                ;11111111
DFCB   FF            ???                ;11111111
DFCC   FF            ???                ;11111111
DFCD   FF            ???                ;11111111
DFCE   FF            ???                ;11111111
DFCF   FF            ???                ;11111111
DFD0   FF            ???                ;11111111
DFD1   FF            ???                ;11111111
DFD2   FF            ???                ;11111111
DFD3   FF            ???                ;11111111
DFD4   FF            ???                ;11111111
DFD5   FF            ???                ;11111111
DFD6   FF            ???                ;11111111
DFD7   FF            ???                ;11111111
DFD8   FF            ???                ;11111111
DFD9   FF            ???                ;11111111
DFDA   FF            ???                ;11111111
DFDB   FF            ???                ;11111111
DFDC   FF            ???                ;11111111
DFDD   FF            ???                ;11111111
DFDE   FF            ???                ;11111111
DFDF   FF            ???                ;11111111
DFE0   FF            ???                ;11111111
DFE1   FF            ???                ;11111111
DFE2   FF            ???                ;11111111
DFE3   FF            ???                ;11111111
DFE4   FF            ???                ;11111111
DFE5   FF            ???                ;11111111
DFE6   FF            ???                ;11111111
DFE7   FF            ???                ;11111111
DFE8   FF            ???                ;11111111
DFE9   FF            ???                ;11111111
DFEA   FF            ???                ;11111111
DFEB   FF            ???                ;11111111
DFEC   FF            ???                ;11111111
DFED   FF            ???                ;11111111
DFEE   FF            ???                ;11111111
DFEF   FF            ???                ;11111111
DFF0   FF            ???                ;11111111
DFF1   FF            ???                ;11111111
DFF2   FF            ???                ;11111111
DFF3   FF            ???                ;11111111
DFF4   FF            ???                ;11111111
DFF5   FF            ???                ;11111111
DFF6   FF            ???                ;11111111
DFF7   FF            ???                ;11111111
DFF8   FF            ???                ;11111111
DFF9   FF            ???                ;11111111
DFFA   FF            ???                ;11111111
DFFB   FF            ???                ;11111111
DFFC   FF            ???                ;11111111
DFFD   FF            ???                ;11111111
DFFE   FF            ???                ;11111111
DFFF   FF            ???                ;11111111
E000   FF            ???                ;11111111
E001   FF            ???                ;11111111
E002   FF            ???                ;11111111
E003   FF            ???                ;11111111
E004   FF            ???                ;11111111
E005   FF            ???                ;11111111
E006   FF            ???                ;11111111
E007   FF            ???                ;11111111
E008   FF            ???                ;11111111
E009   FF            ???                ;11111111
E00A   FF            ???                ;11111111
E00B   FF            ???                ;11111111
E00C   FF            ???                ;11111111
E00D   FF            ???                ;11111111
E00E   FF            ???                ;11111111
E00F   FF            ???                ;11111111
E010   FF            ???                ;11111111
E011   FF            ???                ;11111111
E012   FF            ???                ;11111111
E013   FF            ???                ;11111111
E014   FF            ???                ;11111111
E015   FF            ???                ;11111111
E016   FF            ???                ;11111111
E017   FF            ???                ;11111111
E018   FF            ???                ;11111111
E019   FF            ???                ;11111111
E01A   FF            ???                ;11111111
E01B   FF            ???                ;11111111
E01C   FF            ???                ;11111111
E01D   FF            ???                ;11111111
E01E   FF            ???                ;11111111
E01F   FF            ???                ;11111111
E020   FF            ???                ;11111111
E021   FF            ???                ;11111111
E022   FF            ???                ;11111111
E023   FF            ???                ;11111111
E024   FF            ???                ;11111111
E025   FF            ???                ;11111111
E026   FF            ???                ;11111111
E027   FF            ???                ;11111111
E028   FF            ???                ;11111111
E029   FF            ???                ;11111111
E02A   FF            ???                ;11111111
E02B   FF            ???                ;11111111
E02C   FF            ???                ;11111111
E02D   FF            ???                ;11111111
E02E   FF            ???                ;11111111
E02F   FF            ???                ;11111111
E030   FF            ???                ;11111111
E031   FF            ???                ;11111111
E032   FF            ???                ;11111111
E033   FF            ???                ;11111111
E034   FF            ???                ;11111111
E035   FF            ???                ;11111111
E036   FF            ???                ;11111111
E037   FF            ???                ;11111111
E038   FF            ???                ;11111111
E039   FF            ???                ;11111111
E03A   FF            ???                ;11111111
E03B   FF            ???                ;11111111
E03C   FF            ???                ;11111111
E03D   FF            ???                ;11111111
E03E   FF            ???                ;11111111
E03F   FF            ???                ;11111111
E040   FF            ???                ;11111111
E041   FF            ???                ;11111111
E042   FF            ???                ;11111111
E043   FF            ???                ;11111111
E044   FF            ???                ;11111111
E045   FF            ???                ;11111111
E046   FF            ???                ;11111111
E047   FF            ???                ;11111111
E048   FF            ???                ;11111111
E049   FF            ???                ;11111111
E04A   FF            ???                ;11111111
E04B   FF            ???                ;11111111
E04C   FF            ???                ;11111111
E04D   FF            ???                ;11111111
E04E   FF            ???                ;11111111
E04F   FF            ???                ;11111111
E050   FF            ???                ;11111111
E051   FF            ???                ;11111111
E052   FF            ???                ;11111111
E053   FF            ???                ;11111111
E054   FF            ???                ;11111111
E055   FF            ???                ;11111111
E056   FF            ???                ;11111111
E057   FF            ???                ;11111111
E058   FF            ???                ;11111111
E059   FF            ???                ;11111111
E05A   FF            ???                ;11111111
E05B   FF            ???                ;11111111
E05C   FF            ???                ;11111111
E05D   FF            ???                ;11111111
E05E   FF            ???                ;11111111
E05F   FF            ???                ;11111111
E060   FF            ???                ;11111111
E061   FF            ???                ;11111111
E062   FF            ???                ;11111111
E063   FF            ???                ;11111111
E064   FF            ???                ;11111111
E065   FF            ???                ;11111111
E066   FF            ???                ;11111111
E067   FF            ???                ;11111111
E068   FF            ???                ;11111111
E069   FF            ???                ;11111111
E06A   FF            ???                ;11111111
E06B   FF            ???                ;11111111
E06C   FF            ???                ;11111111
E06D   FF            ???                ;11111111
E06E   FF            ???                ;11111111
E06F   FF            ???                ;11111111
E070   FF            ???                ;11111111
E071   FF            ???                ;11111111
E072   FF            ???                ;11111111
E073   FF            ???                ;11111111
E074   FF            ???                ;11111111
E075   FF            ???                ;11111111
E076   FF            ???                ;11111111
E077   FF            ???                ;11111111
E078   FF            ???                ;11111111
E079   FF            ???                ;11111111
E07A   FF            ???                ;11111111
E07B   FF            ???                ;11111111
E07C   FF            ???                ;11111111
E07D   FF            ???                ;11111111
E07E   FF            ???                ;11111111
E07F   FF            ???                ;11111111
E080   FF            ???                ;11111111
E081   FF            ???                ;11111111
E082   FF            ???                ;11111111
E083   FF            ???                ;11111111
E084   FF            ???                ;11111111
E085   FF            ???                ;11111111
E086   FF            ???                ;11111111
E087   FF            ???                ;11111111
E088   FF            ???                ;11111111
E089   FF            ???                ;11111111
E08A   FF            ???                ;11111111
E08B   FF            ???                ;11111111
E08C   FF            ???                ;11111111
E08D   FF            ???                ;11111111
E08E   FF            ???                ;11111111
E08F   FF            ???                ;11111111
E090   FF            ???                ;11111111
E091   FF            ???                ;11111111
E092   FF            ???                ;11111111
E093   FF            ???                ;11111111
E094   FF            ???                ;11111111
E095   FF            ???                ;11111111
E096   FF            ???                ;11111111
E097   FF            ???                ;11111111
E098   FF            ???                ;11111111
E099   FF            ???                ;11111111
E09A   FF            ???                ;11111111
E09B   FF            ???                ;11111111
E09C   FF            ???                ;11111111
E09D   FF            ???                ;11111111
E09E   FF            ???                ;11111111
E09F   FF            ???                ;11111111
E0A0   FF            ???                ;11111111
E0A1   FF            ???                ;11111111
E0A2   FF            ???                ;11111111
E0A3   FF            ???                ;11111111
E0A4   FF            ???                ;11111111
E0A5   FF            ???                ;11111111
E0A6   FF            ???                ;11111111
E0A7   FF            ???                ;11111111
E0A8   FF            ???                ;11111111
E0A9   FF            ???                ;11111111
E0AA   FF            ???                ;11111111
E0AB   FF            ???                ;11111111
E0AC   FF            ???                ;11111111
E0AD   FF            ???                ;11111111
E0AE   FF            ???                ;11111111
E0AF   FF            ???                ;11111111
E0B0   FF            ???                ;11111111
E0B1   FF            ???                ;11111111
E0B2   FF            ???                ;11111111
E0B3   FF            ???                ;11111111
E0B4   FF            ???                ;11111111
E0B5   FF            ???                ;11111111
E0B6   FF            ???                ;11111111
E0B7   FF            ???                ;11111111
E0B8   FF            ???                ;11111111
E0B9   FF            ???                ;11111111
E0BA   FF            ???                ;11111111
E0BB   FF            ???                ;11111111
E0BC   FF            ???                ;11111111
E0BD   FF            ???                ;11111111
E0BE   FF            ???                ;11111111
E0BF   FF            ???                ;11111111
E0C0   FF            ???                ;11111111
E0C1   FF            ???                ;11111111
E0C2   FF            ???                ;11111111
E0C3   FF            ???                ;11111111
E0C4   FF            ???                ;11111111
E0C5   FF            ???                ;11111111
E0C6   FF            ???                ;11111111
E0C7   FF            ???                ;11111111
E0C8   FF            ???                ;11111111
E0C9   FF            ???                ;11111111
E0CA   FF            ???                ;11111111
E0CB   FF            ???                ;11111111
E0CC   FF            ???                ;11111111
E0CD   FF            ???                ;11111111
E0CE   FF            ???                ;11111111
E0CF   FF            ???                ;11111111
E0D0   FF            ???                ;11111111
E0D1   FF            ???                ;11111111
E0D2   FF            ???                ;11111111
E0D3   FF            ???                ;11111111
E0D4   FF            ???                ;11111111
E0D5   FF            ???                ;11111111
E0D6   FF            ???                ;11111111
E0D7   FF            ???                ;11111111
E0D8   FF            ???                ;11111111
E0D9   FF            ???                ;11111111
E0DA   FF            ???                ;11111111
E0DB   FF            ???                ;11111111
E0DC   FF            ???                ;11111111
E0DD   FF            ???                ;11111111
E0DE   FF            ???                ;11111111
E0DF   FF            ???                ;11111111
E0E0   FF            ???                ;11111111
E0E1   FF            ???                ;11111111
E0E2   FF            ???                ;11111111
E0E3   FF            ???                ;11111111
E0E4   FF            ???                ;11111111
E0E5   FF            ???                ;11111111
E0E6   FF            ???                ;11111111
E0E7   FF            ???                ;11111111
E0E8   FF            ???                ;11111111
E0E9   FF            ???                ;11111111
E0EA   FF            ???                ;11111111
E0EB   FF            ???                ;11111111
E0EC   FF            ???                ;11111111
E0ED   FF            ???                ;11111111
E0EE   FF            ???                ;11111111
E0EF   FF            ???                ;11111111
E0F0   FF            ???                ;11111111
E0F1   FF            ???                ;11111111
E0F2   FF            ???                ;11111111
E0F3   FF            ???                ;11111111
E0F4   FF            ???                ;11111111
E0F5   FF            ???                ;11111111
E0F6   FF            ???                ;11111111
E0F7   FF            ???                ;11111111
E0F8   FF            ???                ;11111111
E0F9   FF            ???                ;11111111
E0FA   FF            ???                ;11111111
E0FB   FF            ???                ;11111111
E0FC   FF            ???                ;11111111
E0FD   FF            ???                ;11111111
E0FE   FF            ???                ;11111111
E0FF   FF            ???                ;11111111
E100   FF            ???                ;11111111
E101   FF            ???                ;11111111
E102   FF            ???                ;11111111
E103   FF            ???                ;11111111
E104   FF            ???                ;11111111
E105   FF            ???                ;11111111
E106   FF            ???                ;11111111
E107   FF            ???                ;11111111
E108   FF            ???                ;11111111
E109   FF            ???                ;11111111
E10A   FF            ???                ;11111111
E10B   FF            ???                ;11111111
E10C   FF            ???                ;11111111
E10D   FF            ???                ;11111111
E10E   FF            ???                ;11111111
E10F   FF            ???                ;11111111
E110   FF            ???                ;11111111
E111   FF            ???                ;11111111
E112   FF            ???                ;11111111
E113   FF            ???                ;11111111
E114   FF            ???                ;11111111
E115   FF            ???                ;11111111
E116   FF            ???                ;11111111
E117   FF            ???                ;11111111
E118   FF            ???                ;11111111
E119   FF            ???                ;11111111
E11A   FF            ???                ;11111111
E11B   FF            ???                ;11111111
E11C   FF            ???                ;11111111
E11D   FF            ???                ;11111111
E11E   FF            ???                ;11111111
E11F   FF            ???                ;11111111
E120   FF            ???                ;11111111
E121   FF            ???                ;11111111
E122   FF            ???                ;11111111
E123   FF            ???                ;11111111
E124   FF            ???                ;11111111
E125   FF            ???                ;11111111
E126   FF            ???                ;11111111
E127   FF            ???                ;11111111
E128   FF            ???                ;11111111
E129   FF            ???                ;11111111
E12A   FF            ???                ;11111111
E12B   FF            ???                ;11111111
E12C   FF            ???                ;11111111
E12D   FF            ???                ;11111111
E12E   FF            ???                ;11111111
E12F   FF            ???                ;11111111
E130   FF            ???                ;11111111
E131   FF            ???                ;11111111
E132   FF            ???                ;11111111
E133   FF            ???                ;11111111
E134   FF            ???                ;11111111
E135   FF            ???                ;11111111
E136   FF            ???                ;11111111
E137   FF            ???                ;11111111
E138   FF            ???                ;11111111
E139   FF            ???                ;11111111
E13A   FF            ???                ;11111111
E13B   FF            ???                ;11111111
E13C   FF            ???                ;11111111
E13D   FF            ???                ;11111111
E13E   FF            ???                ;11111111
E13F   FF            ???                ;11111111
E140   FF            ???                ;11111111
E141   FF            ???                ;11111111
E142   FF            ???                ;11111111
E143   FF            ???                ;11111111
E144   FF            ???                ;11111111
E145   FF            ???                ;11111111
E146   FF            ???                ;11111111
E147   FF            ???                ;11111111
E148   FF            ???                ;11111111
E149   FF            ???                ;11111111
E14A   FF            ???                ;11111111
E14B   FF            ???                ;11111111
E14C   FF            ???                ;11111111
E14D   FF            ???                ;11111111
E14E   FF            ???                ;11111111
E14F   FF            ???                ;11111111
E150   FF            ???                ;11111111
E151   FF            ???                ;11111111
E152   FF            ???                ;11111111
E153   FF            ???                ;11111111
E154   FF            ???                ;11111111
E155   FF            ???                ;11111111
E156   FF            ???                ;11111111
E157   FF            ???                ;11111111
E158   FF            ???                ;11111111
E159   FF            ???                ;11111111
E15A   FF            ???                ;11111111
E15B   FF            ???                ;11111111
E15C   FF            ???                ;11111111
E15D   FF            ???                ;11111111
E15E   FF            ???                ;11111111
E15F   FF            ???                ;11111111
E160   FF            ???                ;11111111
E161   FF            ???                ;11111111
E162   FF            ???                ;11111111
E163   FF            ???                ;11111111
E164   FF            ???                ;11111111
E165   FF            ???                ;11111111
E166   FF            ???                ;11111111
E167   FF            ???                ;11111111
E168   FF            ???                ;11111111
E169   FF            ???                ;11111111
E16A   FF            ???                ;11111111
E16B   FF            ???                ;11111111
E16C   FF            ???                ;11111111
E16D   FF            ???                ;11111111
E16E   FF            ???                ;11111111
E16F   FF            ???                ;11111111
E170   FF            ???                ;11111111
E171   FF            ???                ;11111111
E172   FF            ???                ;11111111
E173   FF            ???                ;11111111
E174   FF            ???                ;11111111
E175   FF            ???                ;11111111
E176   FF            ???                ;11111111
E177   FF            ???                ;11111111
E178   FF            ???                ;11111111
E179   FF            ???                ;11111111
E17A   FF            ???                ;11111111
E17B   FF            ???                ;11111111
E17C   FF            ???                ;11111111
E17D   FF            ???                ;11111111
E17E   FF            ???                ;11111111
E17F   FF            ???                ;11111111
E180   FF            ???                ;11111111
E181   FF            ???                ;11111111
E182   FF            ???                ;11111111
E183   FF            ???                ;11111111
E184   FF            ???                ;11111111
E185   FF            ???                ;11111111
E186   FF            ???                ;11111111
E187   FF            ???                ;11111111
E188   FF            ???                ;11111111
E189   FF            ???                ;11111111
E18A   FF            ???                ;11111111
E18B   FF            ???                ;11111111
E18C   FF            ???                ;11111111
E18D   FF            ???                ;11111111
E18E   FF            ???                ;11111111
E18F   FF            ???                ;11111111
E190   FF            ???                ;11111111
E191   FF            ???                ;11111111
E192   FF            ???                ;11111111
E193   FF            ???                ;11111111
E194   FF            ???                ;11111111
E195   FF            ???                ;11111111
E196   FF            ???                ;11111111
E197   FF            ???                ;11111111
E198   FF            ???                ;11111111
E199   FF            ???                ;11111111
E19A   FF            ???                ;11111111
E19B   FF            ???                ;11111111
E19C   FF            ???                ;11111111
E19D   FF            ???                ;11111111
E19E   FF            ???                ;11111111
E19F   FF            ???                ;11111111
E1A0   FF            ???                ;11111111
E1A1   FF            ???                ;11111111
E1A2   FF            ???                ;11111111
E1A3   FF            ???                ;11111111
E1A4   FF            ???                ;11111111
E1A5   FF            ???                ;11111111
E1A6   FF            ???                ;11111111
E1A7   FF            ???                ;11111111
E1A8   FF            ???                ;11111111
E1A9   FF            ???                ;11111111
E1AA   FF            ???                ;11111111
E1AB   FF            ???                ;11111111
E1AC   FF            ???                ;11111111
E1AD   FF            ???                ;11111111
E1AE   FF            ???                ;11111111
E1AF   FF            ???                ;11111111
E1B0   FF            ???                ;11111111
E1B1   FF            ???                ;11111111
E1B2   FF            ???                ;11111111
E1B3   FF            ???                ;11111111
E1B4   FF            ???                ;11111111
E1B5   FF            ???                ;11111111
E1B6   FF            ???                ;11111111
E1B7   FF            ???                ;11111111
E1B8   FF            ???                ;11111111
E1B9   FF            ???                ;11111111
E1BA   FF            ???                ;11111111
E1BB   FF            ???                ;11111111
E1BC   FF            ???                ;11111111
E1BD   FF            ???                ;11111111
E1BE   FF            ???                ;11111111
E1BF   FF            ???                ;11111111
E1C0   FF            ???                ;11111111
E1C1   FF            ???                ;11111111
E1C2   FF            ???                ;11111111
E1C3   FF            ???                ;11111111
E1C4   FF            ???                ;11111111
E1C5   FF            ???                ;11111111
E1C6   FF            ???                ;11111111
E1C7   FF            ???                ;11111111
E1C8   FF            ???                ;11111111
E1C9   FF            ???                ;11111111
E1CA   FF            ???                ;11111111
E1CB   FF            ???                ;11111111
E1CC   FF            ???                ;11111111
E1CD   FF            ???                ;11111111
E1CE   FF            ???                ;11111111
E1CF   FF            ???                ;11111111
E1D0   FF            ???                ;11111111
E1D1   FF            ???                ;11111111
E1D2   FF            ???                ;11111111
E1D3   FF            ???                ;11111111
E1D4   FF            ???                ;11111111
E1D5   FF            ???                ;11111111
E1D6   FF            ???                ;11111111
E1D7   FF            ???                ;11111111
E1D8   FF            ???                ;11111111
E1D9   FF            ???                ;11111111
E1DA   FF            ???                ;11111111
E1DB   FF            ???                ;11111111
E1DC   FF            ???                ;11111111
E1DD   FF            ???                ;11111111
E1DE   FF            ???                ;11111111
E1DF   FF            ???                ;11111111
E1E0   FF            ???                ;11111111
E1E1   FF            ???                ;11111111
E1E2   FF            ???                ;11111111
E1E3   FF            ???                ;11111111
E1E4   FF            ???                ;11111111
E1E5   FF            ???                ;11111111
E1E6   FF            ???                ;11111111
E1E7   FF            ???                ;11111111
E1E8   FF            ???                ;11111111
E1E9   FF            ???                ;11111111
E1EA   FF            ???                ;11111111
E1EB   FF            ???                ;11111111
E1EC   FF            ???                ;11111111
E1ED   FF            ???                ;11111111
E1EE   FF            ???                ;11111111
E1EF   FF            ???                ;11111111
E1F0   FF            ???                ;11111111
E1F1   FF            ???                ;11111111
E1F2   FF            ???                ;11111111
E1F3   FF            ???                ;11111111
E1F4   FF            ???                ;11111111
E1F5   FF            ???                ;11111111
E1F6   FF            ???                ;11111111
E1F7   FF            ???                ;11111111
E1F8   FF            ???                ;11111111
E1F9   FF            ???                ;11111111
E1FA   FF            ???                ;11111111
E1FB   FF            ???                ;11111111
E1FC   FF            ???                ;11111111
E1FD   FF            ???                ;11111111
E1FE   FF            ???                ;11111111
E1FF   FF            ???                ;11111111
E200   FF            ???                ;11111111
E201   FF            ???                ;11111111
E202   FF            ???                ;11111111
E203   FF            ???                ;11111111
E204   FF            ???                ;11111111
E205   FF            ???                ;11111111
E206   FF            ???                ;11111111
E207   FF            ???                ;11111111
E208   FF            ???                ;11111111
E209   FF            ???                ;11111111
E20A   FF            ???                ;11111111
E20B   FF            ???                ;11111111
E20C   FF            ???                ;11111111
E20D   FF            ???                ;11111111
E20E   FF            ???                ;11111111
E20F   FF            ???                ;11111111
E210   FF            ???                ;11111111
E211   FF            ???                ;11111111
E212   FF            ???                ;11111111
E213   FF            ???                ;11111111
E214   FF            ???                ;11111111
E215   FF            ???                ;11111111
E216   FF            ???                ;11111111
E217   FF            ???                ;11111111
E218   FF            ???                ;11111111
E219   FF            ???                ;11111111
E21A   FF            ???                ;11111111
E21B   FF            ???                ;11111111
E21C   FF            ???                ;11111111
E21D   FF            ???                ;11111111
E21E   FF            ???                ;11111111
E21F   FF            ???                ;11111111
E220   FF            ???                ;11111111
E221   FF            ???                ;11111111
E222   FF            ???                ;11111111
E223   FF            ???                ;11111111
E224   FF            ???                ;11111111
E225   FF            ???                ;11111111
E226   FF            ???                ;11111111
E227   FF            ???                ;11111111
E228   FF            ???                ;11111111
E229   FF            ???                ;11111111
E22A   FF            ???                ;11111111
E22B   FF            ???                ;11111111
E22C   FF            ???                ;11111111
E22D   FF            ???                ;11111111
E22E   FF            ???                ;11111111
E22F   FF            ???                ;11111111
E230   FF            ???                ;11111111
E231   FF            ???                ;11111111
E232   FF            ???                ;11111111
E233   FF            ???                ;11111111
E234   FF            ???                ;11111111
E235   FF            ???                ;11111111
E236   FF            ???                ;11111111
E237   FF            ???                ;11111111
E238   FF            ???                ;11111111
E239   FF            ???                ;11111111
E23A   FF            ???                ;11111111
E23B   FF            ???                ;11111111
E23C   FF            ???                ;11111111
E23D   FF            ???                ;11111111
E23E   FF            ???                ;11111111
E23F   FF            ???                ;11111111
E240   FF            ???                ;11111111
E241   FF            ???                ;11111111
E242   FF            ???                ;11111111
E243   FF            ???                ;11111111
E244   FF            ???                ;11111111
E245   FF            ???                ;11111111
E246   FF            ???                ;11111111
E247   FF            ???                ;11111111
E248   FF            ???                ;11111111
E249   FF            ???                ;11111111
E24A   FF            ???                ;11111111
E24B   FF            ???                ;11111111
E24C   FF            ???                ;11111111
E24D   FF            ???                ;11111111
E24E   FF            ???                ;11111111
E24F   FF            ???                ;11111111
E250   FF            ???                ;11111111
E251   FF            ???                ;11111111
E252   FF            ???                ;11111111
E253   FF            ???                ;11111111
E254   FF            ???                ;11111111
E255   FF            ???                ;11111111
E256   FF            ???                ;11111111
E257   FF            ???                ;11111111
E258   FF            ???                ;11111111
E259   FF            ???                ;11111111
E25A   FF            ???                ;11111111
E25B   FF            ???                ;11111111
E25C   FF            ???                ;11111111
E25D   FF            ???                ;11111111
E25E   FF            ???                ;11111111
E25F   FF            ???                ;11111111
E260   FF            ???                ;11111111
E261   FF            ???                ;11111111
E262   FF            ???                ;11111111
E263   FF            ???                ;11111111
E264   FF            ???                ;11111111
E265   FF            ???                ;11111111
E266   FF            ???                ;11111111
E267   FF            ???                ;11111111
E268   FF            ???                ;11111111
E269   FF            ???                ;11111111
E26A   FF            ???                ;11111111
E26B   FF            ???                ;11111111
E26C   FF            ???                ;11111111
E26D   FF            ???                ;11111111
E26E   FF            ???                ;11111111
E26F   FF            ???                ;11111111
E270   FF            ???                ;11111111
E271   FF            ???                ;11111111
E272   FF            ???                ;11111111
E273   FF            ???                ;11111111
E274   FF            ???                ;11111111
E275   FF            ???                ;11111111
E276   FF            ???                ;11111111
E277   FF            ???                ;11111111
E278   FF            ???                ;11111111
E279   FF            ???                ;11111111
E27A   FF            ???                ;11111111
E27B   FF            ???                ;11111111
E27C   FF            ???                ;11111111
E27D   FF            ???                ;11111111
E27E   FF            ???                ;11111111
E27F   FF            ???                ;11111111
E280   FF            ???                ;11111111
E281   FF            ???                ;11111111
E282   FF            ???                ;11111111
E283   FF            ???                ;11111111
E284   FF            ???                ;11111111
E285   FF            ???                ;11111111
E286   FF            ???                ;11111111
E287   FF            ???                ;11111111
E288   FF            ???                ;11111111
E289   FF            ???                ;11111111
E28A   FF            ???                ;11111111
E28B   FF            ???                ;11111111
E28C   FF            ???                ;11111111
E28D   FF            ???                ;11111111
E28E   FF            ???                ;11111111
E28F   FF            ???                ;11111111
E290   FF            ???                ;11111111
E291   FF            ???                ;11111111
E292   FF            ???                ;11111111
E293   FF            ???                ;11111111
E294   FF            ???                ;11111111
E295   FF            ???                ;11111111
E296   FF            ???                ;11111111
E297   FF            ???                ;11111111
E298   FF            ???                ;11111111
E299   FF            ???                ;11111111
E29A   FF            ???                ;11111111
E29B   FF            ???                ;11111111
E29C   FF            ???                ;11111111
E29D   FF            ???                ;11111111
E29E   FF            ???                ;11111111
E29F   FF            ???                ;11111111
E2A0   FF            ???                ;11111111
E2A1   FF            ???                ;11111111
E2A2   FF            ???                ;11111111
E2A3   FF            ???                ;11111111
E2A4   FF            ???                ;11111111
E2A5   FF            ???                ;11111111
E2A6   FF            ???                ;11111111
E2A7   FF            ???                ;11111111
E2A8   FF            ???                ;11111111
E2A9   FF            ???                ;11111111
E2AA   FF            ???                ;11111111
E2AB   FF            ???                ;11111111
E2AC   FF            ???                ;11111111
E2AD   FF            ???                ;11111111
E2AE   FF            ???                ;11111111
E2AF   FF            ???                ;11111111
E2B0   FF            ???                ;11111111
E2B1   FF            ???                ;11111111
E2B2   FF            ???                ;11111111
E2B3   FF            ???                ;11111111
E2B4   FF            ???                ;11111111
E2B5   FF            ???                ;11111111
E2B6   FF            ???                ;11111111
E2B7   FF            ???                ;11111111
E2B8   FF            ???                ;11111111
E2B9   FF            ???                ;11111111
E2BA   FF            ???                ;11111111
E2BB   FF            ???                ;11111111
E2BC   FF            ???                ;11111111
E2BD   FF            ???                ;11111111
E2BE   FF            ???                ;11111111
E2BF   FF            ???                ;11111111
E2C0   FF            ???                ;11111111
E2C1   FF            ???                ;11111111
E2C2   FF            ???                ;11111111
E2C3   FF            ???                ;11111111
E2C4   FF            ???                ;11111111
E2C5   FF            ???                ;11111111
E2C6   FF            ???                ;11111111
E2C7   FF            ???                ;11111111
E2C8   FF            ???                ;11111111
E2C9   FF            ???                ;11111111
E2CA   FF            ???                ;11111111
E2CB   FF            ???                ;11111111
E2CC   FF            ???                ;11111111
E2CD   FF            ???                ;11111111
E2CE   FF            ???                ;11111111
E2CF   FF            ???                ;11111111
E2D0   FF            ???                ;11111111
E2D1   FF            ???                ;11111111
E2D2   FF            ???                ;11111111
E2D3   FF            ???                ;11111111
E2D4   FF            ???                ;11111111
E2D5   FF            ???                ;11111111
E2D6   FF            ???                ;11111111
E2D7   FF            ???                ;11111111
E2D8   FF            ???                ;11111111
E2D9   FF            ???                ;11111111
E2DA   FF            ???                ;11111111
E2DB   FF            ???                ;11111111
E2DC   FF            ???                ;11111111
E2DD   FF            ???                ;11111111
E2DE   FF            ???                ;11111111
E2DF   FF            ???                ;11111111
E2E0   FF            ???                ;11111111
E2E1   FF            ???                ;11111111
E2E2   FF            ???                ;11111111
E2E3   FF            ???                ;11111111
E2E4   FF            ???                ;11111111
E2E5   FF            ???                ;11111111
E2E6   FF            ???                ;11111111
E2E7   FF            ???                ;11111111
E2E8   FF            ???                ;11111111
E2E9   FF            ???                ;11111111
E2EA   FF            ???                ;11111111
E2EB   FF            ???                ;11111111
E2EC   FF            ???                ;11111111
E2ED   FF            ???                ;11111111
E2EE   FF            ???                ;11111111
E2EF   FF            ???                ;11111111
E2F0   FF            ???                ;11111111
E2F1   FF            ???                ;11111111
E2F2   FF            ???                ;11111111
E2F3   FF            ???                ;11111111
E2F4   FF            ???                ;11111111
E2F5   FF            ???                ;11111111
E2F6   FF            ???                ;11111111
E2F7   FF            ???                ;11111111
E2F8   FF            ???                ;11111111
E2F9   FF            ???                ;11111111
E2FA   FF            ???                ;11111111
E2FB   FF            ???                ;11111111
E2FC   FF            ???                ;11111111
E2FD   FF            ???                ;11111111
E2FE   FF            ???                ;11111111
E2FF   FF            ???                ;11111111
E300   FF            ???                ;11111111
E301   FF            ???                ;11111111
E302   FF            ???                ;11111111
E303   FF            ???                ;11111111
E304   FF            ???                ;11111111
E305   FF            ???                ;11111111
E306   FF            ???                ;11111111
E307   FF            ???                ;11111111
E308   FF            ???                ;11111111
E309   FF            ???                ;11111111
E30A   FF            ???                ;11111111
E30B   FF            ???                ;11111111
E30C   FF            ???                ;11111111
E30D   FF            ???                ;11111111
E30E   FF            ???                ;11111111
E30F   FF            ???                ;11111111
E310   FF            ???                ;11111111
E311   FF            ???                ;11111111
E312   FF            ???                ;11111111
E313   FF            ???                ;11111111
E314   FF            ???                ;11111111
E315   FF            ???                ;11111111
E316   FF            ???                ;11111111
E317   FF            ???                ;11111111
E318   FF            ???                ;11111111
E319   FF            ???                ;11111111
E31A   FF            ???                ;11111111
E31B   FF            ???                ;11111111
E31C   FF            ???                ;11111111
E31D   FF            ???                ;11111111
E31E   FF            ???                ;11111111
E31F   FF            ???                ;11111111
E320   FF            ???                ;11111111
E321   FF            ???                ;11111111
E322   FF            ???                ;11111111
E323   FF            ???                ;11111111
E324   FF            ???                ;11111111
E325   FF            ???                ;11111111
E326   FF            ???                ;11111111
E327   FF            ???                ;11111111
E328   FF            ???                ;11111111
E329   FF            ???                ;11111111
E32A   FF            ???                ;11111111
E32B   FF            ???                ;11111111
E32C   FF            ???                ;11111111
E32D   FF            ???                ;11111111
E32E   FF            ???                ;11111111
E32F   FF            ???                ;11111111
E330   FF            ???                ;11111111
E331   FF            ???                ;11111111
E332   FF            ???                ;11111111
E333   FF            ???                ;11111111
E334   FF            ???                ;11111111
E335   FF            ???                ;11111111
E336   FF            ???                ;11111111
E337   FF            ???                ;11111111
E338   FF            ???                ;11111111
E339   FF            ???                ;11111111
E33A   FF            ???                ;11111111
E33B   FF            ???                ;11111111
E33C   FF            ???                ;11111111
E33D   FF            ???                ;11111111
E33E   FF            ???                ;11111111
E33F   FF            ???                ;11111111
E340   FF            ???                ;11111111
E341   FF            ???                ;11111111
E342   FF            ???                ;11111111
E343   FF            ???                ;11111111
E344   FF            ???                ;11111111
E345   FF            ???                ;11111111
E346   FF            ???                ;11111111
E347   FF            ???                ;11111111
E348   FF            ???                ;11111111
E349   FF            ???                ;11111111
E34A   FF            ???                ;11111111
E34B   FF            ???                ;11111111
E34C   FF            ???                ;11111111
E34D   FF            ???                ;11111111
E34E   FF            ???                ;11111111
E34F   FF            ???                ;11111111
E350   FF            ???                ;11111111
E351   FF            ???                ;11111111
E352   FF            ???                ;11111111
E353   FF            ???                ;11111111
E354   FF            ???                ;11111111
E355   FF            ???                ;11111111
E356   FF            ???                ;11111111
E357   FF            ???                ;11111111
E358   FF            ???                ;11111111
E359   FF            ???                ;11111111
E35A   FF            ???                ;11111111
E35B   FF            ???                ;11111111
E35C   FF            ???                ;11111111
E35D   FF            ???                ;11111111
E35E   FF            ???                ;11111111
E35F   FF            ???                ;11111111
E360   FF            ???                ;11111111
E361   FF            ???                ;11111111
E362   FF            ???                ;11111111
E363   FF            ???                ;11111111
E364   FF            ???                ;11111111
E365   FF            ???                ;11111111
E366   FF            ???                ;11111111
E367   FF            ???                ;11111111
E368   FF            ???                ;11111111
E369   FF            ???                ;11111111
E36A   FF            ???                ;11111111
E36B   FF            ???                ;11111111
E36C   FF            ???                ;11111111
E36D   FF            ???                ;11111111
E36E   FF            ???                ;11111111
E36F   FF            ???                ;11111111
E370   FF            ???                ;11111111
E371   FF            ???                ;11111111
E372   FF            ???                ;11111111
E373   FF            ???                ;11111111
E374   FF            ???                ;11111111
E375   FF            ???                ;11111111
E376   FF            ???                ;11111111
E377   FF            ???                ;11111111
E378   FF            ???                ;11111111
E379   FF            ???                ;11111111
E37A   FF            ???                ;11111111
E37B   FF            ???                ;11111111
E37C   FF            ???                ;11111111
E37D   FF            ???                ;11111111
E37E   FF            ???                ;11111111
E37F   FF            ???                ;11111111
E380   FF            ???                ;11111111
E381   FF            ???                ;11111111
E382   FF            ???                ;11111111
E383   FF            ???                ;11111111
E384   FF            ???                ;11111111
E385   FF            ???                ;11111111
E386   FF            ???                ;11111111
E387   FF            ???                ;11111111
E388   FF            ???                ;11111111
E389   FF            ???                ;11111111
E38A   FF            ???                ;11111111
E38B   FF            ???                ;11111111
E38C   FF            ???                ;11111111
E38D   FF            ???                ;11111111
E38E   FF            ???                ;11111111
E38F   FF            ???                ;11111111
E390   FF            ???                ;11111111
E391   FF            ???                ;11111111
E392   FF            ???                ;11111111
E393   FF            ???                ;11111111
E394   FF            ???                ;11111111
E395   FF            ???                ;11111111
E396   FF            ???                ;11111111
E397   FF            ???                ;11111111
E398   FF            ???                ;11111111
E399   FF            ???                ;11111111
E39A   FF            ???                ;11111111
E39B   FF            ???                ;11111111
E39C   FF            ???                ;11111111
E39D   FF            ???                ;11111111
E39E   FF            ???                ;11111111
E39F   FF            ???                ;11111111
E3A0   FF            ???                ;11111111
E3A1   FF            ???                ;11111111
E3A2   FF            ???                ;11111111
E3A3   FF            ???                ;11111111
E3A4   FF            ???                ;11111111
E3A5   FF            ???                ;11111111
E3A6   FF            ???                ;11111111
E3A7   FF            ???                ;11111111
E3A8   FF            ???                ;11111111
E3A9   FF            ???                ;11111111
E3AA   FF            ???                ;11111111
E3AB   FF            ???                ;11111111
E3AC   FF            ???                ;11111111
E3AD   FF            ???                ;11111111
E3AE   FF            ???                ;11111111
E3AF   FF            ???                ;11111111
E3B0   FF            ???                ;11111111
E3B1   FF            ???                ;11111111
E3B2   FF            ???                ;11111111
E3B3   FF            ???                ;11111111
E3B4   FF            ???                ;11111111
E3B5   FF            ???                ;11111111
E3B6   FF            ???                ;11111111
E3B7   FF            ???                ;11111111
E3B8   FF            ???                ;11111111
E3B9   FF            ???                ;11111111
E3BA   FF            ???                ;11111111
E3BB   FF            ???                ;11111111
E3BC   FF            ???                ;11111111
E3BD   FF            ???                ;11111111
E3BE   FF            ???                ;11111111
E3BF   FF            ???                ;11111111
E3C0   FF            ???                ;11111111
E3C1   FF            ???                ;11111111
E3C2   FF            ???                ;11111111
E3C3   FF            ???                ;11111111
E3C4   FF            ???                ;11111111
E3C5   FF            ???                ;11111111
E3C6   FF            ???                ;11111111
E3C7   FF            ???                ;11111111
E3C8   FF            ???                ;11111111
E3C9   FF            ???                ;11111111
E3CA   FF            ???                ;11111111
E3CB   FF            ???                ;11111111
E3CC   FF            ???                ;11111111
E3CD   FF            ???                ;11111111
E3CE   FF            ???                ;11111111
E3CF   FF            ???                ;11111111
E3D0   FF            ???                ;11111111
E3D1   FF            ???                ;11111111
E3D2   FF            ???                ;11111111
E3D3   FF            ???                ;11111111
E3D4   FF            ???                ;11111111
E3D5   FF            ???                ;11111111
E3D6   FF            ???                ;11111111
E3D7   FF            ???                ;11111111
E3D8   FF            ???                ;11111111
E3D9   FF            ???                ;11111111
E3DA   FF            ???                ;11111111
E3DB   FF            ???                ;11111111
E3DC   FF            ???                ;11111111
E3DD   FF            ???                ;11111111
E3DE   FF            ???                ;11111111
E3DF   FF            ???                ;11111111
E3E0   FF            ???                ;11111111
E3E1   FF            ???                ;11111111
E3E2   FF            ???                ;11111111
E3E3   FF            ???                ;11111111
E3E4   FF            ???                ;11111111
E3E5   FF            ???                ;11111111
E3E6   FF            ???                ;11111111
E3E7   FF            ???                ;11111111
E3E8   FF            ???                ;11111111
E3E9   FF            ???                ;11111111
E3EA   FF            ???                ;11111111
E3EB   FF            ???                ;11111111
E3EC   FF            ???                ;11111111
E3ED   FF            ???                ;11111111
E3EE   FF            ???                ;11111111
E3EF   FF            ???                ;11111111
E3F0   FF            ???                ;11111111
E3F1   FF            ???                ;11111111
E3F2   FF            ???                ;11111111
E3F3   FF            ???                ;11111111
E3F4   FF            ???                ;11111111
E3F5   FF            ???                ;11111111
E3F6   FF            ???                ;11111111
E3F7   FF            ???                ;11111111
E3F8   FF            ???                ;11111111
E3F9   FF            ???                ;11111111
E3FA   FF            ???                ;11111111
E3FB   FF            ???                ;11111111
E3FC   FF            ???                ;11111111
E3FD   FF            ???                ;11111111
E3FE   FF            ???                ;11111111
E3FF   FF            ???                ;11111111
E400   FF            ???                ;11111111
E401   FF            ???                ;11111111
E402   FF            ???                ;11111111
E403   FF            ???                ;11111111
E404   FF            ???                ;11111111
E405   FF            ???                ;11111111
E406   FF            ???                ;11111111
E407   FF            ???                ;11111111
E408   FF            ???                ;11111111
E409   FF            ???                ;11111111
E40A   FF            ???                ;11111111
E40B   FF            ???                ;11111111
E40C   FF            ???                ;11111111
E40D   FF            ???                ;11111111
E40E   FF            ???                ;11111111
E40F   FF            ???                ;11111111
E410   FF            ???                ;11111111
E411   FF            ???                ;11111111
E412   FF            ???                ;11111111
E413   FF            ???                ;11111111
E414   FF            ???                ;11111111
E415   FF            ???                ;11111111
E416   FF            ???                ;11111111
E417   FF            ???                ;11111111
E418   FF            ???                ;11111111
E419   FF            ???                ;11111111
E41A   FF            ???                ;11111111
E41B   FF            ???                ;11111111
E41C   FF            ???                ;11111111
E41D   FF            ???                ;11111111
E41E   FF            ???                ;11111111
E41F   FF            ???                ;11111111
E420   FF            ???                ;11111111
E421   FF            ???                ;11111111
E422   FF            ???                ;11111111
E423   FF            ???                ;11111111
E424   FF            ???                ;11111111
E425   FF            ???                ;11111111
E426   FF            ???                ;11111111
E427   FF            ???                ;11111111
E428   FF            ???                ;11111111
E429   FF            ???                ;11111111
E42A   FF            ???                ;11111111
E42B   FF            ???                ;11111111
E42C   FF            ???                ;11111111
E42D   FF            ???                ;11111111
E42E   FF            ???                ;11111111
E42F   FF            ???                ;11111111
E430   FF            ???                ;11111111
E431   FF            ???                ;11111111
E432   FF            ???                ;11111111
E433   FF            ???                ;11111111
E434   FF            ???                ;11111111
E435   FF            ???                ;11111111
E436   FF            ???                ;11111111
E437   FF            ???                ;11111111
E438   FF            ???                ;11111111
E439   FF            ???                ;11111111
E43A   FF            ???                ;11111111
E43B   FF            ???                ;11111111
E43C   FF            ???                ;11111111
E43D   FF            ???                ;11111111
E43E   FF            ???                ;11111111
E43F   FF            ???                ;11111111
E440   FF            ???                ;11111111
E441   FF            ???                ;11111111
E442   FF            ???                ;11111111
E443   FF            ???                ;11111111
E444   FF            ???                ;11111111
E445   FF            ???                ;11111111
E446   FF            ???                ;11111111
E447   FF            ???                ;11111111
E448   FF            ???                ;11111111
E449   FF            ???                ;11111111
E44A   FF            ???                ;11111111
E44B   FF            ???                ;11111111
E44C   FF            ???                ;11111111
E44D   FF            ???                ;11111111
E44E   FF            ???                ;11111111
E44F   FF            ???                ;11111111
E450   FF            ???                ;11111111
E451   FF            ???                ;11111111
E452   FF            ???                ;11111111
E453   FF            ???                ;11111111
E454   FF            ???                ;11111111
E455   FF            ???                ;11111111
E456   FF            ???                ;11111111
E457   FF            ???                ;11111111
E458   FF            ???                ;11111111
E459   FF            ???                ;11111111
E45A   FF            ???                ;11111111
E45B   FF            ???                ;11111111
E45C   FF            ???                ;11111111
E45D   FF            ???                ;11111111
E45E   FF            ???                ;11111111
E45F   FF            ???                ;11111111
E460   FF            ???                ;11111111
E461   FF            ???                ;11111111
E462   FF            ???                ;11111111
E463   FF            ???                ;11111111
E464   FF            ???                ;11111111
E465   FF            ???                ;11111111
E466   FF            ???                ;11111111
E467   FF            ???                ;11111111
E468   FF            ???                ;11111111
E469   FF            ???                ;11111111
E46A   FF            ???                ;11111111
E46B   FF            ???                ;11111111
E46C   FF            ???                ;11111111
E46D   FF            ???                ;11111111
E46E   FF            ???                ;11111111
E46F   FF            ???                ;11111111
E470   FF            ???                ;11111111
E471   FF            ???                ;11111111
E472   FF            ???                ;11111111
E473   FF            ???                ;11111111
E474   FF            ???                ;11111111
E475   FF            ???                ;11111111
E476   FF            ???                ;11111111
E477   FF            ???                ;11111111
E478   FF            ???                ;11111111
E479   FF            ???                ;11111111
E47A   FF            ???                ;11111111
E47B   FF            ???                ;11111111
E47C   FF            ???                ;11111111
E47D   FF            ???                ;11111111
E47E   FF            ???                ;11111111
E47F   FF            ???                ;11111111
E480   FF            ???                ;11111111
E481   FF            ???                ;11111111
E482   FF            ???                ;11111111
E483   FF            ???                ;11111111
E484   FF            ???                ;11111111
E485   FF            ???                ;11111111
E486   FF            ???                ;11111111
E487   FF            ???                ;11111111
E488   FF            ???                ;11111111
E489   FF            ???                ;11111111
E48A   FF            ???                ;11111111
E48B   FF            ???                ;11111111
E48C   FF            ???                ;11111111
E48D   FF            ???                ;11111111
E48E   FF            ???                ;11111111
E48F   FF            ???                ;11111111
E490   FF            ???                ;11111111
E491   FF            ???                ;11111111
E492   FF            ???                ;11111111
E493   FF            ???                ;11111111
E494   FF            ???                ;11111111
E495   FF            ???                ;11111111
E496   FF            ???                ;11111111
E497   FF            ???                ;11111111
E498   FF            ???                ;11111111
E499   FF            ???                ;11111111
E49A   FF            ???                ;11111111
E49B   FF            ???                ;11111111
E49C   FF            ???                ;11111111
E49D   FF            ???                ;11111111
E49E   FF            ???                ;11111111
E49F   FF            ???                ;11111111
E4A0   FF            ???                ;11111111
E4A1   FF            ???                ;11111111
E4A2   FF            ???                ;11111111
E4A3   FF            ???                ;11111111
E4A4   FF            ???                ;11111111
E4A5   FF            ???                ;11111111
E4A6   FF            ???                ;11111111
E4A7   FF            ???                ;11111111
E4A8   FF            ???                ;11111111
E4A9   FF            ???                ;11111111
E4AA   FF            ???                ;11111111
E4AB   FF            ???                ;11111111
E4AC   FF            ???                ;11111111
E4AD   FF            ???                ;11111111
E4AE   FF            ???                ;11111111
E4AF   FF            ???                ;11111111
E4B0   FF            ???                ;11111111
E4B1   FF            ???                ;11111111
E4B2   FF            ???                ;11111111
E4B3   FF            ???                ;11111111
E4B4   FF            ???                ;11111111
E4B5   FF            ???                ;11111111
E4B6   FF            ???                ;11111111
E4B7   FF            ???                ;11111111
E4B8   FF            ???                ;11111111
E4B9   FF            ???                ;11111111
E4BA   FF            ???                ;11111111
E4BB   FF            ???                ;11111111
E4BC   FF            ???                ;11111111
E4BD   FF            ???                ;11111111
E4BE   FF            ???                ;11111111
E4BF   FF            ???                ;11111111
E4C0   FF            ???                ;11111111
E4C1   FF            ???                ;11111111
E4C2   FF            ???                ;11111111
E4C3   FF            ???                ;11111111
E4C4   FF            ???                ;11111111
E4C5   FF            ???                ;11111111
E4C6   FF            ???                ;11111111
E4C7   FF            ???                ;11111111
E4C8   FF            ???                ;11111111
E4C9   FF            ???                ;11111111
E4CA   FF            ???                ;11111111
E4CB   FF            ???                ;11111111
E4CC   FF            ???                ;11111111
E4CD   FF            ???                ;11111111
E4CE   FF            ???                ;11111111
E4CF   FF            ???                ;11111111
E4D0   FF            ???                ;11111111
E4D1   FF            ???                ;11111111
E4D2   FF            ???                ;11111111
E4D3   FF            ???                ;11111111
E4D4   FF            ???                ;11111111
E4D5   FF            ???                ;11111111
E4D6   FF            ???                ;11111111
E4D7   FF            ???                ;11111111
E4D8   FF            ???                ;11111111
E4D9   FF            ???                ;11111111
E4DA   FF            ???                ;11111111
E4DB   FF            ???                ;11111111
E4DC   FF            ???                ;11111111
E4DD   FF            ???                ;11111111
E4DE   FF            ???                ;11111111
E4DF   FF            ???                ;11111111
E4E0   FF            ???                ;11111111
E4E1   FF            ???                ;11111111
E4E2   FF            ???                ;11111111
E4E3   FF            ???                ;11111111
E4E4   FF            ???                ;11111111
E4E5   FF            ???                ;11111111
E4E6   FF            ???                ;11111111
E4E7   FF            ???                ;11111111
E4E8   FF            ???                ;11111111
E4E9   FF            ???                ;11111111
E4EA   FF            ???                ;11111111
E4EB   FF            ???                ;11111111
E4EC   FF            ???                ;11111111
E4ED   FF            ???                ;11111111
E4EE   FF            ???                ;11111111
E4EF   FF            ???                ;11111111
E4F0   FF            ???                ;11111111
E4F1   FF            ???                ;11111111
E4F2   FF            ???                ;11111111
E4F3   FF            ???                ;11111111
E4F4   FF            ???                ;11111111
E4F5   FF            ???                ;11111111
E4F6   FF            ???                ;11111111
E4F7   FF            ???                ;11111111
E4F8   FF            ???                ;11111111
E4F9   FF            ???                ;11111111
E4FA   FF            ???                ;11111111
E4FB   FF            ???                ;11111111
E4FC   FF            ???                ;11111111
E4FD   FF            ???                ;11111111
E4FE   FF            ???                ;11111111
E4FF   FF            ???                ;11111111
E500   FF            ???                ;11111111
E501   FF            ???                ;11111111
E502   FF            ???                ;11111111
E503   FF            ???                ;11111111
E504   FF            ???                ;11111111
E505   FF            ???                ;11111111
E506   FF            ???                ;11111111
E507   FF            ???                ;11111111
E508   FF            ???                ;11111111
E509   FF            ???                ;11111111
E50A   FF            ???                ;11111111
E50B   FF            ???                ;11111111
E50C   FF            ???                ;11111111
E50D   FF            ???                ;11111111
E50E   FF            ???                ;11111111
E50F   FF            ???                ;11111111
E510   FF            ???                ;11111111
E511   FF            ???                ;11111111
E512   FF            ???                ;11111111
E513   FF            ???                ;11111111
E514   FF            ???                ;11111111
E515   FF            ???                ;11111111
E516   FF            ???                ;11111111
E517   FF            ???                ;11111111
E518   FF            ???                ;11111111
E519   FF            ???                ;11111111
E51A   FF            ???                ;11111111
E51B   FF            ???                ;11111111
E51C   FF            ???                ;11111111
E51D   FF            ???                ;11111111
E51E   FF            ???                ;11111111
E51F   FF            ???                ;11111111
E520   FF            ???                ;11111111
E521   FF            ???                ;11111111
E522   FF            ???                ;11111111
E523   FF            ???                ;11111111
E524   FF            ???                ;11111111
E525   FF            ???                ;11111111
E526   FF            ???                ;11111111
E527   FF            ???                ;11111111
E528   FF            ???                ;11111111
E529   FF            ???                ;11111111
E52A   FF            ???                ;11111111
E52B   FF            ???                ;11111111
E52C   FF            ???                ;11111111
E52D   FF            ???                ;11111111
E52E   FF            ???                ;11111111
E52F   FF            ???                ;11111111
E530   FF            ???                ;11111111
E531   FF            ???                ;11111111
E532   FF            ???                ;11111111
E533   FF            ???                ;11111111
E534   FF            ???                ;11111111
E535   FF            ???                ;11111111
E536   FF            ???                ;11111111
E537   FF            ???                ;11111111
E538   FF            ???                ;11111111
E539   FF            ???                ;11111111
E53A   FF            ???                ;11111111
E53B   FF            ???                ;11111111
E53C   FF            ???                ;11111111
E53D   FF            ???                ;11111111
E53E   FF            ???                ;11111111
E53F   FF            ???                ;11111111
E540   FF            ???                ;11111111
E541   FF            ???                ;11111111
E542   FF            ???                ;11111111
E543   FF            ???                ;11111111
E544   FF            ???                ;11111111
E545   FF            ???                ;11111111
E546   FF            ???                ;11111111
E547   FF            ???                ;11111111
E548   FF            ???                ;11111111
E549   FF            ???                ;11111111
E54A   FF            ???                ;11111111
E54B   FF            ???                ;11111111
E54C   FF            ???                ;11111111
E54D   FF            ???                ;11111111
E54E   FF            ???                ;11111111
E54F   FF            ???                ;11111111
E550   FF            ???                ;11111111
E551   FF            ???                ;11111111
E552   FF            ???                ;11111111
E553   FF            ???                ;11111111
E554   FF            ???                ;11111111
E555   FF            ???                ;11111111
E556   FF            ???                ;11111111
E557   FF            ???                ;11111111
E558   FF            ???                ;11111111
E559   FF            ???                ;11111111
E55A   FF            ???                ;11111111
E55B   FF            ???                ;11111111
E55C   FF            ???                ;11111111
E55D   FF            ???                ;11111111
E55E   FF            ???                ;11111111
E55F   FF            ???                ;11111111
E560   FF            ???                ;11111111
E561   FF            ???                ;11111111
E562   FF            ???                ;11111111
E563   FF            ???                ;11111111
E564   FF            ???                ;11111111
E565   FF            ???                ;11111111
E566   FF            ???                ;11111111
E567   FF            ???                ;11111111
E568   FF            ???                ;11111111
E569   FF            ???                ;11111111
E56A   FF            ???                ;11111111
E56B   FF            ???                ;11111111
E56C   FF            ???                ;11111111
E56D   FF            ???                ;11111111
E56E   FF            ???                ;11111111
E56F   FF            ???                ;11111111
E570   FF            ???                ;11111111
E571   FF            ???                ;11111111
E572   FF            ???                ;11111111
E573   FF            ???                ;11111111
E574   FF            ???                ;11111111
E575   FF            ???                ;11111111
E576   FF            ???                ;11111111
E577   FF            ???                ;11111111
E578   FF            ???                ;11111111
E579   FF            ???                ;11111111
E57A   FF            ???                ;11111111
E57B   FF            ???                ;11111111
E57C   FF            ???                ;11111111
E57D   FF            ???                ;11111111
E57E   FF            ???                ;11111111
E57F   FF            ???                ;11111111
E580   FF            ???                ;11111111
E581   FF            ???                ;11111111
E582   FF            ???                ;11111111
E583   FF            ???                ;11111111
E584   FF            ???                ;11111111
E585   FF            ???                ;11111111
E586   FF            ???                ;11111111
E587   FF            ???                ;11111111
E588   FF            ???                ;11111111
E589   FF            ???                ;11111111
E58A   FF            ???                ;11111111
E58B   FF            ???                ;11111111
E58C   FF            ???                ;11111111
E58D   FF            ???                ;11111111
E58E   FF            ???                ;11111111
E58F   FF            ???                ;11111111
E590   FF            ???                ;11111111
E591   FF            ???                ;11111111
E592   FF            ???                ;11111111
E593   FF            ???                ;11111111
E594   FF            ???                ;11111111
E595   FF            ???                ;11111111
E596   FF            ???                ;11111111
E597   FF            ???                ;11111111
E598   FF            ???                ;11111111
E599   FF            ???                ;11111111
E59A   FF            ???                ;11111111
E59B   FF            ???                ;11111111
E59C   FF            ???                ;11111111
E59D   FF            ???                ;11111111
E59E   FF            ???                ;11111111
E59F   FF            ???                ;11111111
E5A0   FF            ???                ;11111111
E5A1   FF            ???                ;11111111
E5A2   FF            ???                ;11111111
E5A3   FF            ???                ;11111111
E5A4   FF            ???                ;11111111
E5A5   FF            ???                ;11111111
E5A6   FF            ???                ;11111111
E5A7   FF            ???                ;11111111
E5A8   FF            ???                ;11111111
E5A9   FF            ???                ;11111111
E5AA   FF            ???                ;11111111
E5AB   FF            ???                ;11111111
E5AC   FF            ???                ;11111111
E5AD   FF            ???                ;11111111
E5AE   FF            ???                ;11111111
E5AF   FF            ???                ;11111111
E5B0   FF            ???                ;11111111
E5B1   FF            ???                ;11111111
E5B2   FF            ???                ;11111111
E5B3   FF            ???                ;11111111
E5B4   FF            ???                ;11111111
E5B5   FF            ???                ;11111111
E5B6   FF            ???                ;11111111
E5B7   FF            ???                ;11111111
E5B8   FF            ???                ;11111111
E5B9   FF            ???                ;11111111
E5BA   FF            ???                ;11111111
E5BB   FF            ???                ;11111111
E5BC   FF            ???                ;11111111
E5BD   FF            ???                ;11111111
E5BE   FF            ???                ;11111111
E5BF   FF            ???                ;11111111
E5C0   FF            ???                ;11111111
E5C1   FF            ???                ;11111111
E5C2   FF            ???                ;11111111
E5C3   FF            ???                ;11111111
E5C4   FF            ???                ;11111111
E5C5   FF            ???                ;11111111
E5C6   FF            ???                ;11111111
E5C7   FF            ???                ;11111111
E5C8   FF            ???                ;11111111
E5C9   FF            ???                ;11111111
E5CA   FF            ???                ;11111111
E5CB   FF            ???                ;11111111
E5CC   FF            ???                ;11111111
E5CD   FF            ???                ;11111111
E5CE   FF            ???                ;11111111
E5CF   FF            ???                ;11111111
E5D0   FF            ???                ;11111111
E5D1   FF            ???                ;11111111
E5D2   FF            ???                ;11111111
E5D3   FF            ???                ;11111111
E5D4   FF            ???                ;11111111
E5D5   FF            ???                ;11111111
E5D6   FF            ???                ;11111111
E5D7   FF            ???                ;11111111
E5D8   FF            ???                ;11111111
E5D9   FF            ???                ;11111111
E5DA   FF            ???                ;11111111
E5DB   FF            ???                ;11111111
E5DC   FF            ???                ;11111111
E5DD   FF            ???                ;11111111
E5DE   FF            ???                ;11111111
E5DF   FF            ???                ;11111111
E5E0   FF            ???                ;11111111
E5E1   FF            ???                ;11111111
E5E2   FF            ???                ;11111111
E5E3   FF            ???                ;11111111
E5E4   FF            ???                ;11111111
E5E5   FF            ???                ;11111111
E5E6   FF            ???                ;11111111
E5E7   FF            ???                ;11111111
E5E8   FF            ???                ;11111111
E5E9   FF            ???                ;11111111
E5EA   FF            ???                ;11111111
E5EB   FF            ???                ;11111111
E5EC   FF            ???                ;11111111
E5ED   FF            ???                ;11111111
E5EE   FF            ???                ;11111111
E5EF   FF            ???                ;11111111
E5F0   FF            ???                ;11111111
E5F1   FF            ???                ;11111111
E5F2   FF            ???                ;11111111
E5F3   FF            ???                ;11111111
E5F4   FF            ???                ;11111111
E5F5   FF            ???                ;11111111
E5F6   FF            ???                ;11111111
E5F7   FF            ???                ;11111111
E5F8   FF            ???                ;11111111
E5F9   FF            ???                ;11111111
E5FA   FF            ???                ;11111111
E5FB   FF            ???                ;11111111
E5FC   FF            ???                ;11111111
E5FD   FF            ???                ;11111111
E5FE   FF            ???                ;11111111
E5FF   FF            ???                ;11111111
E600   FF            ???                ;11111111
E601   FF            ???                ;11111111
E602   FF            ???                ;11111111
E603   FF            ???                ;11111111
E604   FF            ???                ;11111111
E605   FF            ???                ;11111111
E606   FF            ???                ;11111111
E607   FF            ???                ;11111111
E608   FF            ???                ;11111111
E609   FF            ???                ;11111111
E60A   FF            ???                ;11111111
E60B   FF            ???                ;11111111
E60C   FF            ???                ;11111111
E60D   FF            ???                ;11111111
E60E   FF            ???                ;11111111
E60F   FF            ???                ;11111111
E610   FF            ???                ;11111111
E611   FF            ???                ;11111111
E612   FF            ???                ;11111111
E613   FF            ???                ;11111111
E614   FF            ???                ;11111111
E615   FF            ???                ;11111111
E616   FF            ???                ;11111111
E617   FF            ???                ;11111111
E618   FF            ???                ;11111111
E619   FF            ???                ;11111111
E61A   FF            ???                ;11111111
E61B   FF            ???                ;11111111
E61C   FF            ???                ;11111111
E61D   FF            ???                ;11111111
E61E   FF            ???                ;11111111
E61F   FF            ???                ;11111111
E620   FF            ???                ;11111111
E621   FF            ???                ;11111111
E622   FF            ???                ;11111111
E623   FF            ???                ;11111111
E624   FF            ???                ;11111111
E625   FF            ???                ;11111111
E626   FF            ???                ;11111111
E627   FF            ???                ;11111111
E628   FF            ???                ;11111111
E629   FF            ???                ;11111111
E62A   FF            ???                ;11111111
E62B   FF            ???                ;11111111
E62C   FF            ???                ;11111111
E62D   FF            ???                ;11111111
E62E   FF            ???                ;11111111
E62F   FF            ???                ;11111111
E630   FF            ???                ;11111111
E631   FF            ???                ;11111111
E632   FF            ???                ;11111111
E633   FF            ???                ;11111111
E634   FF            ???                ;11111111
E635   FF            ???                ;11111111
E636   FF            ???                ;11111111
E637   FF            ???                ;11111111
E638   FF            ???                ;11111111
E639   FF            ???                ;11111111
E63A   FF            ???                ;11111111
E63B   FF            ???                ;11111111
E63C   FF            ???                ;11111111
E63D   FF            ???                ;11111111
E63E   FF            ???                ;11111111
E63F   FF            ???                ;11111111
E640   FF            ???                ;11111111
E641   FF            ???                ;11111111
E642   FF            ???                ;11111111
E643   FF            ???                ;11111111
E644   FF            ???                ;11111111
E645   FF            ???                ;11111111
E646   FF            ???                ;11111111
E647   FF            ???                ;11111111
E648   FF            ???                ;11111111
E649   FF            ???                ;11111111
E64A   FF            ???                ;11111111
E64B   FF            ???                ;11111111
E64C   FF            ???                ;11111111
E64D   FF            ???                ;11111111
E64E   FF            ???                ;11111111
E64F   FF            ???                ;11111111
E650   FF            ???                ;11111111
E651   FF            ???                ;11111111
E652   FF            ???                ;11111111
E653   FF            ???                ;11111111
E654   FF            ???                ;11111111
E655   FF            ???                ;11111111
E656   FF            ???                ;11111111
E657   FF            ???                ;11111111
E658   FF            ???                ;11111111
E659   FF            ???                ;11111111
E65A   FF            ???                ;11111111
E65B   FF            ???                ;11111111
E65C   FF            ???                ;11111111
E65D   FF            ???                ;11111111
E65E   FF            ???                ;11111111
E65F   FF            ???                ;11111111
E660   FF            ???                ;11111111
E661   FF            ???                ;11111111
E662   FF            ???                ;11111111
E663   FF            ???                ;11111111
E664   FF            ???                ;11111111
E665   FF            ???                ;11111111
E666   FF            ???                ;11111111
E667   FF            ???                ;11111111
E668   FF            ???                ;11111111
E669   FF            ???                ;11111111
E66A   FF            ???                ;11111111
E66B   FF            ???                ;11111111
E66C   FF            ???                ;11111111
E66D   FF            ???                ;11111111
E66E   FF            ???                ;11111111
E66F   FF            ???                ;11111111
E670   FF            ???                ;11111111
E671   FF            ???                ;11111111
E672   FF            ???                ;11111111
E673   FF            ???                ;11111111
E674   FF            ???                ;11111111
E675   FF            ???                ;11111111
E676   FF            ???                ;11111111
E677   FF            ???                ;11111111
E678   FF            ???                ;11111111
E679   FF            ???                ;11111111
E67A   FF            ???                ;11111111
E67B   FF            ???                ;11111111
E67C   FF            ???                ;11111111
E67D   FF            ???                ;11111111
E67E   FF            ???                ;11111111
E67F   FF            ???                ;11111111
E680   FF            ???                ;11111111
E681   FF            ???                ;11111111
E682   FF            ???                ;11111111
E683   FF            ???                ;11111111
E684   FF            ???                ;11111111
E685   FF            ???                ;11111111
E686   FF            ???                ;11111111
E687   FF            ???                ;11111111
E688   FF            ???                ;11111111
E689   FF            ???                ;11111111
E68A   FF            ???                ;11111111
E68B   FF            ???                ;11111111
E68C   FF            ???                ;11111111
E68D   FF            ???                ;11111111
E68E   FF            ???                ;11111111
E68F   FF            ???                ;11111111
E690   FF            ???                ;11111111
E691   FF            ???                ;11111111
E692   FF            ???                ;11111111
E693   FF            ???                ;11111111
E694   FF            ???                ;11111111
E695   FF            ???                ;11111111
E696   FF            ???                ;11111111
E697   FF            ???                ;11111111
E698   FF            ???                ;11111111
E699   FF            ???                ;11111111
E69A   FF            ???                ;11111111
E69B   FF            ???                ;11111111
E69C   FF            ???                ;11111111
E69D   FF            ???                ;11111111
E69E   FF            ???                ;11111111
E69F   FF            ???                ;11111111
E6A0   FF            ???                ;11111111
E6A1   FF            ???                ;11111111
E6A2   FF            ???                ;11111111
E6A3   FF            ???                ;11111111
E6A4   FF            ???                ;11111111
E6A5   FF            ???                ;11111111
E6A6   FF            ???                ;11111111
E6A7   FF            ???                ;11111111
E6A8   FF            ???                ;11111111
E6A9   FF            ???                ;11111111
E6AA   FF            ???                ;11111111
E6AB   FF            ???                ;11111111
E6AC   FF            ???                ;11111111
E6AD   FF            ???                ;11111111
E6AE   FF            ???                ;11111111
E6AF   FF            ???                ;11111111
E6B0   FF            ???                ;11111111
E6B1   FF            ???                ;11111111
E6B2   FF            ???                ;11111111
E6B3   FF            ???                ;11111111
E6B4   FF            ???                ;11111111
E6B5   FF            ???                ;11111111
E6B6   FF            ???                ;11111111
E6B7   FF            ???                ;11111111
E6B8   FF            ???                ;11111111
E6B9   FF            ???                ;11111111
E6BA   FF            ???                ;11111111
E6BB   FF            ???                ;11111111
E6BC   FF            ???                ;11111111
E6BD   FF            ???                ;11111111
E6BE   FF            ???                ;11111111
E6BF   FF            ???                ;11111111
E6C0   FF            ???                ;11111111
E6C1   FF            ???                ;11111111
E6C2   FF            ???                ;11111111
E6C3   FF            ???                ;11111111
E6C4   FF            ???                ;11111111
E6C5   FF            ???                ;11111111
E6C6   FF            ???                ;11111111
E6C7   FF            ???                ;11111111
E6C8   FF            ???                ;11111111
E6C9   FF            ???                ;11111111
E6CA   FF            ???                ;11111111
E6CB   FF            ???                ;11111111
E6CC   FF            ???                ;11111111
E6CD   FF            ???                ;11111111
E6CE   FF            ???                ;11111111
E6CF   FF            ???                ;11111111
E6D0   FF            ???                ;11111111
E6D1   FF            ???                ;11111111
E6D2   FF            ???                ;11111111
E6D3   FF            ???                ;11111111
E6D4   FF            ???                ;11111111
E6D5   FF            ???                ;11111111
E6D6   FF            ???                ;11111111
E6D7   FF            ???                ;11111111
E6D8   FF            ???                ;11111111
E6D9   FF            ???                ;11111111
E6DA   FF            ???                ;11111111
E6DB   FF            ???                ;11111111
E6DC   FF            ???                ;11111111
E6DD   FF            ???                ;11111111
E6DE   FF            ???                ;11111111
E6DF   FF            ???                ;11111111
E6E0   FF            ???                ;11111111
E6E1   FF            ???                ;11111111
E6E2   FF            ???                ;11111111
E6E3   FF            ???                ;11111111
E6E4   FF            ???                ;11111111
E6E5   FF            ???                ;11111111
E6E6   FF            ???                ;11111111
E6E7   FF            ???                ;11111111
E6E8   FF            ???                ;11111111
E6E9   FF            ???                ;11111111
E6EA   FF            ???                ;11111111
E6EB   FF            ???                ;11111111
E6EC   FF            ???                ;11111111
E6ED   FF            ???                ;11111111
E6EE   FF            ???                ;11111111
E6EF   FF            ???                ;11111111
E6F0   FF            ???                ;11111111
E6F1   FF            ???                ;11111111
E6F2   FF            ???                ;11111111
E6F3   FF            ???                ;11111111
E6F4   FF            ???                ;11111111
E6F5   FF            ???                ;11111111
E6F6   FF            ???                ;11111111
E6F7   FF            ???                ;11111111
E6F8   FF            ???                ;11111111
E6F9   FF            ???                ;11111111
E6FA   FF            ???                ;11111111
E6FB   FF            ???                ;11111111
E6FC   FF            ???                ;11111111
E6FD   FF            ???                ;11111111
E6FE   FF            ???                ;11111111
E6FF   FF            ???                ;11111111
E700   FF            ???                ;11111111
E701   FF            ???                ;11111111
E702   FF            ???                ;11111111
E703   FF            ???                ;11111111
E704   FF            ???                ;11111111
E705   FF            ???                ;11111111
E706   FF            ???                ;11111111
E707   FF            ???                ;11111111
E708   FF            ???                ;11111111
E709   FF            ???                ;11111111
E70A   FF            ???                ;11111111
E70B   FF            ???                ;11111111
E70C   FF            ???                ;11111111
E70D   FF            ???                ;11111111
E70E   FF            ???                ;11111111
E70F   FF            ???                ;11111111
E710   FF            ???                ;11111111
E711   FF            ???                ;11111111
E712   FF            ???                ;11111111
E713   FF            ???                ;11111111
E714   FF            ???                ;11111111
E715   FF            ???                ;11111111
E716   FF            ???                ;11111111
E717   FF            ???                ;11111111
E718   FF            ???                ;11111111
E719   FF            ???                ;11111111
E71A   FF            ???                ;11111111
E71B   FF            ???                ;11111111
E71C   FF            ???                ;11111111
E71D   FF            ???                ;11111111
E71E   FF            ???                ;11111111
E71F   FF            ???                ;11111111
E720   FF            ???                ;11111111
E721   FF            ???                ;11111111
E722   FF            ???                ;11111111
E723   FF            ???                ;11111111
E724   FF            ???                ;11111111
E725   FF            ???                ;11111111
E726   FF            ???                ;11111111
E727   FF            ???                ;11111111
E728   FF            ???                ;11111111
E729   FF            ???                ;11111111
E72A   FF            ???                ;11111111
E72B   FF            ???                ;11111111
E72C   FF            ???                ;11111111
E72D   FF            ???                ;11111111
E72E   FF            ???                ;11111111
E72F   FF            ???                ;11111111
E730   FF            ???                ;11111111
E731   FF            ???                ;11111111
E732   FF            ???                ;11111111
E733   FF            ???                ;11111111
E734   FF            ???                ;11111111
E735   FF            ???                ;11111111
E736   FF            ???                ;11111111
E737   FF            ???                ;11111111
E738   FF            ???                ;11111111
E739   FF            ???                ;11111111
E73A   FF            ???                ;11111111
E73B   FF            ???                ;11111111
E73C   FF            ???                ;11111111
E73D   FF            ???                ;11111111
E73E   FF            ???                ;11111111
E73F   FF            ???                ;11111111
E740   FF            ???                ;11111111
E741   FF            ???                ;11111111
E742   FF            ???                ;11111111
E743   FF            ???                ;11111111
E744   FF            ???                ;11111111
E745   FF            ???                ;11111111
E746   FF            ???                ;11111111
E747   FF            ???                ;11111111
E748   FF            ???                ;11111111
E749   FF            ???                ;11111111
E74A   FF            ???                ;11111111
E74B   FF            ???                ;11111111
E74C   FF            ???                ;11111111
E74D   FF            ???                ;11111111
E74E   FF            ???                ;11111111
E74F   FF            ???                ;11111111
E750   FF            ???                ;11111111
E751   FF            ???                ;11111111
E752   FF            ???                ;11111111
E753   FF            ???                ;11111111
E754   FF            ???                ;11111111
E755   FF            ???                ;11111111
E756   FF            ???                ;11111111
E757   FF            ???                ;11111111
E758   FF            ???                ;11111111
E759   FF            ???                ;11111111
E75A   FF            ???                ;11111111
E75B   FF            ???                ;11111111
E75C   FF            ???                ;11111111
E75D   FF            ???                ;11111111
E75E   FF            ???                ;11111111
E75F   FF            ???                ;11111111
E760   FF            ???                ;11111111
E761   FF            ???                ;11111111
E762   FF            ???                ;11111111
E763   FF            ???                ;11111111
E764   FF            ???                ;11111111
E765   FF            ???                ;11111111
E766   FF            ???                ;11111111
E767   FF            ???                ;11111111
E768   FF            ???                ;11111111
E769   FF            ???                ;11111111
E76A   FF            ???                ;11111111
E76B   FF            ???                ;11111111
E76C   FF            ???                ;11111111
E76D   FF            ???                ;11111111
E76E   FF            ???                ;11111111
E76F   FF            ???                ;11111111
E770   FF            ???                ;11111111
E771   FF            ???                ;11111111
E772   FF            ???                ;11111111
E773   FF            ???                ;11111111
E774   FF            ???                ;11111111
E775   FF            ???                ;11111111
E776   FF            ???                ;11111111
E777   FF            ???                ;11111111
E778   FF            ???                ;11111111
E779   FF            ???                ;11111111
E77A   FF            ???                ;11111111
E77B   FF            ???                ;11111111
E77C   FF            ???                ;11111111
E77D   FF            ???                ;11111111
E77E   FF            ???                ;11111111
E77F   FF            ???                ;11111111
E780   FF            ???                ;11111111
E781   FF            ???                ;11111111
E782   FF            ???                ;11111111
E783   FF            ???                ;11111111
E784   FF            ???                ;11111111
E785   FF            ???                ;11111111
E786   FF            ???                ;11111111
E787   FF            ???                ;11111111
E788   FF            ???                ;11111111
E789   FF            ???                ;11111111
E78A   FF            ???                ;11111111
E78B   FF            ???                ;11111111
E78C   FF            ???                ;11111111
E78D   FF            ???                ;11111111
E78E   FF            ???                ;11111111
E78F   FF            ???                ;11111111
E790   FF            ???                ;11111111
E791   FF            ???                ;11111111
E792   FF            ???                ;11111111
E793   FF            ???                ;11111111
E794   FF            ???                ;11111111
E795   FF            ???                ;11111111
E796   FF            ???                ;11111111
E797   FF            ???                ;11111111
E798   FF            ???                ;11111111
E799   FF            ???                ;11111111
E79A   FF            ???                ;11111111
E79B   FF            ???                ;11111111
E79C   FF            ???                ;11111111
E79D   FF            ???                ;11111111
E79E   FF            ???                ;11111111
E79F   FF            ???                ;11111111
E7A0   FF            ???                ;11111111
E7A1   FF            ???                ;11111111
E7A2   FF            ???                ;11111111
E7A3   FF            ???                ;11111111
E7A4   FF            ???                ;11111111
E7A5   FF            ???                ;11111111
E7A6   FF            ???                ;11111111
E7A7   FF            ???                ;11111111
E7A8   FF            ???                ;11111111
E7A9   FF            ???                ;11111111
E7AA   FF            ???                ;11111111
E7AB   FF            ???                ;11111111
E7AC   FF            ???                ;11111111
E7AD   FF            ???                ;11111111
E7AE   FF            ???                ;11111111
E7AF   FF            ???                ;11111111
E7B0   FF            ???                ;11111111
E7B1   FF            ???                ;11111111
E7B2   FF            ???                ;11111111
E7B3   FF            ???                ;11111111
E7B4   FF            ???                ;11111111
E7B5   FF            ???                ;11111111
E7B6   FF            ???                ;11111111
E7B7   FF            ???                ;11111111
E7B8   FF            ???                ;11111111
E7B9   FF            ???                ;11111111
E7BA   FF            ???                ;11111111
E7BB   FF            ???                ;11111111
E7BC   FF            ???                ;11111111
E7BD   FF            ???                ;11111111
E7BE   FF            ???                ;11111111
E7BF   FF            ???                ;11111111
E7C0   FF            ???                ;11111111
E7C1   FF            ???                ;11111111
E7C2   FF            ???                ;11111111
E7C3   FF            ???                ;11111111
E7C4   FF            ???                ;11111111
E7C5   FF            ???                ;11111111
E7C6   FF            ???                ;11111111
E7C7   FF            ???                ;11111111
E7C8   FF            ???                ;11111111
E7C9   FF            ???                ;11111111
E7CA   FF            ???                ;11111111
E7CB   FF            ???                ;11111111
E7CC   FF            ???                ;11111111
E7CD   FF            ???                ;11111111
E7CE   FF            ???                ;11111111
E7CF   FF            ???                ;11111111
E7D0   FF            ???                ;11111111
E7D1   FF            ???                ;11111111
E7D2   FF            ???                ;11111111
E7D3   FF            ???                ;11111111
E7D4   FF            ???                ;11111111
E7D5   FF            ???                ;11111111
E7D6   FF            ???                ;11111111
E7D7   FF            ???                ;11111111
E7D8   FF            ???                ;11111111
E7D9   FF            ???                ;11111111
E7DA   FF            ???                ;11111111
E7DB   FF            ???                ;11111111
E7DC   FF            ???                ;11111111
E7DD   FF            ???                ;11111111
E7DE   FF            ???                ;11111111
E7DF   FF            ???                ;11111111
E7E0   FF            ???                ;11111111
E7E1   FF            ???                ;11111111
E7E2   FF            ???                ;11111111
E7E3   FF            ???                ;11111111
E7E4   FF            ???                ;11111111
E7E5   FF            ???                ;11111111
E7E6   FF            ???                ;11111111
E7E7   FF            ???                ;11111111
E7E8   FF            ???                ;11111111
E7E9   FF            ???                ;11111111
E7EA   FF            ???                ;11111111
E7EB   FF            ???                ;11111111
E7EC   FF            ???                ;11111111
E7ED   FF            ???                ;11111111
E7EE   FF            ???                ;11111111
E7EF   FF            ???                ;11111111
E7F0   FF            ???                ;11111111
E7F1   FF            ???                ;11111111
E7F2   FF            ???                ;11111111
E7F3   FF            ???                ;11111111
E7F4   FF            ???                ;11111111
E7F5   FF            ???                ;11111111
E7F6   FF            ???                ;11111111
E7F7   FF            ???                ;11111111
E7F8   FF            ???                ;11111111
E7F9   FF            ???                ;11111111
E7FA   FF            ???                ;11111111
E7FB   FF            ???                ;11111111
E7FC   FF            ???                ;11111111
E7FD   FF            ???                ;11111111
E7FE   FF            ???                ;11111111
E7FF   FF            ???                ;11111111
E800   FF            ???                ;11111111
E801   FF            ???                ;11111111
E802   FF            ???                ;11111111
E803   FF            ???                ;11111111
E804   FF            ???                ;11111111
E805   FF            ???                ;11111111
E806   FF            ???                ;11111111
E807   FF            ???                ;11111111
E808   FF            ???                ;11111111
E809   FF            ???                ;11111111
E80A   FF            ???                ;11111111
E80B   FF            ???                ;11111111
E80C   FF            ???                ;11111111
E80D   FF            ???                ;11111111
E80E   FF            ???                ;11111111
E80F   FF            ???                ;11111111
E810   FF            ???                ;11111111
E811   FF            ???                ;11111111
E812   FF            ???                ;11111111
E813   FF            ???                ;11111111
E814   FF            ???                ;11111111
E815   FF            ???                ;11111111
E816   FF            ???                ;11111111
E817   FF            ???                ;11111111
E818   FF            ???                ;11111111
E819   FF            ???                ;11111111
E81A   FF            ???                ;11111111
E81B   FF            ???                ;11111111
E81C   FF            ???                ;11111111
E81D   FF            ???                ;11111111
E81E   FF            ???                ;11111111
E81F   FF            ???                ;11111111
E820   FF            ???                ;11111111
E821   FF            ???                ;11111111
E822   FF            ???                ;11111111
E823   FF            ???                ;11111111
E824   FF            ???                ;11111111
E825   FF            ???                ;11111111
E826   FF            ???                ;11111111
E827   FF            ???                ;11111111
E828   FF            ???                ;11111111
E829   FF            ???                ;11111111
E82A   FF            ???                ;11111111
E82B   FF            ???                ;11111111
E82C   FF            ???                ;11111111
E82D   FF            ???                ;11111111
E82E   FF            ???                ;11111111
E82F   FF            ???                ;11111111
E830   FF            ???                ;11111111
E831   FF            ???                ;11111111
E832   FF            ???                ;11111111
E833   FF            ???                ;11111111
E834   FF            ???                ;11111111
E835   FF            ???                ;11111111
E836   FF            ???                ;11111111
E837   FF            ???                ;11111111
E838   FF            ???                ;11111111
E839   FF            ???                ;11111111
E83A   FF            ???                ;11111111
E83B   FF            ???                ;11111111
E83C   FF            ???                ;11111111
E83D   FF            ???                ;11111111
E83E   FF            ???                ;11111111
E83F   FF            ???                ;11111111
E840   FF            ???                ;11111111
E841   FF            ???                ;11111111
E842   FF            ???                ;11111111
E843   FF            ???                ;11111111
E844   FF            ???                ;11111111
E845   FF            ???                ;11111111
E846   FF            ???                ;11111111
E847   FF            ???                ;11111111
E848   FF            ???                ;11111111
E849   FF            ???                ;11111111
E84A   FF            ???                ;11111111
E84B   FF            ???                ;11111111
E84C   FF            ???                ;11111111
E84D   FF            ???                ;11111111
E84E   FF            ???                ;11111111
E84F   FF            ???                ;11111111
E850   FF            ???                ;11111111
E851   FF            ???                ;11111111
E852   FF            ???                ;11111111
E853   FF            ???                ;11111111
E854   FF            ???                ;11111111
E855   FF            ???                ;11111111
E856   FF            ???                ;11111111
E857   FF            ???                ;11111111
E858   FF            ???                ;11111111
E859   FF            ???                ;11111111
E85A   FF            ???                ;11111111
E85B   FF            ???                ;11111111
E85C   FF            ???                ;11111111
E85D   FF            ???                ;11111111
E85E   FF            ???                ;11111111
E85F   FF            ???                ;11111111
E860   FF            ???                ;11111111
E861   FF            ???                ;11111111
E862   FF            ???                ;11111111
E863   FF            ???                ;11111111
E864   FF            ???                ;11111111
E865   FF            ???                ;11111111
E866   FF            ???                ;11111111
E867   FF            ???                ;11111111
E868   FF            ???                ;11111111
E869   FF            ???                ;11111111
E86A   FF            ???                ;11111111
E86B   FF            ???                ;11111111
E86C   FF            ???                ;11111111
E86D   FF            ???                ;11111111
E86E   FF            ???                ;11111111
E86F   FF            ???                ;11111111
E870   FF            ???                ;11111111
E871   FF            ???                ;11111111
E872   FF            ???                ;11111111
E873   FF            ???                ;11111111
E874   FF            ???                ;11111111
E875   FF            ???                ;11111111
E876   FF            ???                ;11111111
E877   FF            ???                ;11111111
E878   FF            ???                ;11111111
E879   FF            ???                ;11111111
E87A   FF            ???                ;11111111
E87B   FF            ???                ;11111111
E87C   FF            ???                ;11111111
E87D   FF            ???                ;11111111
E87E   FF            ???                ;11111111
E87F   FF            ???                ;11111111
E880   FF            ???                ;11111111
E881   FF            ???                ;11111111
E882   FF            ???                ;11111111
E883   FF            ???                ;11111111
E884   FF            ???                ;11111111
E885   FF            ???                ;11111111
E886   FF            ???                ;11111111
E887   FF            ???                ;11111111
E888   FF            ???                ;11111111
E889   FF            ???                ;11111111
E88A   FF            ???                ;11111111
E88B   FF            ???                ;11111111
E88C   FF            ???                ;11111111
E88D   FF            ???                ;11111111
E88E   FF            ???                ;11111111
E88F   FF            ???                ;11111111
E890   FF            ???                ;11111111
E891   FF            ???                ;11111111
E892   FF            ???                ;11111111
E893   FF            ???                ;11111111
E894   FF            ???                ;11111111
E895   FF            ???                ;11111111
E896   FF            ???                ;11111111
E897   FF            ???                ;11111111
E898   FF            ???                ;11111111
E899   FF            ???                ;11111111
E89A   FF            ???                ;11111111
E89B   FF            ???                ;11111111
E89C   FF            ???                ;11111111
E89D   FF            ???                ;11111111
E89E   FF            ???                ;11111111
E89F   FF            ???                ;11111111
E8A0   FF            ???                ;11111111
E8A1   FF            ???                ;11111111
E8A2   FF            ???                ;11111111
E8A3   FF            ???                ;11111111
E8A4   FF            ???                ;11111111
E8A5   FF            ???                ;11111111
E8A6   FF            ???                ;11111111
E8A7   FF            ???                ;11111111
E8A8   FF            ???                ;11111111
E8A9   FF            ???                ;11111111
E8AA   FF            ???                ;11111111
E8AB   FF            ???                ;11111111
E8AC   FF            ???                ;11111111
E8AD   FF            ???                ;11111111
E8AE   FF            ???                ;11111111
E8AF   FF            ???                ;11111111
E8B0   FF            ???                ;11111111
E8B1   FF            ???                ;11111111
E8B2   FF            ???                ;11111111
E8B3   FF            ???                ;11111111
E8B4   FF            ???                ;11111111
E8B5   FF            ???                ;11111111
E8B6   FF            ???                ;11111111
E8B7   FF            ???                ;11111111
E8B8   FF            ???                ;11111111
E8B9   FF            ???                ;11111111
E8BA   FF            ???                ;11111111
E8BB   FF            ???                ;11111111
E8BC   FF            ???                ;11111111
E8BD   FF            ???                ;11111111
E8BE   FF            ???                ;11111111
E8BF   FF            ???                ;11111111
E8C0   FF            ???                ;11111111
E8C1   FF            ???                ;11111111
E8C2   FF            ???                ;11111111
E8C3   FF            ???                ;11111111
E8C4   FF            ???                ;11111111
E8C5   FF            ???                ;11111111
E8C6   FF            ???                ;11111111
E8C7   FF            ???                ;11111111
E8C8   FF            ???                ;11111111
E8C9   FF            ???                ;11111111
E8CA   FF            ???                ;11111111
E8CB   FF            ???                ;11111111
E8CC   FF            ???                ;11111111
E8CD   FF            ???                ;11111111
E8CE   FF            ???                ;11111111
E8CF   FF            ???                ;11111111
E8D0   FF            ???                ;11111111
E8D1   FF            ???                ;11111111
E8D2   FF            ???                ;11111111
E8D3   FF            ???                ;11111111
E8D4   FF            ???                ;11111111
E8D5   FF            ???                ;11111111
E8D6   FF            ???                ;11111111
E8D7   FF            ???                ;11111111
E8D8   FF            ???                ;11111111
E8D9   FF            ???                ;11111111
E8DA   FF            ???                ;11111111
E8DB   FF            ???                ;11111111
E8DC   FF            ???                ;11111111
E8DD   FF            ???                ;11111111
E8DE   FF            ???                ;11111111
E8DF   FF            ???                ;11111111
E8E0   FF            ???                ;11111111
E8E1   FF            ???                ;11111111
E8E2   FF            ???                ;11111111
E8E3   FF            ???                ;11111111
E8E4   FF            ???                ;11111111
E8E5   FF            ???                ;11111111
E8E6   FF            ???                ;11111111
E8E7   FF            ???                ;11111111
E8E8   FF            ???                ;11111111
E8E9   FF            ???                ;11111111
E8EA   FF            ???                ;11111111
E8EB   FF            ???                ;11111111
E8EC   FF            ???                ;11111111
E8ED   FF            ???                ;11111111
E8EE   FF            ???                ;11111111
E8EF   FF            ???                ;11111111
E8F0   FF            ???                ;11111111
E8F1   FF            ???                ;11111111
E8F2   FF            ???                ;11111111
E8F3   FF            ???                ;11111111
E8F4   FF            ???                ;11111111
E8F5   FF            ???                ;11111111
E8F6   FF            ???                ;11111111
E8F7   FF            ???                ;11111111
E8F8   FF            ???                ;11111111
E8F9   FF            ???                ;11111111
E8FA   FF            ???                ;11111111
E8FB   FF            ???                ;11111111
E8FC   FF            ???                ;11111111
E8FD   FF            ???                ;11111111
E8FE   FF            ???                ;11111111
E8FF   FF            ???                ;11111111
E900   FF            ???                ;11111111
E901   FF            ???                ;11111111
E902   FF            ???                ;11111111
E903   FF            ???                ;11111111
E904   FF            ???                ;11111111
E905   FF            ???                ;11111111
E906   FF            ???                ;11111111
E907   FF            ???                ;11111111
E908   FF            ???                ;11111111
E909   FF            ???                ;11111111
E90A   FF            ???                ;11111111
E90B   FF            ???                ;11111111
E90C   FF            ???                ;11111111
E90D   FF            ???                ;11111111
E90E   FF            ???                ;11111111
E90F   FF            ???                ;11111111
E910   FF            ???                ;11111111
E911   FF            ???                ;11111111
E912   FF            ???                ;11111111
E913   FF            ???                ;11111111
E914   FF            ???                ;11111111
E915   FF            ???                ;11111111
E916   FF            ???                ;11111111
E917   FF            ???                ;11111111
E918   FF            ???                ;11111111
E919   FF            ???                ;11111111
E91A   FF            ???                ;11111111
E91B   FF            ???                ;11111111
E91C   FF            ???                ;11111111
E91D   FF            ???                ;11111111
E91E   FF            ???                ;11111111
E91F   FF            ???                ;11111111
E920   FF            ???                ;11111111
E921   FF            ???                ;11111111
E922   FF            ???                ;11111111
E923   FF            ???                ;11111111
E924   FF            ???                ;11111111
E925   FF            ???                ;11111111
E926   FF            ???                ;11111111
E927   FF            ???                ;11111111
E928   FF            ???                ;11111111
E929   FF            ???                ;11111111
E92A   FF            ???                ;11111111
E92B   FF            ???                ;11111111
E92C   FF            ???                ;11111111
E92D   FF            ???                ;11111111
E92E   FF            ???                ;11111111
E92F   FF            ???                ;11111111
E930   FF            ???                ;11111111
E931   FF            ???                ;11111111
E932   FF            ???                ;11111111
E933   FF            ???                ;11111111
E934   FF            ???                ;11111111
E935   FF            ???                ;11111111
E936   FF            ???                ;11111111
E937   FF            ???                ;11111111
E938   FF            ???                ;11111111
E939   FF            ???                ;11111111
E93A   FF            ???                ;11111111
E93B   FF            ???                ;11111111
E93C   FF            ???                ;11111111
E93D   FF            ???                ;11111111
E93E   FF            ???                ;11111111
E93F   FF            ???                ;11111111
E940   FF            ???                ;11111111
E941   FF            ???                ;11111111
E942   FF            ???                ;11111111
E943   FF            ???                ;11111111
E944   FF            ???                ;11111111
E945   FF            ???                ;11111111
E946   FF            ???                ;11111111
E947   FF            ???                ;11111111
E948   FF            ???                ;11111111
E949   FF            ???                ;11111111
E94A   FF            ???                ;11111111
E94B   FF            ???                ;11111111
E94C   FF            ???                ;11111111
E94D   FF            ???                ;11111111
E94E   FF            ???                ;11111111
E94F   FF            ???                ;11111111
E950   FF            ???                ;11111111
E951   FF            ???                ;11111111
E952   FF            ???                ;11111111
E953   FF            ???                ;11111111
E954   FF            ???                ;11111111
E955   FF            ???                ;11111111
E956   FF            ???                ;11111111
E957   FF            ???                ;11111111
E958   FF            ???                ;11111111
E959   FF            ???                ;11111111
E95A   FF            ???                ;11111111
E95B   FF            ???                ;11111111
E95C   FF            ???                ;11111111
E95D   FF            ???                ;11111111
E95E   FF            ???                ;11111111
E95F   FF            ???                ;11111111
E960   FF            ???                ;11111111
E961   FF            ???                ;11111111
E962   FF            ???                ;11111111
E963   FF            ???                ;11111111
E964   FF            ???                ;11111111
E965   FF            ???                ;11111111
E966   FF            ???                ;11111111
E967   FF            ???                ;11111111
E968   FF            ???                ;11111111
E969   FF            ???                ;11111111
E96A   FF            ???                ;11111111
E96B   FF            ???                ;11111111
E96C   FF            ???                ;11111111
E96D   FF            ???                ;11111111
E96E   FF            ???                ;11111111
E96F   FF            ???                ;11111111
E970   FF            ???                ;11111111
E971   FF            ???                ;11111111
E972   FF            ???                ;11111111
E973   FF            ???                ;11111111
E974   FF            ???                ;11111111
E975   FF            ???                ;11111111
E976   FF            ???                ;11111111
E977   FF            ???                ;11111111
E978   FF            ???                ;11111111
E979   FF            ???                ;11111111
E97A   FF            ???                ;11111111
E97B   FF            ???                ;11111111
E97C   FF            ???                ;11111111
E97D   FF            ???                ;11111111
E97E   FF            ???                ;11111111
E97F   FF            ???                ;11111111
E980   FF            ???                ;11111111
E981   FF            ???                ;11111111
E982   FF            ???                ;11111111
E983   FF            ???                ;11111111
E984   FF            ???                ;11111111
E985   FF            ???                ;11111111
E986   FF            ???                ;11111111
E987   FF            ???                ;11111111
E988   FF            ???                ;11111111
E989   FF            ???                ;11111111
E98A   FF            ???                ;11111111
E98B   FF            ???                ;11111111
E98C   FF            ???                ;11111111
E98D   FF            ???                ;11111111
E98E   FF            ???                ;11111111
E98F   FF            ???                ;11111111
E990   FF            ???                ;11111111
E991   FF            ???                ;11111111
E992   FF            ???                ;11111111
E993   FF            ???                ;11111111
E994   FF            ???                ;11111111
E995   FF            ???                ;11111111
E996   FF            ???                ;11111111
E997   FF            ???                ;11111111
E998   FF            ???                ;11111111
E999   FF            ???                ;11111111
E99A   FF            ???                ;11111111
E99B   FF            ???                ;11111111
E99C   FF            ???                ;11111111
E99D   FF            ???                ;11111111
E99E   FF            ???                ;11111111
E99F   FF            ???                ;11111111
E9A0   FF            ???                ;11111111
E9A1   FF            ???                ;11111111
E9A2   FF            ???                ;11111111
E9A3   FF            ???                ;11111111
E9A4   FF            ???                ;11111111
E9A5   FF            ???                ;11111111
E9A6   FF            ???                ;11111111
E9A7   FF            ???                ;11111111
E9A8   FF            ???                ;11111111
E9A9   FF            ???                ;11111111
E9AA   FF            ???                ;11111111
E9AB   FF            ???                ;11111111
E9AC   FF            ???                ;11111111
E9AD   FF            ???                ;11111111
E9AE   FF            ???                ;11111111
E9AF   FF            ???                ;11111111
E9B0   FF            ???                ;11111111
E9B1   FF            ???                ;11111111
E9B2   FF            ???                ;11111111
E9B3   FF            ???                ;11111111
E9B4   FF            ???                ;11111111
E9B5   FF            ???                ;11111111
E9B6   FF            ???                ;11111111
E9B7   FF            ???                ;11111111
E9B8   FF            ???                ;11111111
E9B9   FF            ???                ;11111111
E9BA   FF            ???                ;11111111
E9BB   FF            ???                ;11111111
E9BC   FF            ???                ;11111111
E9BD   FF            ???                ;11111111
E9BE   FF            ???                ;11111111
E9BF   FF            ???                ;11111111
E9C0   FF            ???                ;11111111
E9C1   FF            ???                ;11111111
E9C2   FF            ???                ;11111111
E9C3   FF            ???                ;11111111
E9C4   FF            ???                ;11111111
E9C5   FF            ???                ;11111111
E9C6   FF            ???                ;11111111
E9C7   FF            ???                ;11111111
E9C8   FF            ???                ;11111111
E9C9   FF            ???                ;11111111
E9CA   FF            ???                ;11111111
E9CB   FF            ???                ;11111111
E9CC   FF            ???                ;11111111
E9CD   FF            ???                ;11111111
E9CE   FF            ???                ;11111111
E9CF   FF            ???                ;11111111
E9D0   FF            ???                ;11111111
E9D1   FF            ???                ;11111111
E9D2   FF            ???                ;11111111
E9D3   FF            ???                ;11111111
E9D4   FF            ???                ;11111111
E9D5   FF            ???                ;11111111
E9D6   FF            ???                ;11111111
E9D7   FF            ???                ;11111111
E9D8   FF            ???                ;11111111
E9D9   FF            ???                ;11111111
E9DA   FF            ???                ;11111111
E9DB   FF            ???                ;11111111
E9DC   FF            ???                ;11111111
E9DD   FF            ???                ;11111111
E9DE   FF            ???                ;11111111
E9DF   FF            ???                ;11111111
E9E0   FF            ???                ;11111111
E9E1   FF            ???                ;11111111
E9E2   FF            ???                ;11111111
E9E3   FF            ???                ;11111111
E9E4   FF            ???                ;11111111
E9E5   FF            ???                ;11111111
E9E6   FF            ???                ;11111111
E9E7   FF            ???                ;11111111
E9E8   FF            ???                ;11111111
E9E9   FF            ???                ;11111111
E9EA   FF            ???                ;11111111
E9EB   FF            ???                ;11111111
E9EC   FF            ???                ;11111111
E9ED   FF            ???                ;11111111
E9EE   FF            ???                ;11111111
E9EF   FF            ???                ;11111111
E9F0   FF            ???                ;11111111
E9F1   FF            ???                ;11111111
E9F2   FF            ???                ;11111111
E9F3   FF            ???                ;11111111
E9F4   FF            ???                ;11111111
E9F5   FF            ???                ;11111111
E9F6   FF            ???                ;11111111
E9F7   FF            ???                ;11111111
E9F8   FF            ???                ;11111111
E9F9   FF            ???                ;11111111
E9FA   FF            ???                ;11111111
E9FB   FF            ???                ;11111111
E9FC   FF            ???                ;11111111
E9FD   FF            ???                ;11111111
E9FE   FF            ???                ;11111111
E9FF   FF            ???                ;11111111
EA00   FF            ???                ;11111111
EA01   FF            ???                ;11111111
EA02   FF            ???                ;11111111
EA03   FF            ???                ;11111111
EA04   FF            ???                ;11111111
EA05   FF            ???                ;11111111
EA06   FF            ???                ;11111111
EA07   FF            ???                ;11111111
EA08   FF            ???                ;11111111
EA09   FF            ???                ;11111111
EA0A   FF            ???                ;11111111
EA0B   FF            ???                ;11111111
EA0C   FF            ???                ;11111111
EA0D   FF            ???                ;11111111
EA0E   FF            ???                ;11111111
EA0F   FF            ???                ;11111111
EA10   FF            ???                ;11111111
EA11   FF            ???                ;11111111
EA12   FF            ???                ;11111111
EA13   FF            ???                ;11111111
EA14   FF            ???                ;11111111
EA15   FF            ???                ;11111111
EA16   FF            ???                ;11111111
EA17   FF            ???                ;11111111
EA18   FF            ???                ;11111111
EA19   FF            ???                ;11111111
EA1A   FF            ???                ;11111111
EA1B   FF            ???                ;11111111
EA1C   FF            ???                ;11111111
EA1D   FF            ???                ;11111111
EA1E   FF            ???                ;11111111
EA1F   FF            ???                ;11111111
EA20   FF            ???                ;11111111
EA21   FF            ???                ;11111111
EA22   FF            ???                ;11111111
EA23   FF            ???                ;11111111
EA24   FF            ???                ;11111111
EA25   FF            ???                ;11111111
EA26   FF            ???                ;11111111
EA27   FF            ???                ;11111111
EA28   FF            ???                ;11111111
EA29   FF            ???                ;11111111
EA2A   FF            ???                ;11111111
EA2B   FF            ???                ;11111111
EA2C   FF            ???                ;11111111
EA2D   FF            ???                ;11111111
EA2E   FF            ???                ;11111111
EA2F   FF            ???                ;11111111
EA30   FF            ???                ;11111111
EA31   FF            ???                ;11111111
EA32   FF            ???                ;11111111
EA33   FF            ???                ;11111111
EA34   FF            ???                ;11111111
EA35   FF            ???                ;11111111
EA36   FF            ???                ;11111111
EA37   FF            ???                ;11111111
EA38   FF            ???                ;11111111
EA39   FF            ???                ;11111111
EA3A   FF            ???                ;11111111
EA3B   FF            ???                ;11111111
EA3C   FF            ???                ;11111111
EA3D   FF            ???                ;11111111
EA3E   FF            ???                ;11111111
EA3F   FF            ???                ;11111111
EA40   FF            ???                ;11111111
EA41   FF            ???                ;11111111
EA42   FF            ???                ;11111111
EA43   FF            ???                ;11111111
EA44   FF            ???                ;11111111
EA45   FF            ???                ;11111111
EA46   FF            ???                ;11111111
EA47   FF            ???                ;11111111
EA48   FF            ???                ;11111111
EA49   FF            ???                ;11111111
EA4A   FF            ???                ;11111111
EA4B   FF            ???                ;11111111
EA4C   FF            ???                ;11111111
EA4D   FF            ???                ;11111111
EA4E   FF            ???                ;11111111
EA4F   FF            ???                ;11111111
EA50   FF            ???                ;11111111
EA51   FF            ???                ;11111111
EA52   FF            ???                ;11111111
EA53   FF            ???                ;11111111
EA54   FF            ???                ;11111111
EA55   FF            ???                ;11111111
EA56   FF            ???                ;11111111
EA57   FF            ???                ;11111111
EA58   FF            ???                ;11111111
EA59   FF            ???                ;11111111
EA5A   FF            ???                ;11111111
EA5B   FF            ???                ;11111111
EA5C   FF            ???                ;11111111
EA5D   FF            ???                ;11111111
EA5E   FF            ???                ;11111111
EA5F   FF            ???                ;11111111
EA60   FF            ???                ;11111111
EA61   FF            ???                ;11111111
EA62   FF            ???                ;11111111
EA63   FF            ???                ;11111111
EA64   FF            ???                ;11111111
EA65   FF            ???                ;11111111
EA66   FF            ???                ;11111111
EA67   FF            ???                ;11111111
EA68   FF            ???                ;11111111
EA69   FF            ???                ;11111111
EA6A   FF            ???                ;11111111
EA6B   FF            ???                ;11111111
EA6C   FF            ???                ;11111111
EA6D   FF            ???                ;11111111
EA6E   FF            ???                ;11111111
EA6F   FF            ???                ;11111111
EA70   FF            ???                ;11111111
EA71   FF            ???                ;11111111
EA72   FF            ???                ;11111111
EA73   FF            ???                ;11111111
EA74   FF            ???                ;11111111
EA75   FF            ???                ;11111111
EA76   FF            ???                ;11111111
EA77   FF            ???                ;11111111
EA78   FF            ???                ;11111111
EA79   FF            ???                ;11111111
EA7A   FF            ???                ;11111111
EA7B   FF            ???                ;11111111
EA7C   FF            ???                ;11111111
EA7D   FF            ???                ;11111111
EA7E   FF            ???                ;11111111
EA7F   FF            ???                ;11111111
EA80   FF            ???                ;11111111
EA81   FF            ???                ;11111111
EA82   FF            ???                ;11111111
EA83   FF            ???                ;11111111
EA84   FF            ???                ;11111111
EA85   FF            ???                ;11111111
EA86   FF            ???                ;11111111
EA87   FF            ???                ;11111111
EA88   FF            ???                ;11111111
EA89   FF            ???                ;11111111
EA8A   FF            ???                ;11111111
EA8B   FF            ???                ;11111111
EA8C   FF            ???                ;11111111
EA8D   FF            ???                ;11111111
EA8E   FF            ???                ;11111111
EA8F   FF            ???                ;11111111
EA90   FF            ???                ;11111111
EA91   FF            ???                ;11111111
EA92   FF            ???                ;11111111
EA93   FF            ???                ;11111111
EA94   FF            ???                ;11111111
EA95   FF            ???                ;11111111
EA96   FF            ???                ;11111111
EA97   FF            ???                ;11111111
EA98   FF            ???                ;11111111
EA99   FF            ???                ;11111111
EA9A   FF            ???                ;11111111
EA9B   FF            ???                ;11111111
EA9C   FF            ???                ;11111111
EA9D   FF            ???                ;11111111
EA9E   FF            ???                ;11111111
EA9F   FF            ???                ;11111111
EAA0   FF            ???                ;11111111
EAA1   FF            ???                ;11111111
EAA2   FF            ???                ;11111111
EAA3   FF            ???                ;11111111
EAA4   FF            ???                ;11111111
EAA5   FF            ???                ;11111111
EAA6   FF            ???                ;11111111
EAA7   FF            ???                ;11111111
EAA8   FF            ???                ;11111111
EAA9   FF            ???                ;11111111
EAAA   FF            ???                ;11111111
EAAB   FF            ???                ;11111111
EAAC   FF            ???                ;11111111
EAAD   FF            ???                ;11111111
EAAE   FF            ???                ;11111111
EAAF   FF            ???                ;11111111
EAB0   FF            ???                ;11111111
EAB1   FF            ???                ;11111111
EAB2   FF            ???                ;11111111
EAB3   FF            ???                ;11111111
EAB4   FF            ???                ;11111111
EAB5   FF            ???                ;11111111
EAB6   FF            ???                ;11111111
EAB7   FF            ???                ;11111111
EAB8   FF            ???                ;11111111
EAB9   FF            ???                ;11111111
EABA   FF            ???                ;11111111
EABB   FF            ???                ;11111111
EABC   FF            ???                ;11111111
EABD   FF            ???                ;11111111
EABE   FF            ???                ;11111111
EABF   FF            ???                ;11111111
EAC0   FF            ???                ;11111111
EAC1   FF            ???                ;11111111
EAC2   FF            ???                ;11111111
EAC3   FF            ???                ;11111111
EAC4   FF            ???                ;11111111
EAC5   FF            ???                ;11111111
EAC6   FF            ???                ;11111111
EAC7   FF            ???                ;11111111
EAC8   FF            ???                ;11111111
EAC9   FF            ???                ;11111111
EACA   FF            ???                ;11111111
EACB   FF            ???                ;11111111
EACC   FF            ???                ;11111111
EACD   FF            ???                ;11111111
EACE   FF            ???                ;11111111
EACF   FF            ???                ;11111111
EAD0   FF            ???                ;11111111
EAD1   FF            ???                ;11111111
EAD2   FF            ???                ;11111111
EAD3   FF            ???                ;11111111
EAD4   FF            ???                ;11111111
EAD5   FF            ???                ;11111111
EAD6   FF            ???                ;11111111
EAD7   FF            ???                ;11111111
EAD8   FF            ???                ;11111111
EAD9   FF            ???                ;11111111
EADA   FF            ???                ;11111111
EADB   FF            ???                ;11111111
EADC   FF            ???                ;11111111
EADD   FF            ???                ;11111111
EADE   FF            ???                ;11111111
EADF   FF            ???                ;11111111
EAE0   FF            ???                ;11111111
EAE1   FF            ???                ;11111111
EAE2   FF            ???                ;11111111
EAE3   FF            ???                ;11111111
EAE4   FF            ???                ;11111111
EAE5   FF            ???                ;11111111
EAE6   FF            ???                ;11111111
EAE7   FF            ???                ;11111111
EAE8   FF            ???                ;11111111
EAE9   FF            ???                ;11111111
EAEA   FF            ???                ;11111111
EAEB   FF            ???                ;11111111
EAEC   FF            ???                ;11111111
EAED   FF            ???                ;11111111
EAEE   FF            ???                ;11111111
EAEF   FF            ???                ;11111111
EAF0   FF            ???                ;11111111
EAF1   FF            ???                ;11111111
EAF2   FF            ???                ;11111111
EAF3   FF            ???                ;11111111
EAF4   FF            ???                ;11111111
EAF5   FF            ???                ;11111111
EAF6   FF            ???                ;11111111
EAF7   FF            ???                ;11111111
EAF8   FF            ???                ;11111111
EAF9   FF            ???                ;11111111
EAFA   FF            ???                ;11111111
EAFB   FF            ???                ;11111111
EAFC   FF            ???                ;11111111
EAFD   FF            ???                ;11111111
EAFE   FF            ???                ;11111111
EAFF   FF            ???                ;11111111
EB00   FF            ???                ;11111111
EB01   FF            ???                ;11111111
EB02   FF            ???                ;11111111
EB03   FF            ???                ;11111111
EB04   FF            ???                ;11111111
EB05   FF            ???                ;11111111
EB06   FF            ???                ;11111111
EB07   FF            ???                ;11111111
EB08   FF            ???                ;11111111
EB09   FF            ???                ;11111111
EB0A   FF            ???                ;11111111
EB0B   FF            ???                ;11111111
EB0C   FF            ???                ;11111111
EB0D   FF            ???                ;11111111
EB0E   FF            ???                ;11111111
EB0F   FF            ???                ;11111111
EB10   FF            ???                ;11111111
EB11   FF            ???                ;11111111
EB12   FF            ???                ;11111111
EB13   FF            ???                ;11111111
EB14   FF            ???                ;11111111
EB15   FF            ???                ;11111111
EB16   FF            ???                ;11111111
EB17   FF            ???                ;11111111
EB18   FF            ???                ;11111111
EB19   FF            ???                ;11111111
EB1A   FF            ???                ;11111111
EB1B   FF            ???                ;11111111
EB1C   FF            ???                ;11111111
EB1D   FF            ???                ;11111111
EB1E   FF            ???                ;11111111
EB1F   FF            ???                ;11111111
EB20   FF            ???                ;11111111
EB21   FF            ???                ;11111111
EB22   FF            ???                ;11111111
EB23   FF            ???                ;11111111
EB24   FF            ???                ;11111111
EB25   FF            ???                ;11111111
EB26   FF            ???                ;11111111
EB27   FF            ???                ;11111111
EB28   FF            ???                ;11111111
EB29   FF            ???                ;11111111
EB2A   FF            ???                ;11111111
EB2B   FF            ???                ;11111111
EB2C   FF            ???                ;11111111
EB2D   FF            ???                ;11111111
EB2E   FF            ???                ;11111111
EB2F   FF            ???                ;11111111
EB30   FF            ???                ;11111111
EB31   FF            ???                ;11111111
EB32   FF            ???                ;11111111
EB33   FF            ???                ;11111111
EB34   FF            ???                ;11111111
EB35   FF            ???                ;11111111
EB36   FF            ???                ;11111111
EB37   FF            ???                ;11111111
EB38   FF            ???                ;11111111
EB39   FF            ???                ;11111111
EB3A   FF            ???                ;11111111
EB3B   FF            ???                ;11111111
EB3C   FF            ???                ;11111111
EB3D   FF            ???                ;11111111
EB3E   FF            ???                ;11111111
EB3F   FF            ???                ;11111111
EB40   FF            ???                ;11111111
EB41   FF            ???                ;11111111
EB42   FF            ???                ;11111111
EB43   FF            ???                ;11111111
EB44   FF            ???                ;11111111
EB45   FF            ???                ;11111111
EB46   FF            ???                ;11111111
EB47   FF            ???                ;11111111
EB48   FF            ???                ;11111111
EB49   FF            ???                ;11111111
EB4A   FF            ???                ;11111111
EB4B   FF            ???                ;11111111
EB4C   FF            ???                ;11111111
EB4D   FF            ???                ;11111111
EB4E   FF            ???                ;11111111
EB4F   FF            ???                ;11111111
EB50   FF            ???                ;11111111
EB51   FF            ???                ;11111111
EB52   FF            ???                ;11111111
EB53   FF            ???                ;11111111
EB54   FF            ???                ;11111111
EB55   FF            ???                ;11111111
EB56   FF            ???                ;11111111
EB57   FF            ???                ;11111111
EB58   FF            ???                ;11111111
EB59   FF            ???                ;11111111
EB5A   FF            ???                ;11111111
EB5B   FF            ???                ;11111111
EB5C   FF            ???                ;11111111
EB5D   FF            ???                ;11111111
EB5E   FF            ???                ;11111111
EB5F   FF            ???                ;11111111
EB60   FF            ???                ;11111111
EB61   FF            ???                ;11111111
EB62   FF            ???                ;11111111
EB63   FF            ???                ;11111111
EB64   FF            ???                ;11111111
EB65   FF            ???                ;11111111
EB66   FF            ???                ;11111111
EB67   FF            ???                ;11111111
EB68   FF            ???                ;11111111
EB69   FF            ???                ;11111111
EB6A   FF            ???                ;11111111
EB6B   FF            ???                ;11111111
EB6C   FF            ???                ;11111111
EB6D   FF            ???                ;11111111
EB6E   FF            ???                ;11111111
EB6F   FF            ???                ;11111111
EB70   FF            ???                ;11111111
EB71   FF            ???                ;11111111
EB72   FF            ???                ;11111111
EB73   FF            ???                ;11111111
EB74   FF            ???                ;11111111
EB75   FF            ???                ;11111111
EB76   FF            ???                ;11111111
EB77   FF            ???                ;11111111
EB78   FF            ???                ;11111111
EB79   FF            ???                ;11111111
EB7A   FF            ???                ;11111111
EB7B   FF            ???                ;11111111
EB7C   FF            ???                ;11111111
EB7D   FF            ???                ;11111111
EB7E   FF            ???                ;11111111
EB7F   FF            ???                ;11111111
EB80   FF            ???                ;11111111
EB81   FF            ???                ;11111111
EB82   FF            ???                ;11111111
EB83   FF            ???                ;11111111
EB84   FF            ???                ;11111111
EB85   FF            ???                ;11111111
EB86   FF            ???                ;11111111
EB87   FF            ???                ;11111111
EB88   FF            ???                ;11111111
EB89   FF            ???                ;11111111
EB8A   FF            ???                ;11111111
EB8B   FF            ???                ;11111111
EB8C   FF            ???                ;11111111
EB8D   FF            ???                ;11111111
EB8E   FF            ???                ;11111111
EB8F   FF            ???                ;11111111
EB90   FF            ???                ;11111111
EB91   FF            ???                ;11111111
EB92   FF            ???                ;11111111
EB93   FF            ???                ;11111111
EB94   FF            ???                ;11111111
EB95   FF            ???                ;11111111
EB96   FF            ???                ;11111111
EB97   FF            ???                ;11111111
EB98   FF            ???                ;11111111
EB99   FF            ???                ;11111111
EB9A   FF            ???                ;11111111
EB9B   FF            ???                ;11111111
EB9C   FF            ???                ;11111111
EB9D   FF            ???                ;11111111
EB9E   FF            ???                ;11111111
EB9F   FF            ???                ;11111111
EBA0   FF            ???                ;11111111
EBA1   FF            ???                ;11111111
EBA2   FF            ???                ;11111111
EBA3   FF            ???                ;11111111
EBA4   FF            ???                ;11111111
EBA5   FF            ???                ;11111111
EBA6   FF            ???                ;11111111
EBA7   FF            ???                ;11111111
EBA8   FF            ???                ;11111111
EBA9   FF            ???                ;11111111
EBAA   FF            ???                ;11111111
EBAB   FF            ???                ;11111111
EBAC   FF            ???                ;11111111
EBAD   FF            ???                ;11111111
EBAE   FF            ???                ;11111111
EBAF   FF            ???                ;11111111
EBB0   FF            ???                ;11111111
EBB1   FF            ???                ;11111111
EBB2   FF            ???                ;11111111
EBB3   FF            ???                ;11111111
EBB4   FF            ???                ;11111111
EBB5   FF            ???                ;11111111
EBB6   FF            ???                ;11111111
EBB7   FF            ???                ;11111111
EBB8   FF            ???                ;11111111
EBB9   FF            ???                ;11111111
EBBA   FF            ???                ;11111111
EBBB   FF            ???                ;11111111
EBBC   FF            ???                ;11111111
EBBD   FF            ???                ;11111111
EBBE   FF            ???                ;11111111
EBBF   FF            ???                ;11111111
EBC0   FF            ???                ;11111111
EBC1   FF            ???                ;11111111
EBC2   FF            ???                ;11111111
EBC3   FF            ???                ;11111111
EBC4   FF            ???                ;11111111
EBC5   FF            ???                ;11111111
EBC6   FF            ???                ;11111111
EBC7   FF            ???                ;11111111
EBC8   FF            ???                ;11111111
EBC9   FF            ???                ;11111111
EBCA   FF            ???                ;11111111
EBCB   FF            ???                ;11111111
EBCC   FF            ???                ;11111111
EBCD   FF            ???                ;11111111
EBCE   FF            ???                ;11111111
EBCF   FF            ???                ;11111111
EBD0   FF            ???                ;11111111
EBD1   FF            ???                ;11111111
EBD2   FF            ???                ;11111111
EBD3   FF            ???                ;11111111
EBD4   FF            ???                ;11111111
EBD5   FF            ???                ;11111111
EBD6   FF            ???                ;11111111
EBD7   FF            ???                ;11111111
EBD8   FF            ???                ;11111111
EBD9   FF            ???                ;11111111
EBDA   FF            ???                ;11111111
EBDB   FF            ???                ;11111111
EBDC   FF            ???                ;11111111
EBDD   FF            ???                ;11111111
EBDE   FF            ???                ;11111111
EBDF   FF            ???                ;11111111
EBE0   FF            ???                ;11111111
EBE1   FF            ???                ;11111111
EBE2   FF            ???                ;11111111
EBE3   FF            ???                ;11111111
EBE4   FF            ???                ;11111111
EBE5   FF            ???                ;11111111
EBE6   FF            ???                ;11111111
EBE7   FF            ???                ;11111111
EBE8   FF            ???                ;11111111
EBE9   FF            ???                ;11111111
EBEA   FF            ???                ;11111111
EBEB   FF            ???                ;11111111
EBEC   FF            ???                ;11111111
EBED   FF            ???                ;11111111
EBEE   FF            ???                ;11111111
EBEF   FF            ???                ;11111111
EBF0   FF            ???                ;11111111
EBF1   FF            ???                ;11111111
EBF2   FF            ???                ;11111111
EBF3   FF            ???                ;11111111
EBF4   FF            ???                ;11111111
EBF5   FF            ???                ;11111111
EBF6   FF            ???                ;11111111
EBF7   FF            ???                ;11111111
EBF8   FF            ???                ;11111111
EBF9   FF            ???                ;11111111
EBFA   FF            ???                ;11111111
EBFB   FF            ???                ;11111111
EBFC   FF            ???                ;11111111
EBFD   FF            ???                ;11111111
EBFE   FF            ???                ;11111111
EBFF   FF            ???                ;11111111
EC00   FF            ???                ;11111111
EC01   FF            ???                ;11111111
EC02   FF            ???                ;11111111
EC03   FF            ???                ;11111111
EC04   FF            ???                ;11111111
EC05   FF            ???                ;11111111
EC06   FF            ???                ;11111111
EC07   FF            ???                ;11111111
EC08   FF            ???                ;11111111
EC09   FF            ???                ;11111111
EC0A   FF            ???                ;11111111
EC0B   FF            ???                ;11111111
EC0C   FF            ???                ;11111111
EC0D   FF            ???                ;11111111
EC0E   FF            ???                ;11111111
EC0F   FF            ???                ;11111111
EC10   FF            ???                ;11111111
EC11   FF            ???                ;11111111
EC12   FF            ???                ;11111111
EC13   FF            ???                ;11111111
EC14   FF            ???                ;11111111
EC15   FF            ???                ;11111111
EC16   FF            ???                ;11111111
EC17   FF            ???                ;11111111
EC18   FF            ???                ;11111111
EC19   FF            ???                ;11111111
EC1A   FF            ???                ;11111111
EC1B   FF            ???                ;11111111
EC1C   FF            ???                ;11111111
EC1D   FF            ???                ;11111111
EC1E   FF            ???                ;11111111
EC1F   FF            ???                ;11111111
EC20   FF            ???                ;11111111
EC21   FF            ???                ;11111111
EC22   FF            ???                ;11111111
EC23   FF            ???                ;11111111
EC24   FF            ???                ;11111111
EC25   FF            ???                ;11111111
EC26   FF            ???                ;11111111
EC27   FF            ???                ;11111111
EC28   FF            ???                ;11111111
EC29   FF            ???                ;11111111
EC2A   FF            ???                ;11111111
EC2B   FF            ???                ;11111111
EC2C   FF            ???                ;11111111
EC2D   FF            ???                ;11111111
EC2E   FF            ???                ;11111111
EC2F   FF            ???                ;11111111
EC30   FF            ???                ;11111111
EC31   FF            ???                ;11111111
EC32   FF            ???                ;11111111
EC33   FF            ???                ;11111111
EC34   FF            ???                ;11111111
EC35   FF            ???                ;11111111
EC36   FF            ???                ;11111111
EC37   FF            ???                ;11111111
EC38   FF            ???                ;11111111
EC39   FF            ???                ;11111111
EC3A   FF            ???                ;11111111
EC3B   FF            ???                ;11111111
EC3C   FF            ???                ;11111111
EC3D   FF            ???                ;11111111
EC3E   FF            ???                ;11111111
EC3F   FF            ???                ;11111111
EC40   FF            ???                ;11111111
EC41   FF            ???                ;11111111
EC42   FF            ???                ;11111111
EC43   FF            ???                ;11111111
EC44   FF            ???                ;11111111
EC45   FF            ???                ;11111111
EC46   FF            ???                ;11111111
EC47   FF            ???                ;11111111
EC48   FF            ???                ;11111111
EC49   FF            ???                ;11111111
EC4A   FF            ???                ;11111111
EC4B   FF            ???                ;11111111
EC4C   FF            ???                ;11111111
EC4D   FF            ???                ;11111111
EC4E   FF            ???                ;11111111
EC4F   FF            ???                ;11111111
EC50   FF            ???                ;11111111
EC51   FF            ???                ;11111111
EC52   FF            ???                ;11111111
EC53   FF            ???                ;11111111
EC54   FF            ???                ;11111111
EC55   FF            ???                ;11111111
EC56   FF            ???                ;11111111
EC57   FF            ???                ;11111111
EC58   FF            ???                ;11111111
EC59   FF            ???                ;11111111
EC5A   FF            ???                ;11111111
EC5B   FF            ???                ;11111111
EC5C   FF            ???                ;11111111
EC5D   FF            ???                ;11111111
EC5E   FF            ???                ;11111111
EC5F   FF            ???                ;11111111
EC60   FF            ???                ;11111111
EC61   FF            ???                ;11111111
EC62   FF            ???                ;11111111
EC63   FF            ???                ;11111111
EC64   FF            ???                ;11111111
EC65   FF            ???                ;11111111
EC66   FF            ???                ;11111111
EC67   FF            ???                ;11111111
EC68   FF            ???                ;11111111
EC69   FF            ???                ;11111111
EC6A   FF            ???                ;11111111
EC6B   FF            ???                ;11111111
EC6C   FF            ???                ;11111111
EC6D   FF            ???                ;11111111
EC6E   FF            ???                ;11111111
EC6F   FF            ???                ;11111111
EC70   FF            ???                ;11111111
EC71   FF            ???                ;11111111
EC72   FF            ???                ;11111111
EC73   FF            ???                ;11111111
EC74   FF            ???                ;11111111
EC75   FF            ???                ;11111111
EC76   FF            ???                ;11111111
EC77   FF            ???                ;11111111
EC78   FF            ???                ;11111111
EC79   FF            ???                ;11111111
EC7A   FF            ???                ;11111111
EC7B   FF            ???                ;11111111
EC7C   FF            ???                ;11111111
EC7D   FF            ???                ;11111111
EC7E   FF            ???                ;11111111
EC7F   FF            ???                ;11111111
EC80   FF            ???                ;11111111
EC81   FF            ???                ;11111111
EC82   FF            ???                ;11111111
EC83   FF            ???                ;11111111
EC84   FF            ???                ;11111111
EC85   FF            ???                ;11111111
EC86   FF            ???                ;11111111
EC87   FF            ???                ;11111111
EC88   FF            ???                ;11111111
EC89   FF            ???                ;11111111
EC8A   FF            ???                ;11111111
EC8B   FF            ???                ;11111111
EC8C   FF            ???                ;11111111
EC8D   FF            ???                ;11111111
EC8E   FF            ???                ;11111111
EC8F   FF            ???                ;11111111
EC90   FF            ???                ;11111111
EC91   FF            ???                ;11111111
EC92   FF            ???                ;11111111
EC93   FF            ???                ;11111111
EC94   FF            ???                ;11111111
EC95   FF            ???                ;11111111
EC96   FF            ???                ;11111111
EC97   FF            ???                ;11111111
EC98   FF            ???                ;11111111
EC99   FF            ???                ;11111111
EC9A   FF            ???                ;11111111
EC9B   FF            ???                ;11111111
EC9C   FF            ???                ;11111111
EC9D   FF            ???                ;11111111
EC9E   FF            ???                ;11111111
EC9F   FF            ???                ;11111111
ECA0   FF            ???                ;11111111
ECA1   FF            ???                ;11111111
ECA2   FF            ???                ;11111111
ECA3   FF            ???                ;11111111
ECA4   FF            ???                ;11111111
ECA5   FF            ???                ;11111111
ECA6   FF            ???                ;11111111
ECA7   FF            ???                ;11111111
ECA8   FF            ???                ;11111111
ECA9   FF            ???                ;11111111
ECAA   FF            ???                ;11111111
ECAB   FF            ???                ;11111111
ECAC   FF            ???                ;11111111
ECAD   FF            ???                ;11111111
ECAE   FF            ???                ;11111111
ECAF   FF            ???                ;11111111
ECB0   FF            ???                ;11111111
ECB1   FF            ???                ;11111111
ECB2   FF            ???                ;11111111
ECB3   FF            ???                ;11111111
ECB4   FF            ???                ;11111111
ECB5   FF            ???                ;11111111
ECB6   FF            ???                ;11111111
ECB7   FF            ???                ;11111111
ECB8   FF            ???                ;11111111
ECB9   FF            ???                ;11111111
ECBA   FF            ???                ;11111111
ECBB   FF            ???                ;11111111
ECBC   FF            ???                ;11111111
ECBD   FF            ???                ;11111111
ECBE   FF            ???                ;11111111
ECBF   FF            ???                ;11111111
ECC0   FF            ???                ;11111111
ECC1   FF            ???                ;11111111
ECC2   FF            ???                ;11111111
ECC3   FF            ???                ;11111111
ECC4   FF            ???                ;11111111
ECC5   FF            ???                ;11111111
ECC6   FF            ???                ;11111111
ECC7   FF            ???                ;11111111
ECC8   FF            ???                ;11111111
ECC9   FF            ???                ;11111111
ECCA   FF            ???                ;11111111
ECCB   FF            ???                ;11111111
ECCC   FF            ???                ;11111111
ECCD   FF            ???                ;11111111
ECCE   FF            ???                ;11111111
ECCF   FF            ???                ;11111111
ECD0   FF            ???                ;11111111
ECD1   FF            ???                ;11111111
ECD2   FF            ???                ;11111111
ECD3   FF            ???                ;11111111
ECD4   FF            ???                ;11111111
ECD5   FF            ???                ;11111111
ECD6   FF            ???                ;11111111
ECD7   FF            ???                ;11111111
ECD8   FF            ???                ;11111111
ECD9   FF            ???                ;11111111
ECDA   FF            ???                ;11111111
ECDB   FF            ???                ;11111111
ECDC   FF            ???                ;11111111
ECDD   FF            ???                ;11111111
ECDE   FF            ???                ;11111111
ECDF   FF            ???                ;11111111
ECE0   FF            ???                ;11111111
ECE1   FF            ???                ;11111111
ECE2   FF            ???                ;11111111
ECE3   FF            ???                ;11111111
ECE4   FF            ???                ;11111111
ECE5   FF            ???                ;11111111
ECE6   FF            ???                ;11111111
ECE7   FF            ???                ;11111111
ECE8   FF            ???                ;11111111
ECE9   FF            ???                ;11111111
ECEA   FF            ???                ;11111111
ECEB   FF            ???                ;11111111
ECEC   FF            ???                ;11111111
ECED   FF            ???                ;11111111
ECEE   FF            ???                ;11111111
ECEF   FF            ???                ;11111111
ECF0   FF            ???                ;11111111
ECF1   FF            ???                ;11111111
ECF2   FF            ???                ;11111111
ECF3   FF            ???                ;11111111
ECF4   FF            ???                ;11111111
ECF5   FF            ???                ;11111111
ECF6   FF            ???                ;11111111
ECF7   FF            ???                ;11111111
ECF8   FF            ???                ;11111111
ECF9   FF            ???                ;11111111
ECFA   FF            ???                ;11111111
ECFB   FF            ???                ;11111111
ECFC   FF            ???                ;11111111
ECFD   FF            ???                ;11111111
ECFE   FF            ???                ;11111111
ECFF   FF            ???                ;11111111
ED00   FF            ???                ;11111111
ED01   FF            ???                ;11111111
ED02   FF            ???                ;11111111
ED03   FF            ???                ;11111111
ED04   FF            ???                ;11111111
ED05   FF            ???                ;11111111
ED06   FF            ???                ;11111111
ED07   FF            ???                ;11111111
ED08   FF            ???                ;11111111
ED09   FF            ???                ;11111111
ED0A   FF            ???                ;11111111
ED0B   FF            ???                ;11111111
ED0C   FF            ???                ;11111111
ED0D   FF            ???                ;11111111
ED0E   FF            ???                ;11111111
ED0F   FF            ???                ;11111111
ED10   FF            ???                ;11111111
ED11   FF            ???                ;11111111
ED12   FF            ???                ;11111111
ED13   FF            ???                ;11111111
ED14   FF            ???                ;11111111
ED15   FF            ???                ;11111111
ED16   FF            ???                ;11111111
ED17   FF            ???                ;11111111
ED18   FF            ???                ;11111111
ED19   FF            ???                ;11111111
ED1A   FF            ???                ;11111111
ED1B   FF            ???                ;11111111
ED1C   FF            ???                ;11111111
ED1D   FF            ???                ;11111111
ED1E   FF            ???                ;11111111
ED1F   FF            ???                ;11111111
ED20   FF            ???                ;11111111
ED21   FF            ???                ;11111111
ED22   FF            ???                ;11111111
ED23   FF            ???                ;11111111
ED24   FF            ???                ;11111111
ED25   FF            ???                ;11111111
ED26   FF            ???                ;11111111
ED27   FF            ???                ;11111111
ED28   FF            ???                ;11111111
ED29   FF            ???                ;11111111
ED2A   FF            ???                ;11111111
ED2B   FF            ???                ;11111111
ED2C   FF            ???                ;11111111
ED2D   FF            ???                ;11111111
ED2E   FF            ???                ;11111111
ED2F   FF            ???                ;11111111
ED30   FF            ???                ;11111111
ED31   FF            ???                ;11111111
ED32   FF            ???                ;11111111
ED33   FF            ???                ;11111111
ED34   FF            ???                ;11111111
ED35   FF            ???                ;11111111
ED36   FF            ???                ;11111111
ED37   FF            ???                ;11111111
ED38   FF            ???                ;11111111
ED39   FF            ???                ;11111111
ED3A   FF            ???                ;11111111
ED3B   FF            ???                ;11111111
ED3C   FF            ???                ;11111111
ED3D   FF            ???                ;11111111
ED3E   FF            ???                ;11111111
ED3F   FF            ???                ;11111111
ED40   FF            ???                ;11111111
ED41   FF            ???                ;11111111
ED42   FF            ???                ;11111111
ED43   FF            ???                ;11111111
ED44   FF            ???                ;11111111
ED45   FF            ???                ;11111111
ED46   FF            ???                ;11111111
ED47   FF            ???                ;11111111
ED48   FF            ???                ;11111111
ED49   FF            ???                ;11111111
ED4A   FF            ???                ;11111111
ED4B   FF            ???                ;11111111
ED4C   FF            ???                ;11111111
ED4D   FF            ???                ;11111111
ED4E   FF            ???                ;11111111
ED4F   FF            ???                ;11111111
ED50   FF            ???                ;11111111
ED51   FF            ???                ;11111111
ED52   FF            ???                ;11111111
ED53   FF            ???                ;11111111
ED54   FF            ???                ;11111111
ED55   FF            ???                ;11111111
ED56   FF            ???                ;11111111
ED57   FF            ???                ;11111111
ED58   FF            ???                ;11111111
ED59   FF            ???                ;11111111
ED5A   FF            ???                ;11111111
ED5B   FF            ???                ;11111111
ED5C   FF            ???                ;11111111
ED5D   FF            ???                ;11111111
ED5E   FF            ???                ;11111111
ED5F   FF            ???                ;11111111
ED60   FF            ???                ;11111111
ED61   FF            ???                ;11111111
ED62   FF            ???                ;11111111
ED63   FF            ???                ;11111111
ED64   FF            ???                ;11111111
ED65   FF            ???                ;11111111
ED66   FF            ???                ;11111111
ED67   FF            ???                ;11111111
ED68   FF            ???                ;11111111
ED69   FF            ???                ;11111111
ED6A   FF            ???                ;11111111
ED6B   FF            ???                ;11111111
ED6C   FF            ???                ;11111111
ED6D   FF            ???                ;11111111
ED6E   FF            ???                ;11111111
ED6F   FF            ???                ;11111111
ED70   FF            ???                ;11111111
ED71   FF            ???                ;11111111
ED72   FF            ???                ;11111111
ED73   FF            ???                ;11111111
ED74   FF            ???                ;11111111
ED75   FF            ???                ;11111111
ED76   FF            ???                ;11111111
ED77   FF            ???                ;11111111
ED78   FF            ???                ;11111111
ED79   FF            ???                ;11111111
ED7A   FF            ???                ;11111111
ED7B   FF            ???                ;11111111
ED7C   FF            ???                ;11111111
ED7D   FF            ???                ;11111111
ED7E   FF            ???                ;11111111
ED7F   FF            ???                ;11111111
ED80   FF            ???                ;11111111
ED81   FF            ???                ;11111111
ED82   FF            ???                ;11111111
ED83   FF            ???                ;11111111
ED84   FF            ???                ;11111111
ED85   FF            ???                ;11111111
ED86   FF            ???                ;11111111
ED87   FF            ???                ;11111111
ED88   FF            ???                ;11111111
ED89   FF            ???                ;11111111
ED8A   FF            ???                ;11111111
ED8B   FF            ???                ;11111111
ED8C   FF            ???                ;11111111
ED8D   FF            ???                ;11111111
ED8E   FF            ???                ;11111111
ED8F   FF            ???                ;11111111
ED90   FF            ???                ;11111111
ED91   FF            ???                ;11111111
ED92   FF            ???                ;11111111
ED93   FF            ???                ;11111111
ED94   FF            ???                ;11111111
ED95   FF            ???                ;11111111
ED96   FF            ???                ;11111111
ED97   FF            ???                ;11111111
ED98   FF            ???                ;11111111
ED99   FF            ???                ;11111111
ED9A   FF            ???                ;11111111
ED9B   FF            ???                ;11111111
ED9C   FF            ???                ;11111111
ED9D   FF            ???                ;11111111
ED9E   FF            ???                ;11111111
ED9F   FF            ???                ;11111111
EDA0   FF            ???                ;11111111
EDA1   FF            ???                ;11111111
EDA2   FF            ???                ;11111111
EDA3   FF            ???                ;11111111
EDA4   FF            ???                ;11111111
EDA5   FF            ???                ;11111111
EDA6   FF            ???                ;11111111
EDA7   FF            ???                ;11111111
EDA8   FF            ???                ;11111111
EDA9   FF            ???                ;11111111
EDAA   FF            ???                ;11111111
EDAB   FF            ???                ;11111111
EDAC   FF            ???                ;11111111
EDAD   FF            ???                ;11111111
EDAE   FF            ???                ;11111111
EDAF   FF            ???                ;11111111
EDB0   FF            ???                ;11111111
EDB1   FF            ???                ;11111111
EDB2   FF            ???                ;11111111
EDB3   FF            ???                ;11111111
EDB4   FF            ???                ;11111111
EDB5   FF            ???                ;11111111
EDB6   FF            ???                ;11111111
EDB7   FF            ???                ;11111111
EDB8   FF            ???                ;11111111
EDB9   FF            ???                ;11111111
EDBA   FF            ???                ;11111111
EDBB   FF            ???                ;11111111
EDBC   FF            ???                ;11111111
EDBD   FF            ???                ;11111111
EDBE   FF            ???                ;11111111
EDBF   FF            ???                ;11111111
EDC0   FF            ???                ;11111111
EDC1   FF            ???                ;11111111
EDC2   FF            ???                ;11111111
EDC3   FF            ???                ;11111111
EDC4   FF            ???                ;11111111
EDC5   FF            ???                ;11111111
EDC6   FF            ???                ;11111111
EDC7   FF            ???                ;11111111
EDC8   FF            ???                ;11111111
EDC9   FF            ???                ;11111111
EDCA   FF            ???                ;11111111
EDCB   FF            ???                ;11111111
EDCC   FF            ???                ;11111111
EDCD   FF            ???                ;11111111
EDCE   FF            ???                ;11111111
EDCF   FF            ???                ;11111111
EDD0   FF            ???                ;11111111
EDD1   FF            ???                ;11111111
EDD2   FF            ???                ;11111111
EDD3   FF            ???                ;11111111
EDD4   FF            ???                ;11111111
EDD5   FF            ???                ;11111111
EDD6   FF            ???                ;11111111
EDD7   FF            ???                ;11111111
EDD8   FF            ???                ;11111111
EDD9   FF            ???                ;11111111
EDDA   FF            ???                ;11111111
EDDB   FF            ???                ;11111111
EDDC   FF            ???                ;11111111
EDDD   FF            ???                ;11111111
EDDE   FF            ???                ;11111111
EDDF   FF            ???                ;11111111
EDE0   FF            ???                ;11111111
EDE1   FF            ???                ;11111111
EDE2   FF            ???                ;11111111
EDE3   FF            ???                ;11111111
EDE4   FF            ???                ;11111111
EDE5   FF            ???                ;11111111
EDE6   FF            ???                ;11111111
EDE7   FF            ???                ;11111111
EDE8   FF            ???                ;11111111
EDE9   FF            ???                ;11111111
EDEA   FF            ???                ;11111111
EDEB   FF            ???                ;11111111
EDEC   FF            ???                ;11111111
EDED   FF            ???                ;11111111
EDEE   FF            ???                ;11111111
EDEF   FF            ???                ;11111111
EDF0   FF            ???                ;11111111
EDF1   FF            ???                ;11111111
EDF2   FF            ???                ;11111111
EDF3   FF            ???                ;11111111
EDF4   FF            ???                ;11111111
EDF5   FF            ???                ;11111111
EDF6   FF            ???                ;11111111
EDF7   FF            ???                ;11111111
EDF8   FF            ???                ;11111111
EDF9   FF            ???                ;11111111
EDFA   FF            ???                ;11111111
EDFB   FF            ???                ;11111111
EDFC   FF            ???                ;11111111
EDFD   FF            ???                ;11111111
EDFE   FF            ???                ;11111111
EDFF   FF            ???                ;11111111
EE00   FF            ???                ;11111111
EE01   FF            ???                ;11111111
EE02   FF            ???                ;11111111
EE03   FF            ???                ;11111111
EE04   FF            ???                ;11111111
EE05   FF            ???                ;11111111
EE06   FF            ???                ;11111111
EE07   FF            ???                ;11111111
EE08   FF            ???                ;11111111
EE09   FF            ???                ;11111111
EE0A   FF            ???                ;11111111
EE0B   FF            ???                ;11111111
EE0C   FF            ???                ;11111111
EE0D   FF            ???                ;11111111
EE0E   FF            ???                ;11111111
EE0F   FF            ???                ;11111111
EE10   FF            ???                ;11111111
EE11   FF            ???                ;11111111
EE12   FF            ???                ;11111111
EE13   FF            ???                ;11111111
EE14   FF            ???                ;11111111
EE15   FF            ???                ;11111111
EE16   FF            ???                ;11111111
EE17   FF            ???                ;11111111
EE18   FF            ???                ;11111111
EE19   FF            ???                ;11111111
EE1A   FF            ???                ;11111111
EE1B   FF            ???                ;11111111
EE1C   FF            ???                ;11111111
EE1D   FF            ???                ;11111111
EE1E   FF            ???                ;11111111
EE1F   FF            ???                ;11111111
EE20   FF            ???                ;11111111
EE21   FF            ???                ;11111111
EE22   FF            ???                ;11111111
EE23   FF            ???                ;11111111
EE24   FF            ???                ;11111111
EE25   FF            ???                ;11111111
EE26   FF            ???                ;11111111
EE27   FF            ???                ;11111111
EE28   FF            ???                ;11111111
EE29   FF            ???                ;11111111
EE2A   FF            ???                ;11111111
EE2B   FF            ???                ;11111111
EE2C   FF            ???                ;11111111
EE2D   FF            ???                ;11111111
EE2E   FF            ???                ;11111111
EE2F   FF            ???                ;11111111
EE30   FF            ???                ;11111111
EE31   FF            ???                ;11111111
EE32   FF            ???                ;11111111
EE33   FF            ???                ;11111111
EE34   FF            ???                ;11111111
EE35   FF            ???                ;11111111
EE36   FF            ???                ;11111111
EE37   FF            ???                ;11111111
EE38   FF            ???                ;11111111
EE39   FF            ???                ;11111111
EE3A   FF            ???                ;11111111
EE3B   FF            ???                ;11111111
EE3C   FF            ???                ;11111111
EE3D   FF            ???                ;11111111
EE3E   FF            ???                ;11111111
EE3F   FF            ???                ;11111111
EE40   FF            ???                ;11111111
EE41   FF            ???                ;11111111
EE42   FF            ???                ;11111111
EE43   FF            ???                ;11111111
EE44   FF            ???                ;11111111
EE45   FF            ???                ;11111111
EE46   FF            ???                ;11111111
EE47   FF            ???                ;11111111
EE48   FF            ???                ;11111111
EE49   FF            ???                ;11111111
EE4A   FF            ???                ;11111111
EE4B   FF            ???                ;11111111
EE4C   FF            ???                ;11111111
EE4D   FF            ???                ;11111111
EE4E   FF            ???                ;11111111
EE4F   FF            ???                ;11111111
EE50   FF            ???                ;11111111
EE51   FF            ???                ;11111111
EE52   FF            ???                ;11111111
EE53   FF            ???                ;11111111
EE54   FF            ???                ;11111111
EE55   FF            ???                ;11111111
EE56   FF            ???                ;11111111
EE57   FF            ???                ;11111111
EE58   FF            ???                ;11111111
EE59   FF            ???                ;11111111
EE5A   FF            ???                ;11111111
EE5B   FF            ???                ;11111111
EE5C   FF            ???                ;11111111
EE5D   FF            ???                ;11111111
EE5E   FF            ???                ;11111111
EE5F   FF            ???                ;11111111
EE60   FF            ???                ;11111111
EE61   FF            ???                ;11111111
EE62   FF            ???                ;11111111
EE63   FF            ???                ;11111111
EE64   FF            ???                ;11111111
EE65   FF            ???                ;11111111
EE66   FF            ???                ;11111111
EE67   FF            ???                ;11111111
EE68   FF            ???                ;11111111
EE69   FF            ???                ;11111111
EE6A   FF            ???                ;11111111
EE6B   FF            ???                ;11111111
EE6C   FF            ???                ;11111111
EE6D   FF            ???                ;11111111
EE6E   FF            ???                ;11111111
EE6F   FF            ???                ;11111111
EE70   FF            ???                ;11111111
EE71   FF            ???                ;11111111
EE72   FF            ???                ;11111111
EE73   FF            ???                ;11111111
EE74   FF            ???                ;11111111
EE75   FF            ???                ;11111111
EE76   FF            ???                ;11111111
EE77   FF            ???                ;11111111
EE78   FF            ???                ;11111111
EE79   FF            ???                ;11111111
EE7A   FF            ???                ;11111111
EE7B   FF            ???                ;11111111
EE7C   FF            ???                ;11111111
EE7D   FF            ???                ;11111111
EE7E   FF            ???                ;11111111
EE7F   FF            ???                ;11111111
EE80   FF            ???                ;11111111
EE81   FF            ???                ;11111111
EE82   FF            ???                ;11111111
EE83   FF            ???                ;11111111
EE84   FF            ???                ;11111111
EE85   FF            ???                ;11111111
EE86   FF            ???                ;11111111
EE87   FF            ???                ;11111111
EE88   FF            ???                ;11111111
EE89   FF            ???                ;11111111
EE8A   FF            ???                ;11111111
EE8B   FF            ???                ;11111111
EE8C   FF            ???                ;11111111
EE8D   FF            ???                ;11111111
EE8E   FF            ???                ;11111111
EE8F   FF            ???                ;11111111
EE90   FF            ???                ;11111111
EE91   FF            ???                ;11111111
EE92   FF            ???                ;11111111
EE93   FF            ???                ;11111111
EE94   FF            ???                ;11111111
EE95   FF            ???                ;11111111
EE96   FF            ???                ;11111111
EE97   FF            ???                ;11111111
EE98   FF            ???                ;11111111
EE99   FF            ???                ;11111111
EE9A   FF            ???                ;11111111
EE9B   FF            ???                ;11111111
EE9C   FF            ???                ;11111111
EE9D   FF            ???                ;11111111
EE9E   FF            ???                ;11111111
EE9F   FF            ???                ;11111111
EEA0   FF            ???                ;11111111
EEA1   FF            ???                ;11111111
EEA2   FF            ???                ;11111111
EEA3   FF            ???                ;11111111
EEA4   FF            ???                ;11111111
EEA5   FF            ???                ;11111111
EEA6   FF            ???                ;11111111
EEA7   FF            ???                ;11111111
EEA8   FF            ???                ;11111111
EEA9   FF            ???                ;11111111
EEAA   FF            ???                ;11111111
EEAB   FF            ???                ;11111111
EEAC   FF            ???                ;11111111
EEAD   FF            ???                ;11111111
EEAE   FF            ???                ;11111111
EEAF   FF            ???                ;11111111
EEB0   FF            ???                ;11111111
EEB1   FF            ???                ;11111111
EEB2   FF            ???                ;11111111
EEB3   FF            ???                ;11111111
EEB4   FF            ???                ;11111111
EEB5   FF            ???                ;11111111
EEB6   FF            ???                ;11111111
EEB7   FF            ???                ;11111111
EEB8   FF            ???                ;11111111
EEB9   FF            ???                ;11111111
EEBA   FF            ???                ;11111111
EEBB   FF            ???                ;11111111
EEBC   FF            ???                ;11111111
EEBD   FF            ???                ;11111111
EEBE   FF            ???                ;11111111
EEBF   FF            ???                ;11111111
EEC0   FF            ???                ;11111111
EEC1   FF            ???                ;11111111
EEC2   FF            ???                ;11111111
EEC3   FF            ???                ;11111111
EEC4   FF            ???                ;11111111
EEC5   FF            ???                ;11111111
EEC6   FF            ???                ;11111111
EEC7   FF            ???                ;11111111
EEC8   FF            ???                ;11111111
EEC9   FF            ???                ;11111111
EECA   FF            ???                ;11111111
EECB   FF            ???                ;11111111
EECC   FF            ???                ;11111111
EECD   FF            ???                ;11111111
EECE   FF            ???                ;11111111
EECF   FF            ???                ;11111111
EED0   FF            ???                ;11111111
EED1   FF            ???                ;11111111
EED2   FF            ???                ;11111111
EED3   FF            ???                ;11111111
EED4   FF            ???                ;11111111
EED5   FF            ???                ;11111111
EED6   FF            ???                ;11111111
EED7   FF            ???                ;11111111
EED8   FF            ???                ;11111111
EED9   FF            ???                ;11111111
EEDA   FF            ???                ;11111111
EEDB   FF            ???                ;11111111
EEDC   FF            ???                ;11111111
EEDD   FF            ???                ;11111111
EEDE   FF            ???                ;11111111
EEDF   FF            ???                ;11111111
EEE0   FF            ???                ;11111111
EEE1   FF            ???                ;11111111
EEE2   FF            ???                ;11111111
EEE3   FF            ???                ;11111111
EEE4   FF            ???                ;11111111
EEE5   FF            ???                ;11111111
EEE6   FF            ???                ;11111111
EEE7   FF            ???                ;11111111
EEE8   FF            ???                ;11111111
EEE9   FF            ???                ;11111111
EEEA   FF            ???                ;11111111
EEEB   FF            ???                ;11111111
EEEC   FF            ???                ;11111111
EEED   FF            ???                ;11111111
EEEE   FF            ???                ;11111111
EEEF   FF            ???                ;11111111
EEF0   FF            ???                ;11111111
EEF1   FF            ???                ;11111111
EEF2   FF            ???                ;11111111
EEF3   FF            ???                ;11111111
EEF4   FF            ???                ;11111111
EEF5   FF            ???                ;11111111
EEF6   FF            ???                ;11111111
EEF7   FF            ???                ;11111111
EEF8   FF            ???                ;11111111
EEF9   FF            ???                ;11111111
EEFA   FF            ???                ;11111111
EEFB   FF            ???                ;11111111
EEFC   FF            ???                ;11111111
EEFD   FF            ???                ;11111111
EEFE   FF            ???                ;11111111
EEFF   FF            ???                ;11111111
EF00   FF            ???                ;11111111
EF01   FF            ???                ;11111111
EF02   FF            ???                ;11111111
EF03   FF            ???                ;11111111
EF04   FF            ???                ;11111111
EF05   FF            ???                ;11111111
EF06   FF            ???                ;11111111
EF07   FF            ???                ;11111111
EF08   FF            ???                ;11111111
EF09   FF            ???                ;11111111
EF0A   FF            ???                ;11111111
EF0B   FF            ???                ;11111111
EF0C   FF            ???                ;11111111
EF0D   FF            ???                ;11111111
EF0E   FF            ???                ;11111111
EF0F   FF            ???                ;11111111
EF10   FF            ???                ;11111111
EF11   FF            ???                ;11111111
EF12   FF            ???                ;11111111
EF13   FF            ???                ;11111111
EF14   FF            ???                ;11111111
EF15   FF            ???                ;11111111
EF16   FF            ???                ;11111111
EF17   FF            ???                ;11111111
EF18   FF            ???                ;11111111
EF19   FF            ???                ;11111111
EF1A   FF            ???                ;11111111
EF1B   FF            ???                ;11111111
EF1C   FF            ???                ;11111111
EF1D   FF            ???                ;11111111
EF1E   FF            ???                ;11111111
EF1F   FF            ???                ;11111111
EF20   FF            ???                ;11111111
EF21   FF            ???                ;11111111
EF22   FF            ???                ;11111111
EF23   FF            ???                ;11111111
EF24   FF            ???                ;11111111
EF25   FF            ???                ;11111111
EF26   FF            ???                ;11111111
EF27   FF            ???                ;11111111
EF28   FF            ???                ;11111111
EF29   FF            ???                ;11111111
EF2A   FF            ???                ;11111111
EF2B   FF            ???                ;11111111
EF2C   FF            ???                ;11111111
EF2D   FF            ???                ;11111111
EF2E   FF            ???                ;11111111
EF2F   FF            ???                ;11111111
EF30   FF            ???                ;11111111
EF31   FF            ???                ;11111111
EF32   FF            ???                ;11111111
EF33   FF            ???                ;11111111
EF34   FF            ???                ;11111111
EF35   FF            ???                ;11111111
EF36   FF            ???                ;11111111
EF37   FF            ???                ;11111111
EF38   FF            ???                ;11111111
EF39   FF            ???                ;11111111
EF3A   FF            ???                ;11111111
EF3B   FF            ???                ;11111111
EF3C   FF            ???                ;11111111
EF3D   FF            ???                ;11111111
EF3E   FF            ???                ;11111111
EF3F   FF            ???                ;11111111
EF40   FF            ???                ;11111111
EF41   FF            ???                ;11111111
EF42   FF            ???                ;11111111
EF43   FF            ???                ;11111111
EF44   FF            ???                ;11111111
EF45   FF            ???                ;11111111
EF46   FF            ???                ;11111111
EF47   FF            ???                ;11111111
EF48   FF            ???                ;11111111
EF49   FF            ???                ;11111111
EF4A   FF            ???                ;11111111
EF4B   FF            ???                ;11111111
EF4C   FF            ???                ;11111111
EF4D   FF            ???                ;11111111
EF4E   FF            ???                ;11111111
EF4F   FF            ???                ;11111111
EF50   FF            ???                ;11111111
EF51   FF            ???                ;11111111
EF52   FF            ???                ;11111111
EF53   FF            ???                ;11111111
EF54   FF            ???                ;11111111
EF55   FF            ???                ;11111111
EF56   FF            ???                ;11111111
EF57   FF            ???                ;11111111
EF58   FF            ???                ;11111111
EF59   FF            ???                ;11111111
EF5A   FF            ???                ;11111111
EF5B   FF            ???                ;11111111
EF5C   FF            ???                ;11111111
EF5D   FF            ???                ;11111111
EF5E   FF            ???                ;11111111
EF5F   FF            ???                ;11111111
EF60   FF            ???                ;11111111
EF61   FF            ???                ;11111111
EF62   FF            ???                ;11111111
EF63   FF            ???                ;11111111
EF64   FF            ???                ;11111111
EF65   FF            ???                ;11111111
EF66   FF            ???                ;11111111
EF67   FF            ???                ;11111111
EF68   FF            ???                ;11111111
EF69   FF            ???                ;11111111
EF6A   FF            ???                ;11111111
EF6B   FF            ???                ;11111111
EF6C   FF            ???                ;11111111
EF6D   FF            ???                ;11111111
EF6E   FF            ???                ;11111111
EF6F   FF            ???                ;11111111
EF70   FF            ???                ;11111111
EF71   FF            ???                ;11111111
EF72   FF            ???                ;11111111
EF73   FF            ???                ;11111111
EF74   FF            ???                ;11111111
EF75   FF            ???                ;11111111
EF76   FF            ???                ;11111111
EF77   FF            ???                ;11111111
EF78   FF            ???                ;11111111
EF79   FF            ???                ;11111111
EF7A   FF            ???                ;11111111
EF7B   FF            ???                ;11111111
EF7C   FF            ???                ;11111111
EF7D   FF            ???                ;11111111
EF7E   FF            ???                ;11111111
EF7F   FF            ???                ;11111111
EF80   FF            ???                ;11111111
EF81   FF            ???                ;11111111
EF82   FF            ???                ;11111111
EF83   FF            ???                ;11111111
EF84   FF            ???                ;11111111
EF85   FF            ???                ;11111111
EF86   FF            ???                ;11111111
EF87   FF            ???                ;11111111
EF88   FF            ???                ;11111111
EF89   FF            ???                ;11111111
EF8A   FF            ???                ;11111111
EF8B   FF            ???                ;11111111
EF8C   FF            ???                ;11111111
EF8D   FF            ???                ;11111111
EF8E   FF            ???                ;11111111
EF8F   FF            ???                ;11111111
EF90   FF            ???                ;11111111
EF91   FF            ???                ;11111111
EF92   FF            ???                ;11111111
EF93   FF            ???                ;11111111
EF94   FF            ???                ;11111111
EF95   FF            ???                ;11111111
EF96   FF            ???                ;11111111
EF97   FF            ???                ;11111111
EF98   FF            ???                ;11111111
EF99   FF            ???                ;11111111
EF9A   FF            ???                ;11111111
EF9B   FF            ???                ;11111111
EF9C   FF            ???                ;11111111
EF9D   FF            ???                ;11111111
EF9E   FF            ???                ;11111111
EF9F   FF            ???                ;11111111
EFA0   FF            ???                ;11111111
EFA1   FF            ???                ;11111111
EFA2   FF            ???                ;11111111
EFA3   FF            ???                ;11111111
EFA4   FF            ???                ;11111111
EFA5   FF            ???                ;11111111
EFA6   FF            ???                ;11111111
EFA7   FF            ???                ;11111111
EFA8   FF            ???                ;11111111
EFA9   FF            ???                ;11111111
EFAA   FF            ???                ;11111111
EFAB   FF            ???                ;11111111
EFAC   FF            ???                ;11111111
EFAD   FF            ???                ;11111111
EFAE   FF            ???                ;11111111
EFAF   FF            ???                ;11111111
EFB0   FF            ???                ;11111111
EFB1   FF            ???                ;11111111
EFB2   FF            ???                ;11111111
EFB3   FF            ???                ;11111111
EFB4   FF            ???                ;11111111
EFB5   FF            ???                ;11111111
EFB6   FF            ???                ;11111111
EFB7   FF            ???                ;11111111
EFB8   FF            ???                ;11111111
EFB9   FF            ???                ;11111111
EFBA   FF            ???                ;11111111
EFBB   FF            ???                ;11111111
EFBC   FF            ???                ;11111111
EFBD   FF            ???                ;11111111
EFBE   FF            ???                ;11111111
EFBF   FF            ???                ;11111111
EFC0   FF            ???                ;11111111
EFC1   FF            ???                ;11111111
EFC2   FF            ???                ;11111111
EFC3   FF            ???                ;11111111
EFC4   FF            ???                ;11111111
EFC5   FF            ???                ;11111111
EFC6   FF            ???                ;11111111
EFC7   FF            ???                ;11111111
EFC8   FF            ???                ;11111111
EFC9   FF            ???                ;11111111
EFCA   FF            ???                ;11111111
EFCB   FF            ???                ;11111111
EFCC   FF            ???                ;11111111
EFCD   FF            ???                ;11111111
EFCE   FF            ???                ;11111111
EFCF   FF            ???                ;11111111
EFD0   FF            ???                ;11111111
EFD1   FF            ???                ;11111111
EFD2   FF            ???                ;11111111
EFD3   FF            ???                ;11111111
EFD4   FF            ???                ;11111111
EFD5   FF            ???                ;11111111
EFD6   FF            ???                ;11111111
EFD7   FF            ???                ;11111111
EFD8   FF            ???                ;11111111
EFD9   FF            ???                ;11111111
EFDA   FF            ???                ;11111111
EFDB   FF            ???                ;11111111
EFDC   FF            ???                ;11111111
EFDD   FF            ???                ;11111111
EFDE   FF            ???                ;11111111
EFDF   FF            ???                ;11111111
EFE0   FF            ???                ;11111111
EFE1   FF            ???                ;11111111
EFE2   FF            ???                ;11111111
EFE3   FF            ???                ;11111111
EFE4   FF            ???                ;11111111
EFE5   FF            ???                ;11111111
EFE6   FF            ???                ;11111111
EFE7   FF            ???                ;11111111
EFE8   FF            ???                ;11111111
EFE9   FF            ???                ;11111111
EFEA   FF            ???                ;11111111
EFEB   FF            ???                ;11111111
EFEC   FF            ???                ;11111111
EFED   FF            ???                ;11111111
EFEE   FF            ???                ;11111111
EFEF   FF            ???                ;11111111
EFF0   FF            ???                ;11111111
EFF1   FF            ???                ;11111111
EFF2   FF            ???                ;11111111
EFF3   FF            ???                ;11111111
EFF4   FF            ???                ;11111111
EFF5   FF            ???                ;11111111
EFF6   FF            ???                ;11111111
EFF7   FF            ???                ;11111111
EFF8   FF            ???                ;11111111
EFF9   FF            ???                ;11111111
EFFA   FF            ???                ;11111111
EFFB   FF            ???                ;11111111
EFFC   FF            ???                ;11111111
EFFD   FF            ???                ;11111111
EFFE   FF            ???                ;11111111
EFFF   FF            ???                ;11111111
F000   FF            ???                ;11111111
F001   FF            ???                ;11111111
F002   FF            ???                ;11111111
F003   FF            ???                ;11111111
F004   FF            ???                ;11111111
F005   FF            ???                ;11111111
F006   FF            ???                ;11111111
F007   FF            ???                ;11111111
F008   FF            ???                ;11111111
F009   FF            ???                ;11111111
F00A   FF            ???                ;11111111
F00B   FF            ???                ;11111111
F00C   FF            ???                ;11111111
F00D   FF            ???                ;11111111
F00E   FF            ???                ;11111111
F00F   FF            ???                ;11111111
F010   FF            ???                ;11111111
F011   FF            ???                ;11111111
F012   FF            ???                ;11111111
F013   FF            ???                ;11111111
F014   FF            ???                ;11111111
F015   FF            ???                ;11111111
F016   FF            ???                ;11111111
F017   FF            ???                ;11111111
F018   FF            ???                ;11111111
F019   FF            ???                ;11111111
F01A   FF            ???                ;11111111
F01B   FF            ???                ;11111111
F01C   FF            ???                ;11111111
F01D   FF            ???                ;11111111
F01E   FF            ???                ;11111111
F01F   FF            ???                ;11111111
F020   FF            ???                ;11111111
F021   FF            ???                ;11111111
F022   FF            ???                ;11111111
F023   FF            ???                ;11111111
F024   FF            ???                ;11111111
F025   FF            ???                ;11111111
F026   FF            ???                ;11111111
F027   FF            ???                ;11111111
F028   FF            ???                ;11111111
F029   FF            ???                ;11111111
F02A   FF            ???                ;11111111
F02B   FF            ???                ;11111111
F02C   FF            ???                ;11111111
F02D   FF            ???                ;11111111
F02E   FF            ???                ;11111111
F02F   FF            ???                ;11111111
F030   FF            ???                ;11111111
F031   FF            ???                ;11111111
F032   FF            ???                ;11111111
F033   FF            ???                ;11111111
F034   FF            ???                ;11111111
F035   FF            ???                ;11111111
F036   FF            ???                ;11111111
F037   FF            ???                ;11111111
F038   FF            ???                ;11111111
F039   FF            ???                ;11111111
F03A   FF            ???                ;11111111
F03B   FF            ???                ;11111111
F03C   FF            ???                ;11111111
F03D   FF            ???                ;11111111
F03E   FF            ???                ;11111111
F03F   FF            ???                ;11111111
F040   FF            ???                ;11111111
F041   FF            ???                ;11111111
F042   FF            ???                ;11111111
F043   FF            ???                ;11111111
F044   FF            ???                ;11111111
F045   FF            ???                ;11111111
F046   FF            ???                ;11111111
F047   FF            ???                ;11111111
F048   FF            ???                ;11111111
F049   FF            ???                ;11111111
F04A   FF            ???                ;11111111
F04B   FF            ???                ;11111111
F04C   FF            ???                ;11111111
F04D   FF            ???                ;11111111
F04E   FF            ???                ;11111111
F04F   FF            ???                ;11111111
F050   FF            ???                ;11111111
F051   FF            ???                ;11111111
F052   FF            ???                ;11111111
F053   FF            ???                ;11111111
F054   FF            ???                ;11111111
F055   FF            ???                ;11111111
F056   FF            ???                ;11111111
F057   FF            ???                ;11111111
F058   FF            ???                ;11111111
F059   FF            ???                ;11111111
F05A   FF            ???                ;11111111
F05B   FF            ???                ;11111111
F05C   FF            ???                ;11111111
F05D   FF            ???                ;11111111
F05E   FF            ???                ;11111111
F05F   FF            ???                ;11111111
F060   FF            ???                ;11111111
F061   FF            ???                ;11111111
F062   FF            ???                ;11111111
F063   FF            ???                ;11111111
F064   FF            ???                ;11111111
F065   FF            ???                ;11111111
F066   FF            ???                ;11111111
F067   FF            ???                ;11111111
F068   FF            ???                ;11111111
F069   FF            ???                ;11111111
F06A   FF            ???                ;11111111
F06B   FF            ???                ;11111111
F06C   FF            ???                ;11111111
F06D   FF            ???                ;11111111
F06E   FF            ???                ;11111111
F06F   FF            ???                ;11111111
F070   FF            ???                ;11111111
F071   FF            ???                ;11111111
F072   FF            ???                ;11111111
F073   FF            ???                ;11111111
F074   FF            ???                ;11111111
F075   FF            ???                ;11111111
F076   FF            ???                ;11111111
F077   FF            ???                ;11111111
F078   FF            ???                ;11111111
F079   FF            ???                ;11111111
F07A   FF            ???                ;11111111
F07B   FF            ???                ;11111111
F07C   FF            ???                ;11111111
F07D   FF            ???                ;11111111
F07E   FF            ???                ;11111111
F07F   FF            ???                ;11111111
F080   FF            ???                ;11111111
F081   FF            ???                ;11111111
F082   FF            ???                ;11111111
F083   FF            ???                ;11111111
F084   FF            ???                ;11111111
F085   FF            ???                ;11111111
F086   FF            ???                ;11111111
F087   FF            ???                ;11111111
F088   FF            ???                ;11111111
F089   FF            ???                ;11111111
F08A   FF            ???                ;11111111
F08B   FF            ???                ;11111111
F08C   FF            ???                ;11111111
F08D   FF            ???                ;11111111
F08E   FF            ???                ;11111111
F08F   FF            ???                ;11111111
F090   FF            ???                ;11111111
F091   FF            ???                ;11111111
F092   FF            ???                ;11111111
F093   FF            ???                ;11111111
F094   FF            ???                ;11111111
F095   FF            ???                ;11111111
F096   FF            ???                ;11111111
F097   FF            ???                ;11111111
F098   FF            ???                ;11111111
F099   FF            ???                ;11111111
F09A   FF            ???                ;11111111
F09B   FF            ???                ;11111111
F09C   FF            ???                ;11111111
F09D   FF            ???                ;11111111
F09E   FF            ???                ;11111111
F09F   FF            ???                ;11111111
F0A0   FF            ???                ;11111111
F0A1   FF            ???                ;11111111
F0A2   FF            ???                ;11111111
F0A3   FF            ???                ;11111111
F0A4   FF            ???                ;11111111
F0A5   FF            ???                ;11111111
F0A6   FF            ???                ;11111111
F0A7   FF            ???                ;11111111
F0A8   FF            ???                ;11111111
F0A9   FF            ???                ;11111111
F0AA   FF            ???                ;11111111
F0AB   FF            ???                ;11111111
F0AC   FF            ???                ;11111111
F0AD   FF            ???                ;11111111
F0AE   FF            ???                ;11111111
F0AF   FF            ???                ;11111111
F0B0   FF            ???                ;11111111
F0B1   FF            ???                ;11111111
F0B2   FF            ???                ;11111111
F0B3   FF            ???                ;11111111
F0B4   FF            ???                ;11111111
F0B5   FF            ???                ;11111111
F0B6   FF            ???                ;11111111
F0B7   FF            ???                ;11111111
F0B8   FF            ???                ;11111111
F0B9   FF            ???                ;11111111
F0BA   FF            ???                ;11111111
F0BB   FF            ???                ;11111111
F0BC   FF            ???                ;11111111
F0BD   FF            ???                ;11111111
F0BE   FF            ???                ;11111111
F0BF   FF            ???                ;11111111
F0C0   FF            ???                ;11111111
F0C1   FF            ???                ;11111111
F0C2   FF            ???                ;11111111
F0C3   FF            ???                ;11111111
F0C4   FF            ???                ;11111111
F0C5   FF            ???                ;11111111
F0C6   FF            ???                ;11111111
F0C7   FF            ???                ;11111111
F0C8   FF            ???                ;11111111
F0C9   FF            ???                ;11111111
F0CA   FF            ???                ;11111111
F0CB   FF            ???                ;11111111
F0CC   FF            ???                ;11111111
F0CD   FF            ???                ;11111111
F0CE   FF            ???                ;11111111
F0CF   FF            ???                ;11111111
F0D0   FF            ???                ;11111111
F0D1   FF            ???                ;11111111
F0D2   FF            ???                ;11111111
F0D3   FF            ???                ;11111111
F0D4   FF            ???                ;11111111
F0D5   FF            ???                ;11111111
F0D6   FF            ???                ;11111111
F0D7   FF            ???                ;11111111
F0D8   FF            ???                ;11111111
F0D9   FF            ???                ;11111111
F0DA   FF            ???                ;11111111
F0DB   FF            ???                ;11111111
F0DC   FF            ???                ;11111111
F0DD   FF            ???                ;11111111
F0DE   FF            ???                ;11111111
F0DF   FF            ???                ;11111111
F0E0   FF            ???                ;11111111
F0E1   FF            ???                ;11111111
F0E2   FF            ???                ;11111111
F0E3   FF            ???                ;11111111
F0E4   FF            ???                ;11111111
F0E5   FF            ???                ;11111111
F0E6   FF            ???                ;11111111
F0E7   FF            ???                ;11111111
F0E8   FF            ???                ;11111111
F0E9   FF            ???                ;11111111
F0EA   FF            ???                ;11111111
F0EB   FF            ???                ;11111111
F0EC   FF            ???                ;11111111
F0ED   FF            ???                ;11111111
F0EE   FF            ???                ;11111111
F0EF   FF            ???                ;11111111
F0F0   FF            ???                ;11111111
F0F1   FF            ???                ;11111111
F0F2   FF            ???                ;11111111
F0F3   FF            ???                ;11111111
F0F4   FF            ???                ;11111111
F0F5   FF            ???                ;11111111
F0F6   FF            ???                ;11111111
F0F7   FF            ???                ;11111111
F0F8   FF            ???                ;11111111
F0F9   FF            ???                ;11111111
F0FA   FF            ???                ;11111111
F0FB   FF            ???                ;11111111
F0FC   FF            ???                ;11111111
F0FD   FF            ???                ;11111111
F0FE   FF            ???                ;11111111
F0FF   FF            ???                ;11111111
F100   FF            ???                ;11111111
F101   FF            ???                ;11111111
F102   FF            ???                ;11111111
F103   FF            ???                ;11111111
F104   FF            ???                ;11111111
F105   FF            ???                ;11111111
F106   FF            ???                ;11111111
F107   FF            ???                ;11111111
F108   FF            ???                ;11111111
F109   FF            ???                ;11111111
F10A   FF            ???                ;11111111
F10B   FF            ???                ;11111111
F10C   FF            ???                ;11111111
F10D   FF            ???                ;11111111
F10E   FF            ???                ;11111111
F10F   FF            ???                ;11111111
F110   FF            ???                ;11111111
F111   FF            ???                ;11111111
F112   FF            ???                ;11111111
F113   FF            ???                ;11111111
F114   FF            ???                ;11111111
F115   FF            ???                ;11111111
F116   FF            ???                ;11111111
F117   FF            ???                ;11111111
F118   FF            ???                ;11111111
F119   FF            ???                ;11111111
F11A   FF            ???                ;11111111
F11B   FF            ???                ;11111111
F11C   FF            ???                ;11111111
F11D   FF            ???                ;11111111
F11E   FF            ???                ;11111111
F11F   FF            ???                ;11111111
F120   FF            ???                ;11111111
F121   FF            ???                ;11111111
F122   FF            ???                ;11111111
F123   FF            ???                ;11111111
F124   FF            ???                ;11111111
F125   FF            ???                ;11111111
F126   FF            ???                ;11111111
F127   FF            ???                ;11111111
F128   FF            ???                ;11111111
F129   FF            ???                ;11111111
F12A   FF            ???                ;11111111
F12B   FF            ???                ;11111111
F12C   FF            ???                ;11111111
F12D   FF            ???                ;11111111
F12E   FF            ???                ;11111111
F12F   FF            ???                ;11111111
F130   FF            ???                ;11111111
F131   FF            ???                ;11111111
F132   FF            ???                ;11111111
F133   FF            ???                ;11111111
F134   FF            ???                ;11111111
F135   FF            ???                ;11111111
F136   FF            ???                ;11111111
F137   FF            ???                ;11111111
F138   FF            ???                ;11111111
F139   FF            ???                ;11111111
F13A   FF            ???                ;11111111
F13B   FF            ???                ;11111111
F13C   FF            ???                ;11111111
F13D   FF            ???                ;11111111
F13E   FF            ???                ;11111111
F13F   FF            ???                ;11111111
F140   FF            ???                ;11111111
F141   FF            ???                ;11111111
F142   FF            ???                ;11111111
F143   FF            ???                ;11111111
F144   FF            ???                ;11111111
F145   FF            ???                ;11111111
F146   FF            ???                ;11111111
F147   FF            ???                ;11111111
F148   FF            ???                ;11111111
F149   FF            ???                ;11111111
F14A   FF            ???                ;11111111
F14B   FF            ???                ;11111111
F14C   FF            ???                ;11111111
F14D   FF            ???                ;11111111
F14E   FF            ???                ;11111111
F14F   FF            ???                ;11111111
F150   FF            ???                ;11111111
F151   FF            ???                ;11111111
F152   FF            ???                ;11111111
F153   FF            ???                ;11111111
F154   FF            ???                ;11111111
F155   FF            ???                ;11111111
F156   FF            ???                ;11111111
F157   FF            ???                ;11111111
F158   FF            ???                ;11111111
F159   FF            ???                ;11111111
F15A   FF            ???                ;11111111
F15B   FF            ???                ;11111111
F15C   FF            ???                ;11111111
F15D   FF            ???                ;11111111
F15E   FF            ???                ;11111111
F15F   FF            ???                ;11111111
F160   FF            ???                ;11111111
F161   FF            ???                ;11111111
F162   FF            ???                ;11111111
F163   FF            ???                ;11111111
F164   FF            ???                ;11111111
F165   FF            ???                ;11111111
F166   FF            ???                ;11111111
F167   FF            ???                ;11111111
F168   FF            ???                ;11111111
F169   FF            ???                ;11111111
F16A   FF            ???                ;11111111
F16B   FF            ???                ;11111111
F16C   FF            ???                ;11111111
F16D   FF            ???                ;11111111
F16E   FF            ???                ;11111111
F16F   FF            ???                ;11111111
F170   FF            ???                ;11111111
F171   FF            ???                ;11111111
F172   FF            ???                ;11111111
F173   FF            ???                ;11111111
F174   FF            ???                ;11111111
F175   FF            ???                ;11111111
F176   FF            ???                ;11111111
F177   FF            ???                ;11111111
F178   FF            ???                ;11111111
F179   FF            ???                ;11111111
F17A   FF            ???                ;11111111
F17B   FF            ???                ;11111111
F17C   FF            ???                ;11111111
F17D   FF            ???                ;11111111
F17E   FF            ???                ;11111111
F17F   FF            ???                ;11111111
F180   FF            ???                ;11111111
F181   FF            ???                ;11111111
F182   FF            ???                ;11111111
F183   FF            ???                ;11111111
F184   FF            ???                ;11111111
F185   FF            ???                ;11111111
F186   FF            ???                ;11111111
F187   FF            ???                ;11111111
F188   FF            ???                ;11111111
F189   FF            ???                ;11111111
F18A   FF            ???                ;11111111
F18B   FF            ???                ;11111111
F18C   FF            ???                ;11111111
F18D   FF            ???                ;11111111
F18E   FF            ???                ;11111111
F18F   FF            ???                ;11111111
F190   FF            ???                ;11111111
F191   FF            ???                ;11111111
F192   FF            ???                ;11111111
F193   FF            ???                ;11111111
F194   FF            ???                ;11111111
F195   FF            ???                ;11111111
F196   FF            ???                ;11111111
F197   FF            ???                ;11111111
F198   FF            ???                ;11111111
F199   FF            ???                ;11111111
F19A   FF            ???                ;11111111
F19B   FF            ???                ;11111111
F19C   FF            ???                ;11111111
F19D   FF            ???                ;11111111
F19E   FF            ???                ;11111111
F19F   FF            ???                ;11111111
F1A0   FF            ???                ;11111111
F1A1   FF            ???                ;11111111
F1A2   FF            ???                ;11111111
F1A3   FF            ???                ;11111111
F1A4   FF            ???                ;11111111
F1A5   FF            ???                ;11111111
F1A6   FF            ???                ;11111111
F1A7   FF            ???                ;11111111
F1A8   FF            ???                ;11111111
F1A9   FF            ???                ;11111111
F1AA   FF            ???                ;11111111
F1AB   FF            ???                ;11111111
F1AC   FF            ???                ;11111111
F1AD   FF            ???                ;11111111
F1AE   FF            ???                ;11111111
F1AF   FF            ???                ;11111111
F1B0   FF            ???                ;11111111
F1B1   FF            ???                ;11111111
F1B2   FF            ???                ;11111111
F1B3   FF            ???                ;11111111
F1B4   FF            ???                ;11111111
F1B5   FF            ???                ;11111111
F1B6   FF            ???                ;11111111
F1B7   FF            ???                ;11111111
F1B8   FF            ???                ;11111111
F1B9   FF            ???                ;11111111
F1BA   FF            ???                ;11111111
F1BB   FF            ???                ;11111111
F1BC   FF            ???                ;11111111
F1BD   FF            ???                ;11111111
F1BE   FF            ???                ;11111111
F1BF   FF            ???                ;11111111
F1C0   FF            ???                ;11111111
F1C1   FF            ???                ;11111111
F1C2   FF            ???                ;11111111
F1C3   FF            ???                ;11111111
F1C4   FF            ???                ;11111111
F1C5   FF            ???                ;11111111
F1C6   FF            ???                ;11111111
F1C7   FF            ???                ;11111111
F1C8   FF            ???                ;11111111
F1C9   FF            ???                ;11111111
F1CA   FF            ???                ;11111111
F1CB   FF            ???                ;11111111
F1CC   FF            ???                ;11111111
F1CD   FF            ???                ;11111111
F1CE   FF            ???                ;11111111
F1CF   FF            ???                ;11111111
F1D0   FF            ???                ;11111111
F1D1   FF            ???                ;11111111
F1D2   FF            ???                ;11111111
F1D3   FF            ???                ;11111111
F1D4   FF            ???                ;11111111
F1D5   FF            ???                ;11111111
F1D6   FF            ???                ;11111111
F1D7   FF            ???                ;11111111
F1D8   FF            ???                ;11111111
F1D9   FF            ???                ;11111111
F1DA   FF            ???                ;11111111
F1DB   FF            ???                ;11111111
F1DC   FF            ???                ;11111111
F1DD   FF            ???                ;11111111
F1DE   FF            ???                ;11111111
F1DF   FF            ???                ;11111111
F1E0   FF            ???                ;11111111
F1E1   FF            ???                ;11111111
F1E2   FF            ???                ;11111111
F1E3   FF            ???                ;11111111
F1E4   FF            ???                ;11111111
F1E5   FF            ???                ;11111111
F1E6   FF            ???                ;11111111
F1E7   FF            ???                ;11111111
F1E8   FF            ???                ;11111111
F1E9   FF            ???                ;11111111
F1EA   FF            ???                ;11111111
F1EB   FF            ???                ;11111111
F1EC   FF            ???                ;11111111
F1ED   FF            ???                ;11111111
F1EE   FF            ???                ;11111111
F1EF   FF            ???                ;11111111
F1F0   FF            ???                ;11111111
F1F1   FF            ???                ;11111111
F1F2   FF            ???                ;11111111
F1F3   FF            ???                ;11111111
F1F4   FF            ???                ;11111111
F1F5   FF            ???                ;11111111
F1F6   FF            ???                ;11111111
F1F7   FF            ???                ;11111111
F1F8   FF            ???                ;11111111
F1F9   FF            ???                ;11111111
F1FA   FF            ???                ;11111111
F1FB   FF            ???                ;11111111
F1FC   FF            ???                ;11111111
F1FD   FF            ???                ;11111111
F1FE   FF            ???                ;11111111
F1FF   FF            ???                ;11111111
F200   FF            ???                ;11111111
F201   FF            ???                ;11111111
F202   FF            ???                ;11111111
F203   FF            ???                ;11111111
F204   FF            ???                ;11111111
F205   FF            ???                ;11111111
F206   FF            ???                ;11111111
F207   FF            ???                ;11111111
F208   FF            ???                ;11111111
F209   FF            ???                ;11111111
F20A   FF            ???                ;11111111
F20B   FF            ???                ;11111111
F20C   FF            ???                ;11111111
F20D   FF            ???                ;11111111
F20E   FF            ???                ;11111111
F20F   FF            ???                ;11111111
F210   FF            ???                ;11111111
F211   FF            ???                ;11111111
F212   FF            ???                ;11111111
F213   FF            ???                ;11111111
F214   FF            ???                ;11111111
F215   FF            ???                ;11111111
F216   FF            ???                ;11111111
F217   FF            ???                ;11111111
F218   FF            ???                ;11111111
F219   FF            ???                ;11111111
F21A   FF            ???                ;11111111
F21B   FF            ???                ;11111111
F21C   FF            ???                ;11111111
F21D   FF            ???                ;11111111
F21E   FF            ???                ;11111111
F21F   FF            ???                ;11111111
F220   FF            ???                ;11111111
F221   FF            ???                ;11111111
F222   FF            ???                ;11111111
F223   FF            ???                ;11111111
F224   FF            ???                ;11111111
F225   FF            ???                ;11111111
F226   FF            ???                ;11111111
F227   FF            ???                ;11111111
F228   FF            ???                ;11111111
F229   FF            ???                ;11111111
F22A   FF            ???                ;11111111
F22B   FF            ???                ;11111111
F22C   FF            ???                ;11111111
F22D   FF            ???                ;11111111
F22E   FF            ???                ;11111111
F22F   FF            ???                ;11111111
F230   FF            ???                ;11111111
F231   FF            ???                ;11111111
F232   FF            ???                ;11111111
F233   FF            ???                ;11111111
F234   FF            ???                ;11111111
F235   FF            ???                ;11111111
F236   FF            ???                ;11111111
F237   FF            ???                ;11111111
F238   FF            ???                ;11111111
F239   FF            ???                ;11111111
F23A   FF            ???                ;11111111
F23B   FF            ???                ;11111111
F23C   FF            ???                ;11111111
F23D   FF            ???                ;11111111
F23E   FF            ???                ;11111111
F23F   FF            ???                ;11111111
F240   FF            ???                ;11111111
F241   FF            ???                ;11111111
F242   FF            ???                ;11111111
F243   FF            ???                ;11111111
F244   FF            ???                ;11111111
F245   FF            ???                ;11111111
F246   FF            ???                ;11111111
F247   FF            ???                ;11111111
F248   FF            ???                ;11111111
F249   FF            ???                ;11111111
F24A   FF            ???                ;11111111
F24B   FF            ???                ;11111111
F24C   FF            ???                ;11111111
F24D   FF            ???                ;11111111
F24E   FF            ???                ;11111111
F24F   FF            ???                ;11111111
F250   FF            ???                ;11111111
F251   FF            ???                ;11111111
F252   FF            ???                ;11111111
F253   FF            ???                ;11111111
F254   FF            ???                ;11111111
F255   FF            ???                ;11111111
F256   FF            ???                ;11111111
F257   FF            ???                ;11111111
F258   FF            ???                ;11111111
F259   FF            ???                ;11111111
F25A   FF            ???                ;11111111
F25B   FF            ???                ;11111111
F25C   FF            ???                ;11111111
F25D   FF            ???                ;11111111
F25E   FF            ???                ;11111111
F25F   FF            ???                ;11111111
F260   FF            ???                ;11111111
F261   FF            ???                ;11111111
F262   FF            ???                ;11111111
F263   FF            ???                ;11111111
F264   FF            ???                ;11111111
F265   FF            ???                ;11111111
F266   FF            ???                ;11111111
F267   FF            ???                ;11111111
F268   FF            ???                ;11111111
F269   FF            ???                ;11111111
F26A   FF            ???                ;11111111
F26B   FF            ???                ;11111111
F26C   FF            ???                ;11111111
F26D   FF            ???                ;11111111
F26E   FF            ???                ;11111111
F26F   FF            ???                ;11111111
F270   FF            ???                ;11111111
F271   FF            ???                ;11111111
F272   FF            ???                ;11111111
F273   FF            ???                ;11111111
F274   FF            ???                ;11111111
F275   FF            ???                ;11111111
F276   FF            ???                ;11111111
F277   FF            ???                ;11111111
F278   FF            ???                ;11111111
F279   FF            ???                ;11111111
F27A   FF            ???                ;11111111
F27B   FF            ???                ;11111111
F27C   FF            ???                ;11111111
F27D   FF            ???                ;11111111
F27E   FF            ???                ;11111111
F27F   FF            ???                ;11111111
F280   FF            ???                ;11111111
F281   FF            ???                ;11111111
F282   FF            ???                ;11111111
F283   FF            ???                ;11111111
F284   FF            ???                ;11111111
F285   FF            ???                ;11111111
F286   FF            ???                ;11111111
F287   FF            ???                ;11111111
F288   FF            ???                ;11111111
F289   FF            ???                ;11111111
F28A   FF            ???                ;11111111
F28B   FF            ???                ;11111111
F28C   FF            ???                ;11111111
F28D   FF            ???                ;11111111
F28E   FF            ???                ;11111111
F28F   FF            ???                ;11111111
F290   FF            ???                ;11111111
F291   FF            ???                ;11111111
F292   FF            ???                ;11111111
F293   FF            ???                ;11111111
F294   FF            ???                ;11111111
F295   FF            ???                ;11111111
F296   FF            ???                ;11111111
F297   FF            ???                ;11111111
F298   FF            ???                ;11111111
F299   FF            ???                ;11111111
F29A   FF            ???                ;11111111
F29B   FF            ???                ;11111111
F29C   FF            ???                ;11111111
F29D   FF            ???                ;11111111
F29E   FF            ???                ;11111111
F29F   FF            ???                ;11111111
F2A0   FF            ???                ;11111111
F2A1   FF            ???                ;11111111
F2A2   FF            ???                ;11111111
F2A3   FF            ???                ;11111111
F2A4   FF            ???                ;11111111
F2A5   FF            ???                ;11111111
F2A6   FF            ???                ;11111111
F2A7   FF            ???                ;11111111
F2A8   FF            ???                ;11111111
F2A9   FF            ???                ;11111111
F2AA   FF            ???                ;11111111
F2AB   FF            ???                ;11111111
F2AC   FF            ???                ;11111111
F2AD   FF            ???                ;11111111
F2AE   FF            ???                ;11111111
F2AF   FF            ???                ;11111111
F2B0   FF            ???                ;11111111
F2B1   FF            ???                ;11111111
F2B2   FF            ???                ;11111111
F2B3   FF            ???                ;11111111
F2B4   FF            ???                ;11111111
F2B5   FF            ???                ;11111111
F2B6   FF            ???                ;11111111
F2B7   FF            ???                ;11111111
F2B8   FF            ???                ;11111111
F2B9   FF            ???                ;11111111
F2BA   FF            ???                ;11111111
F2BB   FF            ???                ;11111111
F2BC   FF            ???                ;11111111
F2BD   FF            ???                ;11111111
F2BE   FF            ???                ;11111111
F2BF   FF            ???                ;11111111
F2C0   FF            ???                ;11111111
F2C1   FF            ???                ;11111111
F2C2   FF            ???                ;11111111
F2C3   FF            ???                ;11111111
F2C4   FF            ???                ;11111111
F2C5   FF            ???                ;11111111
F2C6   FF            ???                ;11111111
F2C7   FF            ???                ;11111111
F2C8   FF            ???                ;11111111
F2C9   FF            ???                ;11111111
F2CA   FF            ???                ;11111111
F2CB   FF            ???                ;11111111
F2CC   FF            ???                ;11111111
F2CD   FF            ???                ;11111111
F2CE   FF            ???                ;11111111
F2CF   FF            ???                ;11111111
F2D0   FF            ???                ;11111111
F2D1   FF            ???                ;11111111
F2D2   FF            ???                ;11111111
F2D3   FF            ???                ;11111111
F2D4   FF            ???                ;11111111
F2D5   FF            ???                ;11111111
F2D6   FF            ???                ;11111111
F2D7   FF            ???                ;11111111
F2D8   FF            ???                ;11111111
F2D9   FF            ???                ;11111111
F2DA   FF            ???                ;11111111
F2DB   FF            ???                ;11111111
F2DC   FF            ???                ;11111111
F2DD   FF            ???                ;11111111
F2DE   FF            ???                ;11111111
F2DF   FF            ???                ;11111111
F2E0   FF            ???                ;11111111
F2E1   FF            ???                ;11111111
F2E2   FF            ???                ;11111111
F2E3   FF            ???                ;11111111
F2E4   FF            ???                ;11111111
F2E5   FF            ???                ;11111111
F2E6   FF            ???                ;11111111
F2E7   FF            ???                ;11111111
F2E8   FF            ???                ;11111111
F2E9   FF            ???                ;11111111
F2EA   FF            ???                ;11111111
F2EB   FF            ???                ;11111111
F2EC   FF            ???                ;11111111
F2ED   FF            ???                ;11111111
F2EE   FF            ???                ;11111111
F2EF   FF            ???                ;11111111
F2F0   FF            ???                ;11111111
F2F1   FF            ???                ;11111111
F2F2   FF            ???                ;11111111
F2F3   FF            ???                ;11111111
F2F4   FF            ???                ;11111111
F2F5   FF            ???                ;11111111
F2F6   FF            ???                ;11111111
F2F7   FF            ???                ;11111111
F2F8   FF            ???                ;11111111
F2F9   FF            ???                ;11111111
F2FA   FF            ???                ;11111111
F2FB   FF            ???                ;11111111
F2FC   FF            ???                ;11111111
F2FD   FF            ???                ;11111111
F2FE   FF            ???                ;11111111
F2FF   FF            ???                ;11111111
F300   FF            ???                ;11111111
F301   FF            ???                ;11111111
F302   FF            ???                ;11111111
F303   FF            ???                ;11111111
F304   FF            ???                ;11111111
F305   FF            ???                ;11111111
F306   FF            ???                ;11111111
F307   FF            ???                ;11111111
F308   FF            ???                ;11111111
F309   FF            ???                ;11111111
F30A   FF            ???                ;11111111
F30B   FF            ???                ;11111111
F30C   FF            ???                ;11111111
F30D   FF            ???                ;11111111
F30E   FF            ???                ;11111111
F30F   FF            ???                ;11111111
F310   FF            ???                ;11111111
F311   FF            ???                ;11111111
F312   FF            ???                ;11111111
F313   FF            ???                ;11111111
F314   FF            ???                ;11111111
F315   FF            ???                ;11111111
F316   FF            ???                ;11111111
F317   FF            ???                ;11111111
F318   FF            ???                ;11111111
F319   FF            ???                ;11111111
F31A   FF            ???                ;11111111
F31B   FF            ???                ;11111111
F31C   FF            ???                ;11111111
F31D   FF            ???                ;11111111
F31E   FF            ???                ;11111111
F31F   FF            ???                ;11111111
F320   FF            ???                ;11111111
F321   FF            ???                ;11111111
F322   FF            ???                ;11111111
F323   FF            ???                ;11111111
F324   FF            ???                ;11111111
F325   FF            ???                ;11111111
F326   FF            ???                ;11111111
F327   FF            ???                ;11111111
F328   FF            ???                ;11111111
F329   FF            ???                ;11111111
F32A   FF            ???                ;11111111
F32B   FF            ???                ;11111111
F32C   FF            ???                ;11111111
F32D   FF            ???                ;11111111
F32E   FF            ???                ;11111111
F32F   FF            ???                ;11111111
F330   FF            ???                ;11111111
F331   FF            ???                ;11111111
F332   FF            ???                ;11111111
F333   FF            ???                ;11111111
F334   FF            ???                ;11111111
F335   FF            ???                ;11111111
F336   FF            ???                ;11111111
F337   FF            ???                ;11111111
F338   FF            ???                ;11111111
F339   FF            ???                ;11111111
F33A   FF            ???                ;11111111
F33B   FF            ???                ;11111111
F33C   FF            ???                ;11111111
F33D   FF            ???                ;11111111
F33E   FF            ???                ;11111111
F33F   FF            ???                ;11111111
F340   FF            ???                ;11111111
F341   FF            ???                ;11111111
F342   FF            ???                ;11111111
F343   FF            ???                ;11111111
F344   FF            ???                ;11111111
F345   FF            ???                ;11111111
F346   FF            ???                ;11111111
F347   FF            ???                ;11111111
F348   FF            ???                ;11111111
F349   FF            ???                ;11111111
F34A   FF            ???                ;11111111
F34B   FF            ???                ;11111111
F34C   FF            ???                ;11111111
F34D   FF            ???                ;11111111
F34E   FF            ???                ;11111111
F34F   FF            ???                ;11111111
F350   FF            ???                ;11111111
F351   FF            ???                ;11111111
F352   FF            ???                ;11111111
F353   FF            ???                ;11111111
F354   FF            ???                ;11111111
F355   FF            ???                ;11111111
F356   FF            ???                ;11111111
F357   FF            ???                ;11111111
F358   FF            ???                ;11111111
F359   FF            ???                ;11111111
F35A   FF            ???                ;11111111
F35B   FF            ???                ;11111111
F35C   FF            ???                ;11111111
F35D   FF            ???                ;11111111
F35E   FF            ???                ;11111111
F35F   FF            ???                ;11111111
F360   FF            ???                ;11111111
F361   FF            ???                ;11111111
F362   FF            ???                ;11111111
F363   FF            ???                ;11111111
F364   FF            ???                ;11111111
F365   FF            ???                ;11111111
F366   FF            ???                ;11111111
F367   FF            ???                ;11111111
F368   FF            ???                ;11111111
F369   FF            ???                ;11111111
F36A   FF            ???                ;11111111
F36B   FF            ???                ;11111111
F36C   FF            ???                ;11111111
F36D   FF            ???                ;11111111
F36E   FF            ???                ;11111111
F36F   FF            ???                ;11111111
F370   FF            ???                ;11111111
F371   FF            ???                ;11111111
F372   FF            ???                ;11111111
F373   FF            ???                ;11111111
F374   FF            ???                ;11111111
F375   FF            ???                ;11111111
F376   FF            ???                ;11111111
F377   FF            ???                ;11111111
F378   FF            ???                ;11111111
F379   FF            ???                ;11111111
F37A   FF            ???                ;11111111
F37B   FF            ???                ;11111111
F37C   FF            ???                ;11111111
F37D   FF            ???                ;11111111
F37E   FF            ???                ;11111111
F37F   FF            ???                ;11111111
F380   FF            ???                ;11111111
F381   FF            ???                ;11111111
F382   FF            ???                ;11111111
F383   FF            ???                ;11111111
F384   FF            ???                ;11111111
F385   FF            ???                ;11111111
F386   FF            ???                ;11111111
F387   FF            ???                ;11111111
F388   FF            ???                ;11111111
F389   FF            ???                ;11111111
F38A   FF            ???                ;11111111
F38B   FF            ???                ;11111111
F38C   FF            ???                ;11111111
F38D   FF            ???                ;11111111
F38E   FF            ???                ;11111111
F38F   FF            ???                ;11111111
F390   FF            ???                ;11111111
F391   FF            ???                ;11111111
F392   FF            ???                ;11111111
F393   FF            ???                ;11111111
F394   FF            ???                ;11111111
F395   FF            ???                ;11111111
F396   FF            ???                ;11111111
F397   FF            ???                ;11111111
F398   FF            ???                ;11111111
F399   FF            ???                ;11111111
F39A   FF            ???                ;11111111
F39B   FF            ???                ;11111111
F39C   FF            ???                ;11111111
F39D   FF            ???                ;11111111
F39E   FF            ???                ;11111111
F39F   FF            ???                ;11111111
F3A0   FF            ???                ;11111111
F3A1   FF            ???                ;11111111
F3A2   FF            ???                ;11111111
F3A3   FF            ???                ;11111111
F3A4   FF            ???                ;11111111
F3A5   FF            ???                ;11111111
F3A6   FF            ???                ;11111111
F3A7   FF            ???                ;11111111
F3A8   FF            ???                ;11111111
F3A9   FF            ???                ;11111111
F3AA   FF            ???                ;11111111
F3AB   FF            ???                ;11111111
F3AC   FF            ???                ;11111111
F3AD   FF            ???                ;11111111
F3AE   FF            ???                ;11111111
F3AF   FF            ???                ;11111111
F3B0   FF            ???                ;11111111
F3B1   FF            ???                ;11111111
F3B2   FF            ???                ;11111111
F3B3   FF            ???                ;11111111
F3B4   FF            ???                ;11111111
F3B5   FF            ???                ;11111111
F3B6   FF            ???                ;11111111
F3B7   FF            ???                ;11111111
F3B8   FF            ???                ;11111111
F3B9   FF            ???                ;11111111
F3BA   FF            ???                ;11111111
F3BB   FF            ???                ;11111111
F3BC   FF            ???                ;11111111
F3BD   FF            ???                ;11111111
F3BE   FF            ???                ;11111111
F3BF   FF            ???                ;11111111
F3C0   FF            ???                ;11111111
F3C1   FF            ???                ;11111111
F3C2   FF            ???                ;11111111
F3C3   FF            ???                ;11111111
F3C4   FF            ???                ;11111111
F3C5   FF            ???                ;11111111
F3C6   FF            ???                ;11111111
F3C7   FF            ???                ;11111111
F3C8   FF            ???                ;11111111
F3C9   FF            ???                ;11111111
F3CA   FF            ???                ;11111111
F3CB   FF            ???                ;11111111
F3CC   FF            ???                ;11111111
F3CD   FF            ???                ;11111111
F3CE   FF            ???                ;11111111
F3CF   FF            ???                ;11111111
F3D0   FF            ???                ;11111111
F3D1   FF            ???                ;11111111
F3D2   FF            ???                ;11111111
F3D3   FF            ???                ;11111111
F3D4   FF            ???                ;11111111
F3D5   FF            ???                ;11111111
F3D6   FF            ???                ;11111111
F3D7   FF            ???                ;11111111
F3D8   FF            ???                ;11111111
F3D9   FF            ???                ;11111111
F3DA   FF            ???                ;11111111
F3DB   FF            ???                ;11111111
F3DC   FF            ???                ;11111111
F3DD   FF            ???                ;11111111
F3DE   FF            ???                ;11111111
F3DF   FF            ???                ;11111111
F3E0   FF            ???                ;11111111
F3E1   FF            ???                ;11111111
F3E2   FF            ???                ;11111111
F3E3   FF            ???                ;11111111
F3E4   FF            ???                ;11111111
F3E5   FF            ???                ;11111111
F3E6   FF            ???                ;11111111
F3E7   FF            ???                ;11111111
F3E8   FF            ???                ;11111111
F3E9   FF            ???                ;11111111
F3EA   FF            ???                ;11111111
F3EB   FF            ???                ;11111111
F3EC   FF            ???                ;11111111
F3ED   FF            ???                ;11111111
F3EE   FF            ???                ;11111111
F3EF   FF            ???                ;11111111
F3F0   FF            ???                ;11111111
F3F1   FF            ???                ;11111111
F3F2   FF            ???                ;11111111
F3F3   FF            ???                ;11111111
F3F4   FF            ???                ;11111111
F3F5   FF            ???                ;11111111
F3F6   FF            ???                ;11111111
F3F7   FF            ???                ;11111111
F3F8   FF            ???                ;11111111
F3F9   FF            ???                ;11111111
F3FA   FF            ???                ;11111111
F3FB   FF            ???                ;11111111
F3FC   FF            ???                ;11111111
F3FD   FF            ???                ;11111111
F3FE   FF            ???                ;11111111
F3FF   FF            ???                ;11111111
F400   FF            ???                ;11111111
F401   FF            ???                ;11111111
F402   FF            ???                ;11111111
F403   FF            ???                ;11111111
F404   FF            ???                ;11111111
F405   FF            ???                ;11111111
F406   FF            ???                ;11111111
F407   FF            ???                ;11111111
F408   FF            ???                ;11111111
F409   FF            ???                ;11111111
F40A   FF            ???                ;11111111
F40B   FF            ???                ;11111111
F40C   FF            ???                ;11111111
F40D   FF            ???                ;11111111
F40E   FF            ???                ;11111111
F40F   FF            ???                ;11111111
F410   FF            ???                ;11111111
F411   FF            ???                ;11111111
F412   FF            ???                ;11111111
F413   FF            ???                ;11111111
F414   FF            ???                ;11111111
F415   FF            ???                ;11111111
F416   FF            ???                ;11111111
F417   FF            ???                ;11111111
F418   FF            ???                ;11111111
F419   FF            ???                ;11111111
F41A   FF            ???                ;11111111
F41B   FF            ???                ;11111111
F41C   FF            ???                ;11111111
F41D   FF            ???                ;11111111
F41E   FF            ???                ;11111111
F41F   FF            ???                ;11111111
F420   FF            ???                ;11111111
F421   FF            ???                ;11111111
F422   FF            ???                ;11111111
F423   FF            ???                ;11111111
F424   FF            ???                ;11111111
F425   FF            ???                ;11111111
F426   FF            ???                ;11111111
F427   FF            ???                ;11111111
F428   FF            ???                ;11111111
F429   FF            ???                ;11111111
F42A   FF            ???                ;11111111
F42B   FF            ???                ;11111111
F42C   FF            ???                ;11111111
F42D   FF            ???                ;11111111
F42E   FF            ???                ;11111111
F42F   FF            ???                ;11111111
F430   FF            ???                ;11111111
F431   FF            ???                ;11111111
F432   FF            ???                ;11111111
F433   FF            ???                ;11111111
F434   FF            ???                ;11111111
F435   FF            ???                ;11111111
F436   FF            ???                ;11111111
F437   FF            ???                ;11111111
F438   FF            ???                ;11111111
F439   FF            ???                ;11111111
F43A   FF            ???                ;11111111
F43B   FF            ???                ;11111111
F43C   FF            ???                ;11111111
F43D   FF            ???                ;11111111
F43E   FF            ???                ;11111111
F43F   FF            ???                ;11111111
F440   FF            ???                ;11111111
F441   FF            ???                ;11111111
F442   FF            ???                ;11111111
F443   FF            ???                ;11111111
F444   FF            ???                ;11111111
F445   FF            ???                ;11111111
F446   FF            ???                ;11111111
F447   FF            ???                ;11111111
F448   FF            ???                ;11111111
F449   FF            ???                ;11111111
F44A   FF            ???                ;11111111
F44B   FF            ???                ;11111111
F44C   FF            ???                ;11111111
F44D   FF            ???                ;11111111
F44E   FF            ???                ;11111111
F44F   FF            ???                ;11111111
F450   FF            ???                ;11111111
F451   FF            ???                ;11111111
F452   FF            ???                ;11111111
F453   FF            ???                ;11111111
F454   FF            ???                ;11111111
F455   FF            ???                ;11111111
F456   FF            ???                ;11111111
F457   FF            ???                ;11111111
F458   FF            ???                ;11111111
F459   FF            ???                ;11111111
F45A   FF            ???                ;11111111
F45B   FF            ???                ;11111111
F45C   FF            ???                ;11111111
F45D   FF            ???                ;11111111
F45E   FF            ???                ;11111111
F45F   FF            ???                ;11111111
F460   FF            ???                ;11111111
F461   FF            ???                ;11111111
F462   FF            ???                ;11111111
F463   FF            ???                ;11111111
F464   FF            ???                ;11111111
F465   FF            ???                ;11111111
F466   FF            ???                ;11111111
F467   FF            ???                ;11111111
F468   FF            ???                ;11111111
F469   FF            ???                ;11111111
F46A   FF            ???                ;11111111
F46B   FF            ???                ;11111111
F46C   FF            ???                ;11111111
F46D   FF            ???                ;11111111
F46E   FF            ???                ;11111111
F46F   FF            ???                ;11111111
F470   FF            ???                ;11111111
F471   FF            ???                ;11111111
F472   FF            ???                ;11111111
F473   FF            ???                ;11111111
F474   FF            ???                ;11111111
F475   FF            ???                ;11111111
F476   FF            ???                ;11111111
F477   FF            ???                ;11111111
F478   FF            ???                ;11111111
F479   FF            ???                ;11111111
F47A   FF            ???                ;11111111
F47B   FF            ???                ;11111111
F47C   FF            ???                ;11111111
F47D   FF            ???                ;11111111
F47E   FF            ???                ;11111111
F47F   FF            ???                ;11111111
F480   FF            ???                ;11111111
F481   FF            ???                ;11111111
F482   FF            ???                ;11111111
F483   FF            ???                ;11111111
F484   FF            ???                ;11111111
F485   FF            ???                ;11111111
F486   FF            ???                ;11111111
F487   FF            ???                ;11111111
F488   FF            ???                ;11111111
F489   FF            ???                ;11111111
F48A   FF            ???                ;11111111
F48B   FF            ???                ;11111111
F48C   FF            ???                ;11111111
F48D   FF            ???                ;11111111
F48E   FF            ???                ;11111111
F48F   FF            ???                ;11111111
F490   FF            ???                ;11111111
F491   FF            ???                ;11111111
F492   FF            ???                ;11111111
F493   FF            ???                ;11111111
F494   FF            ???                ;11111111
F495   FF            ???                ;11111111
F496   FF            ???                ;11111111
F497   FF            ???                ;11111111
F498   FF            ???                ;11111111
F499   FF            ???                ;11111111
F49A   FF            ???                ;11111111
F49B   FF            ???                ;11111111
F49C   FF            ???                ;11111111
F49D   FF            ???                ;11111111
F49E   FF            ???                ;11111111
F49F   FF            ???                ;11111111
F4A0   FF            ???                ;11111111
F4A1   FF            ???                ;11111111
F4A2   FF            ???                ;11111111
F4A3   FF            ???                ;11111111
F4A4   FF            ???                ;11111111
F4A5   FF            ???                ;11111111
F4A6   FF            ???                ;11111111
F4A7   FF            ???                ;11111111
F4A8   FF            ???                ;11111111
F4A9   FF            ???                ;11111111
F4AA   FF            ???                ;11111111
F4AB   FF            ???                ;11111111
F4AC   FF            ???                ;11111111
F4AD   FF            ???                ;11111111
F4AE   FF            ???                ;11111111
F4AF   FF            ???                ;11111111
F4B0   FF            ???                ;11111111
F4B1   FF            ???                ;11111111
F4B2   FF            ???                ;11111111
F4B3   FF            ???                ;11111111
F4B4   FF            ???                ;11111111
F4B5   FF            ???                ;11111111
F4B6   FF            ???                ;11111111
F4B7   FF            ???                ;11111111
F4B8   FF            ???                ;11111111
F4B9   FF            ???                ;11111111
F4BA   FF            ???                ;11111111
F4BB   FF            ???                ;11111111
F4BC   FF            ???                ;11111111
F4BD   FF            ???                ;11111111
F4BE   FF            ???                ;11111111
F4BF   FF            ???                ;11111111
F4C0   FF            ???                ;11111111
F4C1   FF            ???                ;11111111
F4C2   FF            ???                ;11111111
F4C3   FF            ???                ;11111111
F4C4   FF            ???                ;11111111
F4C5   FF            ???                ;11111111
F4C6   FF            ???                ;11111111
F4C7   FF            ???                ;11111111
F4C8   FF            ???                ;11111111
F4C9   FF            ???                ;11111111
F4CA   FF            ???                ;11111111
F4CB   FF            ???                ;11111111
F4CC   FF            ???                ;11111111
F4CD   FF            ???                ;11111111
F4CE   FF            ???                ;11111111
F4CF   FF            ???                ;11111111
F4D0   FF            ???                ;11111111
F4D1   FF            ???                ;11111111
F4D2   FF            ???                ;11111111
F4D3   FF            ???                ;11111111
F4D4   FF            ???                ;11111111
F4D5   FF            ???                ;11111111
F4D6   FF            ???                ;11111111
F4D7   FF            ???                ;11111111
F4D8   FF            ???                ;11111111
F4D9   FF            ???                ;11111111
F4DA   FF            ???                ;11111111
F4DB   FF            ???                ;11111111
F4DC   FF            ???                ;11111111
F4DD   FF            ???                ;11111111
F4DE   FF            ???                ;11111111
F4DF   FF            ???                ;11111111
F4E0   FF            ???                ;11111111
F4E1   FF            ???                ;11111111
F4E2   FF            ???                ;11111111
F4E3   FF            ???                ;11111111
F4E4   FF            ???                ;11111111
F4E5   FF            ???                ;11111111
F4E6   FF            ???                ;11111111
F4E7   FF            ???                ;11111111
F4E8   FF            ???                ;11111111
F4E9   FF            ???                ;11111111
F4EA   FF            ???                ;11111111
F4EB   FF            ???                ;11111111
F4EC   FF            ???                ;11111111
F4ED   FF            ???                ;11111111
F4EE   FF            ???                ;11111111
F4EF   FF            ???                ;11111111
F4F0   FF            ???                ;11111111
F4F1   FF            ???                ;11111111
F4F2   FF            ???                ;11111111
F4F3   FF            ???                ;11111111
F4F4   FF            ???                ;11111111
F4F5   FF            ???                ;11111111
F4F6   FF            ???                ;11111111
F4F7   FF            ???                ;11111111
F4F8   FF            ???                ;11111111
F4F9   FF            ???                ;11111111
F4FA   FF            ???                ;11111111
F4FB   FF            ???                ;11111111
F4FC   FF            ???                ;11111111
F4FD   FF            ???                ;11111111
F4FE   FF            ???                ;11111111
F4FF   FF            ???                ;11111111
F500   FF            ???                ;11111111
F501   FF            ???                ;11111111
F502   FF            ???                ;11111111
F503   FF            ???                ;11111111
F504   FF            ???                ;11111111
F505   FF            ???                ;11111111
F506   FF            ???                ;11111111
F507   FF            ???                ;11111111
F508   FF            ???                ;11111111
F509   FF            ???                ;11111111
F50A   FF            ???                ;11111111
F50B   FF            ???                ;11111111
F50C   FF            ???                ;11111111
F50D   FF            ???                ;11111111
F50E   FF            ???                ;11111111
F50F   FF            ???                ;11111111
F510   FF            ???                ;11111111
F511   FF            ???                ;11111111
F512   FF            ???                ;11111111
F513   FF            ???                ;11111111
F514   FF            ???                ;11111111
F515   FF            ???                ;11111111
F516   FF            ???                ;11111111
F517   FF            ???                ;11111111
F518   FF            ???                ;11111111
F519   FF            ???                ;11111111
F51A   FF            ???                ;11111111
F51B   FF            ???                ;11111111
F51C   FF            ???                ;11111111
F51D   FF            ???                ;11111111
F51E   FF            ???                ;11111111
F51F   FF            ???                ;11111111
F520   FF            ???                ;11111111
F521   FF            ???                ;11111111
F522   FF            ???                ;11111111
F523   FF            ???                ;11111111
F524   FF            ???                ;11111111
F525   FF            ???                ;11111111
F526   FF            ???                ;11111111
F527   FF            ???                ;11111111
F528   FF            ???                ;11111111
F529   FF            ???                ;11111111
F52A   FF            ???                ;11111111
F52B   FF            ???                ;11111111
F52C   FF            ???                ;11111111
F52D   FF            ???                ;11111111
F52E   FF            ???                ;11111111
F52F   FF            ???                ;11111111
F530   FF            ???                ;11111111
F531   FF            ???                ;11111111
F532   FF            ???                ;11111111
F533   FF            ???                ;11111111
F534   FF            ???                ;11111111
F535   FF            ???                ;11111111
F536   FF            ???                ;11111111
F537   FF            ???                ;11111111
F538   FF            ???                ;11111111
F539   FF            ???                ;11111111
F53A   FF            ???                ;11111111
F53B   FF            ???                ;11111111
F53C   FF            ???                ;11111111
F53D   FF            ???                ;11111111
F53E   FF            ???                ;11111111
F53F   FF            ???                ;11111111
F540   FF            ???                ;11111111
F541   FF            ???                ;11111111
F542   FF            ???                ;11111111
F543   FF            ???                ;11111111
F544   FF            ???                ;11111111
F545   FF            ???                ;11111111
F546   FF            ???                ;11111111
F547   FF            ???                ;11111111
F548   FF            ???                ;11111111
F549   FF            ???                ;11111111
F54A   FF            ???                ;11111111
F54B   FF            ???                ;11111111
F54C   FF            ???                ;11111111
F54D   FF            ???                ;11111111
F54E   FF            ???                ;11111111
F54F   FF            ???                ;11111111
F550   FF            ???                ;11111111
F551   FF            ???                ;11111111
F552   FF            ???                ;11111111
F553   FF            ???                ;11111111
F554   FF            ???                ;11111111
F555   FF            ???                ;11111111
F556   FF            ???                ;11111111
F557   FF            ???                ;11111111
F558   FF            ???                ;11111111
F559   FF            ???                ;11111111
F55A   FF            ???                ;11111111
F55B   FF            ???                ;11111111
F55C   FF            ???                ;11111111
F55D   FF            ???                ;11111111
F55E   FF            ???                ;11111111
F55F   FF            ???                ;11111111
F560   FF            ???                ;11111111
F561   FF            ???                ;11111111
F562   FF            ???                ;11111111
F563   FF            ???                ;11111111
F564   FF            ???                ;11111111
F565   FF            ???                ;11111111
F566   FF            ???                ;11111111
F567   FF            ???                ;11111111
F568   FF            ???                ;11111111
F569   FF            ???                ;11111111
F56A   FF            ???                ;11111111
F56B   FF            ???                ;11111111
F56C   FF            ???                ;11111111
F56D   FF            ???                ;11111111
F56E   FF            ???                ;11111111
F56F   FF            ???                ;11111111
F570   FF            ???                ;11111111
F571   FF            ???                ;11111111
F572   FF            ???                ;11111111
F573   FF            ???                ;11111111
F574   FF            ???                ;11111111
F575   FF            ???                ;11111111
F576   FF            ???                ;11111111
F577   FF            ???                ;11111111
F578   FF            ???                ;11111111
F579   FF            ???                ;11111111
F57A   FF            ???                ;11111111
F57B   FF            ???                ;11111111
F57C   FF            ???                ;11111111
F57D   FF            ???                ;11111111
F57E   FF            ???                ;11111111
F57F   FF            ???                ;11111111
F580   FF            ???                ;11111111
F581   FF            ???                ;11111111
F582   FF            ???                ;11111111
F583   FF            ???                ;11111111
F584   FF            ???                ;11111111
F585   FF            ???                ;11111111
F586   FF            ???                ;11111111
F587   FF            ???                ;11111111
F588   FF            ???                ;11111111
F589   FF            ???                ;11111111
F58A   FF            ???                ;11111111
F58B   FF            ???                ;11111111
F58C   FF            ???                ;11111111
F58D   FF            ???                ;11111111
F58E   FF            ???                ;11111111
F58F   FF            ???                ;11111111
F590   FF            ???                ;11111111
F591   FF            ???                ;11111111
F592   FF            ???                ;11111111
F593   FF            ???                ;11111111
F594   FF            ???                ;11111111
F595   FF            ???                ;11111111
F596   FF            ???                ;11111111
F597   FF            ???                ;11111111
F598   FF            ???                ;11111111
F599   FF            ???                ;11111111
F59A   FF            ???                ;11111111
F59B   FF            ???                ;11111111
F59C   FF            ???                ;11111111
F59D   FF            ???                ;11111111
F59E   FF            ???                ;11111111
F59F   FF            ???                ;11111111
F5A0   FF            ???                ;11111111
F5A1   FF            ???                ;11111111
F5A2   FF            ???                ;11111111
F5A3   FF            ???                ;11111111
F5A4   FF            ???                ;11111111
F5A5   FF            ???                ;11111111
F5A6   FF            ???                ;11111111
F5A7   FF            ???                ;11111111
F5A8   FF            ???                ;11111111
F5A9   FF            ???                ;11111111
F5AA   FF            ???                ;11111111
F5AB   FF            ???                ;11111111
F5AC   FF            ???                ;11111111
F5AD   FF            ???                ;11111111
F5AE   FF            ???                ;11111111
F5AF   FF            ???                ;11111111
F5B0   FF            ???                ;11111111
F5B1   FF            ???                ;11111111
F5B2   FF            ???                ;11111111
F5B3   FF            ???                ;11111111
F5B4   FF            ???                ;11111111
F5B5   FF            ???                ;11111111
F5B6   FF            ???                ;11111111
F5B7   FF            ???                ;11111111
F5B8   FF            ???                ;11111111
F5B9   FF            ???                ;11111111
F5BA   FF            ???                ;11111111
F5BB   FF            ???                ;11111111
F5BC   FF            ???                ;11111111
F5BD   FF            ???                ;11111111
F5BE   FF            ???                ;11111111
F5BF   FF            ???                ;11111111
F5C0   FF            ???                ;11111111
F5C1   FF            ???                ;11111111
F5C2   FF            ???                ;11111111
F5C3   FF            ???                ;11111111
F5C4   FF            ???                ;11111111
F5C5   FF            ???                ;11111111
F5C6   FF            ???                ;11111111
F5C7   FF            ???                ;11111111
F5C8   FF            ???                ;11111111
F5C9   FF            ???                ;11111111
F5CA   FF            ???                ;11111111
F5CB   FF            ???                ;11111111
F5CC   FF            ???                ;11111111
F5CD   FF            ???                ;11111111
F5CE   FF            ???                ;11111111
F5CF   FF            ???                ;11111111
F5D0   FF            ???                ;11111111
F5D1   FF            ???                ;11111111
F5D2   FF            ???                ;11111111
F5D3   FF            ???                ;11111111
F5D4   FF            ???                ;11111111
F5D5   FF            ???                ;11111111
F5D6   FF            ???                ;11111111
F5D7   FF            ???                ;11111111
F5D8   FF            ???                ;11111111
F5D9   FF            ???                ;11111111
F5DA   FF            ???                ;11111111
F5DB   FF            ???                ;11111111
F5DC   FF            ???                ;11111111
F5DD   FF            ???                ;11111111
F5DE   FF            ???                ;11111111
F5DF   FF            ???                ;11111111
F5E0   FF            ???                ;11111111
F5E1   FF            ???                ;11111111
F5E2   FF            ???                ;11111111
F5E3   FF            ???                ;11111111
F5E4   FF            ???                ;11111111
F5E5   FF            ???                ;11111111
F5E6   FF            ???                ;11111111
F5E7   FF            ???                ;11111111
F5E8   FF            ???                ;11111111
F5E9   FF            ???                ;11111111
F5EA   FF            ???                ;11111111
F5EB   FF            ???                ;11111111
F5EC   FF            ???                ;11111111
F5ED   FF            ???                ;11111111
F5EE   FF            ???                ;11111111
F5EF   FF            ???                ;11111111
F5F0   FF            ???                ;11111111
F5F1   FF            ???                ;11111111
F5F2   FF            ???                ;11111111
F5F3   FF            ???                ;11111111
F5F4   FF            ???                ;11111111
F5F5   FF            ???                ;11111111
F5F6   FF            ???                ;11111111
F5F7   FF            ???                ;11111111
F5F8   FF            ???                ;11111111
F5F9   FF            ???                ;11111111
F5FA   FF            ???                ;11111111
F5FB   FF            ???                ;11111111
F5FC   FF            ???                ;11111111
F5FD   FF            ???                ;11111111
F5FE   FF            ???                ;11111111
F5FF   FF            ???                ;11111111
F600   FF            ???                ;11111111
F601   FF            ???                ;11111111
F602   FF            ???                ;11111111
F603   FF            ???                ;11111111
F604   FF            ???                ;11111111
F605   FF            ???                ;11111111
F606   FF            ???                ;11111111
F607   FF            ???                ;11111111
F608   FF            ???                ;11111111
F609   FF            ???                ;11111111
F60A   FF            ???                ;11111111
F60B   FF            ???                ;11111111
F60C   FF            ???                ;11111111
F60D   FF            ???                ;11111111
F60E   FF            ???                ;11111111
F60F   FF            ???                ;11111111
F610   FF            ???                ;11111111
F611   FF            ???                ;11111111
F612   FF            ???                ;11111111
F613   FF            ???                ;11111111
F614   FF            ???                ;11111111
F615   FF            ???                ;11111111
F616   FF            ???                ;11111111
F617   FF            ???                ;11111111
F618   FF            ???                ;11111111
F619   FF            ???                ;11111111
F61A   FF            ???                ;11111111
F61B   FF            ???                ;11111111
F61C   FF            ???                ;11111111
F61D   FF            ???                ;11111111
F61E   FF            ???                ;11111111
F61F   FF            ???                ;11111111
F620   FF            ???                ;11111111
F621   FF            ???                ;11111111
F622   FF            ???                ;11111111
F623   FF            ???                ;11111111
F624   FF            ???                ;11111111
F625   FF            ???                ;11111111
F626   FF            ???                ;11111111
F627   FF            ???                ;11111111
F628   FF            ???                ;11111111
F629   FF            ???                ;11111111
F62A   FF            ???                ;11111111
F62B   FF            ???                ;11111111
F62C   FF            ???                ;11111111
F62D   FF            ???                ;11111111
F62E   FF            ???                ;11111111
F62F   FF            ???                ;11111111
F630   FF            ???                ;11111111
F631   FF            ???                ;11111111
F632   FF            ???                ;11111111
F633   FF            ???                ;11111111
F634   FF            ???                ;11111111
F635   FF            ???                ;11111111
F636   FF            ???                ;11111111
F637   FF            ???                ;11111111
F638   FF            ???                ;11111111
F639   FF            ???                ;11111111
F63A   FF            ???                ;11111111
F63B   FF            ???                ;11111111
F63C   FF            ???                ;11111111
F63D   FF            ???                ;11111111
F63E   FF            ???                ;11111111
F63F   FF            ???                ;11111111
F640   FF            ???                ;11111111
F641   FF            ???                ;11111111
F642   FF            ???                ;11111111
F643   FF            ???                ;11111111
F644   FF            ???                ;11111111
F645   FF            ???                ;11111111
F646   FF            ???                ;11111111
F647   FF            ???                ;11111111
F648   FF            ???                ;11111111
F649   FF            ???                ;11111111
F64A   FF            ???                ;11111111
F64B   FF            ???                ;11111111
F64C   FF            ???                ;11111111
F64D   FF            ???                ;11111111
F64E   FF            ???                ;11111111
F64F   FF            ???                ;11111111
F650   FF            ???                ;11111111
F651   FF            ???                ;11111111
F652   FF            ???                ;11111111
F653   FF            ???                ;11111111
F654   FF            ???                ;11111111
F655   FF            ???                ;11111111
F656   FF            ???                ;11111111
F657   FF            ???                ;11111111
F658   FF            ???                ;11111111
F659   FF            ???                ;11111111
F65A   FF            ???                ;11111111
F65B   FF            ???                ;11111111
F65C   FF            ???                ;11111111
F65D   FF            ???                ;11111111
F65E   FF            ???                ;11111111
F65F   FF            ???                ;11111111
F660   FF            ???                ;11111111
F661   FF            ???                ;11111111
F662   FF            ???                ;11111111
F663   FF            ???                ;11111111
F664   FF            ???                ;11111111
F665   FF            ???                ;11111111
F666   FF            ???                ;11111111
F667   FF            ???                ;11111111
F668   FF            ???                ;11111111
F669   FF            ???                ;11111111
F66A   FF            ???                ;11111111
F66B   FF            ???                ;11111111
F66C   FF            ???                ;11111111
F66D   FF            ???                ;11111111
F66E   FF            ???                ;11111111
F66F   FF            ???                ;11111111
F670   FF            ???                ;11111111
F671   FF            ???                ;11111111
F672   FF            ???                ;11111111
F673   FF            ???                ;11111111
F674   FF            ???                ;11111111
F675   FF            ???                ;11111111
F676   FF            ???                ;11111111
F677   FF            ???                ;11111111
F678   FF            ???                ;11111111
F679   FF            ???                ;11111111
F67A   FF            ???                ;11111111
F67B   FF            ???                ;11111111
F67C   FF            ???                ;11111111
F67D   FF            ???                ;11111111
F67E   FF            ???                ;11111111
F67F   FF            ???                ;11111111
F680   FF            ???                ;11111111
F681   FF            ???                ;11111111
F682   FF            ???                ;11111111
F683   FF            ???                ;11111111
F684   FF            ???                ;11111111
F685   FF            ???                ;11111111
F686   FF            ???                ;11111111
F687   FF            ???                ;11111111
F688   FF            ???                ;11111111
F689   FF            ???                ;11111111
F68A   FF            ???                ;11111111
F68B   FF            ???                ;11111111
F68C   FF            ???                ;11111111
F68D   FF            ???                ;11111111
F68E   FF            ???                ;11111111
F68F   FF            ???                ;11111111
F690   FF            ???                ;11111111
F691   FF            ???                ;11111111
F692   FF            ???                ;11111111
F693   FF            ???                ;11111111
F694   FF            ???                ;11111111
F695   FF            ???                ;11111111
F696   FF            ???                ;11111111
F697   FF            ???                ;11111111
F698   FF            ???                ;11111111
F699   FF            ???                ;11111111
F69A   FF            ???                ;11111111
F69B   FF            ???                ;11111111
F69C   FF            ???                ;11111111
F69D   FF            ???                ;11111111
F69E   FF            ???                ;11111111
F69F   FF            ???                ;11111111
F6A0   FF            ???                ;11111111
F6A1   FF            ???                ;11111111
F6A2   FF            ???                ;11111111
F6A3   FF            ???                ;11111111
F6A4   FF            ???                ;11111111
F6A5   FF            ???                ;11111111
F6A6   FF            ???                ;11111111
F6A7   FF            ???                ;11111111
F6A8   FF            ???                ;11111111
F6A9   FF            ???                ;11111111
F6AA   FF            ???                ;11111111
F6AB   FF            ???                ;11111111
F6AC   FF            ???                ;11111111
F6AD   FF            ???                ;11111111
F6AE   FF            ???                ;11111111
F6AF   FF            ???                ;11111111
F6B0   FF            ???                ;11111111
F6B1   FF            ???                ;11111111
F6B2   FF            ???                ;11111111
F6B3   FF            ???                ;11111111
F6B4   FF            ???                ;11111111
F6B5   FF            ???                ;11111111
F6B6   FF            ???                ;11111111
F6B7   FF            ???                ;11111111
F6B8   FF            ???                ;11111111
F6B9   FF            ???                ;11111111
F6BA   FF            ???                ;11111111
F6BB   FF            ???                ;11111111
F6BC   FF            ???                ;11111111
F6BD   FF            ???                ;11111111
F6BE   FF            ???                ;11111111
F6BF   FF            ???                ;11111111
F6C0   FF            ???                ;11111111
F6C1   FF            ???                ;11111111
F6C2   FF            ???                ;11111111
F6C3   FF            ???                ;11111111
F6C4   FF            ???                ;11111111
F6C5   FF            ???                ;11111111
F6C6   FF            ???                ;11111111
F6C7   FF            ???                ;11111111
F6C8   FF            ???                ;11111111
F6C9   FF            ???                ;11111111
F6CA   FF            ???                ;11111111
F6CB   FF            ???                ;11111111
F6CC   FF            ???                ;11111111
F6CD   FF            ???                ;11111111
F6CE   FF            ???                ;11111111
F6CF   FF            ???                ;11111111
F6D0   FF            ???                ;11111111
F6D1   FF            ???                ;11111111
F6D2   FF            ???                ;11111111
F6D3   FF            ???                ;11111111
F6D4   FF            ???                ;11111111
F6D5   FF            ???                ;11111111
F6D6   FF            ???                ;11111111
F6D7   FF            ???                ;11111111
F6D8   FF            ???                ;11111111
F6D9   FF            ???                ;11111111
F6DA   FF            ???                ;11111111
F6DB   FF            ???                ;11111111
F6DC   FF            ???                ;11111111
F6DD   FF            ???                ;11111111
F6DE   FF            ???                ;11111111
F6DF   FF            ???                ;11111111
F6E0   FF            ???                ;11111111
F6E1   FF            ???                ;11111111
F6E2   FF            ???                ;11111111
F6E3   FF            ???                ;11111111
F6E4   FF            ???                ;11111111
F6E5   FF            ???                ;11111111
F6E6   FF            ???                ;11111111
F6E7   FF            ???                ;11111111
F6E8   FF            ???                ;11111111
F6E9   FF            ???                ;11111111
F6EA   FF            ???                ;11111111
F6EB   FF            ???                ;11111111
F6EC   FF            ???                ;11111111
F6ED   FF            ???                ;11111111
F6EE   FF            ???                ;11111111
F6EF   FF            ???                ;11111111
F6F0   FF            ???                ;11111111
F6F1   FF            ???                ;11111111
F6F2   FF            ???                ;11111111
F6F3   FF            ???                ;11111111
F6F4   FF            ???                ;11111111
F6F5   FF            ???                ;11111111
F6F6   FF            ???                ;11111111
F6F7   FF            ???                ;11111111
F6F8   FF            ???                ;11111111
F6F9   FF            ???                ;11111111
F6FA   FF            ???                ;11111111
F6FB   FF            ???                ;11111111
F6FC   FF            ???                ;11111111
F6FD   FF            ???                ;11111111
F6FE   FF            ???                ;11111111
F6FF   FF            ???                ;11111111
F700   FF            ???                ;11111111
F701   FF            ???                ;11111111
F702   FF            ???                ;11111111
F703   FF            ???                ;11111111
F704   FF            ???                ;11111111
F705   FF            ???                ;11111111
F706   FF            ???                ;11111111
F707   FF            ???                ;11111111
F708   FF            ???                ;11111111
F709   FF            ???                ;11111111
F70A   FF            ???                ;11111111
F70B   FF            ???                ;11111111
F70C   FF            ???                ;11111111
F70D   FF            ???                ;11111111
F70E   FF            ???                ;11111111
F70F   FF            ???                ;11111111
F710   FF            ???                ;11111111
F711   FF            ???                ;11111111
F712   FF            ???                ;11111111
F713   FF            ???                ;11111111
F714   FF            ???                ;11111111
F715   FF            ???                ;11111111
F716   FF            ???                ;11111111
F717   FF            ???                ;11111111
F718   FF            ???                ;11111111
F719   FF            ???                ;11111111
F71A   FF            ???                ;11111111
F71B   FF            ???                ;11111111
F71C   FF            ???                ;11111111
F71D   FF            ???                ;11111111
F71E   FF            ???                ;11111111
F71F   FF            ???                ;11111111
F720   FF            ???                ;11111111
F721   FF            ???                ;11111111
F722   FF            ???                ;11111111
F723   FF            ???                ;11111111
F724   FF            ???                ;11111111
F725   FF            ???                ;11111111
F726   FF            ???                ;11111111
F727   FF            ???                ;11111111
F728   FF            ???                ;11111111
F729   FF            ???                ;11111111
F72A   FF            ???                ;11111111
F72B   FF            ???                ;11111111
F72C   FF            ???                ;11111111
F72D   FF            ???                ;11111111
F72E   FF            ???                ;11111111
F72F   FF            ???                ;11111111
F730   FF            ???                ;11111111
F731   FF            ???                ;11111111
F732   FF            ???                ;11111111
F733   FF            ???                ;11111111
F734   FF            ???                ;11111111
F735   FF            ???                ;11111111
F736   FF            ???                ;11111111
F737   FF            ???                ;11111111
F738   FF            ???                ;11111111
F739   FF            ???                ;11111111
F73A   FF            ???                ;11111111
F73B   FF            ???                ;11111111
F73C   FF            ???                ;11111111
F73D   FF            ???                ;11111111
F73E   FF            ???                ;11111111
F73F   FF            ???                ;11111111
F740   FF            ???                ;11111111
F741   FF            ???                ;11111111
F742   FF            ???                ;11111111
F743   FF            ???                ;11111111
F744   FF            ???                ;11111111
F745   FF            ???                ;11111111
F746   FF            ???                ;11111111
F747   FF            ???                ;11111111
F748   FF            ???                ;11111111
F749   FF            ???                ;11111111
F74A   FF            ???                ;11111111
F74B   FF            ???                ;11111111
F74C   FF            ???                ;11111111
F74D   FF            ???                ;11111111
F74E   FF            ???                ;11111111
F74F   FF            ???                ;11111111
F750   FF            ???                ;11111111
F751   FF            ???                ;11111111
F752   FF            ???                ;11111111
F753   FF            ???                ;11111111
F754   FF            ???                ;11111111
F755   FF            ???                ;11111111
F756   FF            ???                ;11111111
F757   FF            ???                ;11111111
F758   FF            ???                ;11111111
F759   FF            ???                ;11111111
F75A   FF            ???                ;11111111
F75B   FF            ???                ;11111111
F75C   FF            ???                ;11111111
F75D   FF            ???                ;11111111
F75E   FF            ???                ;11111111
F75F   FF            ???                ;11111111
F760   FF            ???                ;11111111
F761   FF            ???                ;11111111
F762   FF            ???                ;11111111
F763   FF            ???                ;11111111
F764   FF            ???                ;11111111
F765   FF            ???                ;11111111
F766   FF            ???                ;11111111
F767   FF            ???                ;11111111
F768   FF            ???                ;11111111
F769   FF            ???                ;11111111
F76A   FF            ???                ;11111111
F76B   FF            ???                ;11111111
F76C   FF            ???                ;11111111
F76D   FF            ???                ;11111111
F76E   FF            ???                ;11111111
F76F   FF            ???                ;11111111
F770   FF            ???                ;11111111
F771   FF            ???                ;11111111
F772   FF            ???                ;11111111
F773   FF            ???                ;11111111
F774   FF            ???                ;11111111
F775   FF            ???                ;11111111
F776   FF            ???                ;11111111
F777   FF            ???                ;11111111
F778   FF            ???                ;11111111
F779   FF            ???                ;11111111
F77A   FF            ???                ;11111111
F77B   FF            ???                ;11111111
F77C   FF            ???                ;11111111
F77D   FF            ???                ;11111111
F77E   FF            ???                ;11111111
F77F   FF            ???                ;11111111
F780   FF            ???                ;11111111
F781   FF            ???                ;11111111
F782   FF            ???                ;11111111
F783   FF            ???                ;11111111
F784   FF            ???                ;11111111
F785   FF            ???                ;11111111
F786   FF            ???                ;11111111
F787   FF            ???                ;11111111
F788   FF            ???                ;11111111
F789   FF            ???                ;11111111
F78A   FF            ???                ;11111111
F78B   FF            ???                ;11111111
F78C   FF            ???                ;11111111
F78D   FF            ???                ;11111111
F78E   FF            ???                ;11111111
F78F   FF            ???                ;11111111
F790   FF            ???                ;11111111
F791   FF            ???                ;11111111
F792   FF            ???                ;11111111
F793   FF            ???                ;11111111
F794   FF            ???                ;11111111
F795   FF            ???                ;11111111
F796   FF            ???                ;11111111
F797   FF            ???                ;11111111
F798   FF            ???                ;11111111
F799   FF            ???                ;11111111
F79A   FF            ???                ;11111111
F79B   FF            ???                ;11111111
F79C   FF            ???                ;11111111
F79D   FF            ???                ;11111111
F79E   FF            ???                ;11111111
F79F   FF            ???                ;11111111
F7A0   FF            ???                ;11111111
F7A1   FF            ???                ;11111111
F7A2   FF            ???                ;11111111
F7A3   FF            ???                ;11111111
F7A4   FF            ???                ;11111111
F7A5   FF            ???                ;11111111
F7A6   FF            ???                ;11111111
F7A7   FF            ???                ;11111111
F7A8   FF            ???                ;11111111
F7A9   FF            ???                ;11111111
F7AA   FF            ???                ;11111111
F7AB   FF            ???                ;11111111
F7AC   FF            ???                ;11111111
F7AD   FF            ???                ;11111111
F7AE   FF            ???                ;11111111
F7AF   FF            ???                ;11111111
F7B0   FF            ???                ;11111111
F7B1   FF            ???                ;11111111
F7B2   FF            ???                ;11111111
F7B3   FF            ???                ;11111111
F7B4   FF            ???                ;11111111
F7B5   FF            ???                ;11111111
F7B6   FF            ???                ;11111111
F7B7   FF            ???                ;11111111
F7B8   FF            ???                ;11111111
F7B9   FF            ???                ;11111111
F7BA   FF            ???                ;11111111
F7BB   FF            ???                ;11111111
F7BC   FF            ???                ;11111111
F7BD   FF            ???                ;11111111
F7BE   FF            ???                ;11111111
F7BF   FF            ???                ;11111111
F7C0   FF            ???                ;11111111
F7C1   FF            ???                ;11111111
F7C2   FF            ???                ;11111111
F7C3   FF            ???                ;11111111
F7C4   FF            ???                ;11111111
F7C5   FF            ???                ;11111111
F7C6   FF            ???                ;11111111
F7C7   FF            ???                ;11111111
F7C8   FF            ???                ;11111111
F7C9   FF            ???                ;11111111
F7CA   FF            ???                ;11111111
F7CB   FF            ???                ;11111111
F7CC   FF            ???                ;11111111
F7CD   FF            ???                ;11111111
F7CE   FF            ???                ;11111111
F7CF   FF            ???                ;11111111
F7D0   FF            ???                ;11111111
F7D1   FF            ???                ;11111111
F7D2   FF            ???                ;11111111
F7D3   FF            ???                ;11111111
F7D4   FF            ???                ;11111111
F7D5   FF            ???                ;11111111
F7D6   FF            ???                ;11111111
F7D7   FF            ???                ;11111111
F7D8   FF            ???                ;11111111
F7D9   FF            ???                ;11111111
F7DA   FF            ???                ;11111111
F7DB   FF            ???                ;11111111
F7DC   FF            ???                ;11111111
F7DD   FF            ???                ;11111111
F7DE   FF            ???                ;11111111
F7DF   FF            ???                ;11111111
F7E0   FF            ???                ;11111111
F7E1   FF            ???                ;11111111
F7E2   FF            ???                ;11111111
F7E3   FF            ???                ;11111111
F7E4   FF            ???                ;11111111
F7E5   FF            ???                ;11111111
F7E6   FF            ???                ;11111111
F7E7   FF            ???                ;11111111
F7E8   FF            ???                ;11111111
F7E9   FF            ???                ;11111111
F7EA   FF            ???                ;11111111
F7EB   FF            ???                ;11111111
F7EC   FF            ???                ;11111111
F7ED   FF            ???                ;11111111
F7EE   FF            ???                ;11111111
F7EF   FF            ???                ;11111111
F7F0   FF            ???                ;11111111
F7F1   FF            ???                ;11111111
F7F2   FF            ???                ;11111111
F7F3   FF            ???                ;11111111
F7F4   FF            ???                ;11111111
F7F5   FF            ???                ;11111111
F7F6   FF            ???                ;11111111
F7F7   FF            ???                ;11111111
F7F8   FF            ???                ;11111111
F7F9   FF            ???                ;11111111
F7FA   FF            ???                ;11111111
F7FB   FF            ???                ;11111111
F7FC   FF            ???                ;11111111
F7FD   FF            ???                ;11111111
F7FE   FF            ???                ;11111111
F7FF   FF            ???                ;11111111
F800   FF            ???                ;11111111
F801   FF            ???                ;11111111
F802   FF            ???                ;11111111
F803   FF            ???                ;11111111
F804   FF            ???                ;11111111
F805   FF            ???                ;11111111
F806   FF            ???                ;11111111
F807   FF            ???                ;11111111
F808   FF            ???                ;11111111
F809   FF            ???                ;11111111
F80A   FF            ???                ;11111111
F80B   FF            ???                ;11111111
F80C   FF            ???                ;11111111
F80D   FF            ???                ;11111111
F80E   FF            ???                ;11111111
F80F   FF            ???                ;11111111
F810   FF            ???                ;11111111
F811   FF            ???                ;11111111
F812   FF            ???                ;11111111
F813   FF            ???                ;11111111
F814   FF            ???                ;11111111
F815   FF            ???                ;11111111
F816   FF            ???                ;11111111
F817   FF            ???                ;11111111
F818   FF            ???                ;11111111
F819   FF            ???                ;11111111
F81A   FF            ???                ;11111111
F81B   FF            ???                ;11111111
F81C   FF            ???                ;11111111
F81D   FF            ???                ;11111111
F81E   FF            ???                ;11111111
F81F   FF            ???                ;11111111
F820   FF            ???                ;11111111
F821   FF            ???                ;11111111
F822   FF            ???                ;11111111
F823   FF            ???                ;11111111
F824   FF            ???                ;11111111
F825   FF            ???                ;11111111
F826   FF            ???                ;11111111
F827   FF            ???                ;11111111
F828   FF            ???                ;11111111
F829   FF            ???                ;11111111
F82A   FF            ???                ;11111111
F82B   FF            ???                ;11111111
F82C   FF            ???                ;11111111
F82D   FF            ???                ;11111111
F82E   FF            ???                ;11111111
F82F   FF            ???                ;11111111
F830   FF            ???                ;11111111
F831   FF            ???                ;11111111
F832   FF            ???                ;11111111
F833   FF            ???                ;11111111
F834   FF            ???                ;11111111
F835   FF            ???                ;11111111
F836   FF            ???                ;11111111
F837   FF            ???                ;11111111
F838   FF            ???                ;11111111
F839   FF            ???                ;11111111
F83A   FF            ???                ;11111111
F83B   FF            ???                ;11111111
F83C   FF            ???                ;11111111
F83D   FF            ???                ;11111111
F83E   FF            ???                ;11111111
F83F   FF            ???                ;11111111
F840   FF            ???                ;11111111
F841   FF            ???                ;11111111
F842   FF            ???                ;11111111
F843   FF            ???                ;11111111
F844   FF            ???                ;11111111
F845   FF            ???                ;11111111
F846   FF            ???                ;11111111
F847   FF            ???                ;11111111
F848   FF            ???                ;11111111
F849   FF            ???                ;11111111
F84A   FF            ???                ;11111111
F84B   FF            ???                ;11111111
F84C   FF            ???                ;11111111
F84D   FF            ???                ;11111111
F84E   FF            ???                ;11111111
F84F   FF            ???                ;11111111
F850   FF            ???                ;11111111
F851   FF            ???                ;11111111
F852   FF            ???                ;11111111
F853   FF            ???                ;11111111
F854   FF            ???                ;11111111
F855   FF            ???                ;11111111
F856   FF            ???                ;11111111
F857   FF            ???                ;11111111
F858   FF            ???                ;11111111
F859   FF            ???                ;11111111
F85A   FF            ???                ;11111111
F85B   FF            ???                ;11111111
F85C   FF            ???                ;11111111
F85D   FF            ???                ;11111111
F85E   FF            ???                ;11111111
F85F   FF            ???                ;11111111
F860   FF            ???                ;11111111
F861   FF            ???                ;11111111
F862   FF            ???                ;11111111
F863   FF            ???                ;11111111
F864   FF            ???                ;11111111
F865   FF            ???                ;11111111
F866   FF            ???                ;11111111
F867   FF            ???                ;11111111
F868   FF            ???                ;11111111
F869   FF            ???                ;11111111
F86A   FF            ???                ;11111111
F86B   FF            ???                ;11111111
F86C   FF            ???                ;11111111
F86D   FF            ???                ;11111111
F86E   FF            ???                ;11111111
F86F   FF            ???                ;11111111
F870   FF            ???                ;11111111
F871   FF            ???                ;11111111
F872   FF            ???                ;11111111
F873   FF            ???                ;11111111
F874   FF            ???                ;11111111
F875   FF            ???                ;11111111
F876   FF            ???                ;11111111
F877   FF            ???                ;11111111
F878   FF            ???                ;11111111
F879   FF            ???                ;11111111
F87A   FF            ???                ;11111111
F87B   FF            ???                ;11111111
F87C   FF            ???                ;11111111
F87D   FF            ???                ;11111111
F87E   FF            ???                ;11111111
F87F   FF            ???                ;11111111
F880   FF            ???                ;11111111
F881   FF            ???                ;11111111
F882   FF            ???                ;11111111
F883   FF            ???                ;11111111
F884   FF            ???                ;11111111
F885   FF            ???                ;11111111
F886   FF            ???                ;11111111
F887   FF            ???                ;11111111
F888   FF            ???                ;11111111
F889   FF            ???                ;11111111
F88A   FF            ???                ;11111111
F88B   FF            ???                ;11111111
F88C   FF            ???                ;11111111
F88D   FF            ???                ;11111111
F88E   FF            ???                ;11111111
F88F   FF            ???                ;11111111
F890   FF            ???                ;11111111
F891   FF            ???                ;11111111
F892   FF            ???                ;11111111
F893   FF            ???                ;11111111
F894   FF            ???                ;11111111
F895   FF            ???                ;11111111
F896   FF            ???                ;11111111
F897   FF            ???                ;11111111
F898   FF            ???                ;11111111
F899   FF            ???                ;11111111
F89A   FF            ???                ;11111111
F89B   FF            ???                ;11111111
F89C   FF            ???                ;11111111
F89D   FF            ???                ;11111111
F89E   FF            ???                ;11111111
F89F   FF            ???                ;11111111
F8A0   FF            ???                ;11111111
F8A1   FF            ???                ;11111111
F8A2   FF            ???                ;11111111
F8A3   FF            ???                ;11111111
F8A4   FF            ???                ;11111111
F8A5   FF            ???                ;11111111
F8A6   FF            ???                ;11111111
F8A7   FF            ???                ;11111111
F8A8   FF            ???                ;11111111
F8A9   FF            ???                ;11111111
F8AA   FF            ???                ;11111111
F8AB   FF            ???                ;11111111
F8AC   FF            ???                ;11111111
F8AD   FF            ???                ;11111111
F8AE   FF            ???                ;11111111
F8AF   FF            ???                ;11111111
F8B0   FF            ???                ;11111111
F8B1   FF            ???                ;11111111
F8B2   FF            ???                ;11111111
F8B3   FF            ???                ;11111111
F8B4   FF            ???                ;11111111
F8B5   FF            ???                ;11111111
F8B6   FF            ???                ;11111111
F8B7   FF            ???                ;11111111
F8B8   FF            ???                ;11111111
F8B9   FF            ???                ;11111111
F8BA   FF            ???                ;11111111
F8BB   FF            ???                ;11111111
F8BC   FF            ???                ;11111111
F8BD   FF            ???                ;11111111
F8BE   FF            ???                ;11111111
F8BF   FF            ???                ;11111111
F8C0   FF            ???                ;11111111
F8C1   FF            ???                ;11111111
F8C2   FF            ???                ;11111111
F8C3   FF            ???                ;11111111
F8C4   FF            ???                ;11111111
F8C5   FF            ???                ;11111111
F8C6   FF            ???                ;11111111
F8C7   FF            ???                ;11111111
F8C8   FF            ???                ;11111111
F8C9   FF            ???                ;11111111
F8CA   FF            ???                ;11111111
F8CB   FF            ???                ;11111111
F8CC   FF            ???                ;11111111
F8CD   FF            ???                ;11111111
F8CE   FF            ???                ;11111111
F8CF   FF            ???                ;11111111
F8D0   FF            ???                ;11111111
F8D1   FF            ???                ;11111111
F8D2   FF            ???                ;11111111
F8D3   FF            ???                ;11111111
F8D4   FF            ???                ;11111111
F8D5   FF            ???                ;11111111
F8D6   FF            ???                ;11111111
F8D7   FF            ???                ;11111111
F8D8   FF            ???                ;11111111
F8D9   FF            ???                ;11111111
F8DA   FF            ???                ;11111111
F8DB   FF            ???                ;11111111
F8DC   FF            ???                ;11111111
F8DD   FF            ???                ;11111111
F8DE   FF            ???                ;11111111
F8DF   FF            ???                ;11111111
F8E0   FF            ???                ;11111111
F8E1   FF            ???                ;11111111
F8E2   FF            ???                ;11111111
F8E3   FF            ???                ;11111111
F8E4   FF            ???                ;11111111
F8E5   FF            ???                ;11111111
F8E6   FF            ???                ;11111111
F8E7   FF            ???                ;11111111
F8E8   FF            ???                ;11111111
F8E9   FF            ???                ;11111111
F8EA   FF            ???                ;11111111
F8EB   FF            ???                ;11111111
F8EC   FF            ???                ;11111111
F8ED   FF            ???                ;11111111
F8EE   FF            ???                ;11111111
F8EF   FF            ???                ;11111111
F8F0   FF            ???                ;11111111
F8F1   FF            ???                ;11111111
F8F2   FF            ???                ;11111111
F8F3   FF            ???                ;11111111
F8F4   FF            ???                ;11111111
F8F5   FF            ???                ;11111111
F8F6   FF            ???                ;11111111
F8F7   FF            ???                ;11111111
F8F8   FF            ???                ;11111111
F8F9   FF            ???                ;11111111
F8FA   FF            ???                ;11111111
F8FB   FF            ???                ;11111111
F8FC   FF            ???                ;11111111
F8FD   FF            ???                ;11111111
F8FE   FF            ???                ;11111111
F8FF   FF            ???                ;11111111
F900   FF            ???                ;11111111
F901   FF            ???                ;11111111
F902   FF            ???                ;11111111
F903   FF            ???                ;11111111
F904   FF            ???                ;11111111
F905   FF            ???                ;11111111
F906   FF            ???                ;11111111
F907   FF            ???                ;11111111
F908   FF            ???                ;11111111
F909   FF            ???                ;11111111
F90A   FF            ???                ;11111111
F90B   FF            ???                ;11111111
F90C   FF            ???                ;11111111
F90D   FF            ???                ;11111111
F90E   FF            ???                ;11111111
F90F   FF            ???                ;11111111
F910   FF            ???                ;11111111
F911   FF            ???                ;11111111
F912   FF            ???                ;11111111
F913   FF            ???                ;11111111
F914   FF            ???                ;11111111
F915   FF            ???                ;11111111
F916   FF            ???                ;11111111
F917   FF            ???                ;11111111
F918   FF            ???                ;11111111
F919   FF            ???                ;11111111
F91A   FF            ???                ;11111111
F91B   FF            ???                ;11111111
F91C   FF            ???                ;11111111
F91D   FF            ???                ;11111111
F91E   FF            ???                ;11111111
F91F   FF            ???                ;11111111
F920   FF            ???                ;11111111
F921   FF            ???                ;11111111
F922   FF            ???                ;11111111
F923   FF            ???                ;11111111
F924   FF            ???                ;11111111
F925   FF            ???                ;11111111
F926   FF            ???                ;11111111
F927   FF            ???                ;11111111
F928   FF            ???                ;11111111
F929   FF            ???                ;11111111
F92A   FF            ???                ;11111111
F92B   FF            ???                ;11111111
F92C   FF            ???                ;11111111
F92D   FF            ???                ;11111111
F92E   FF            ???                ;11111111
F92F   FF            ???                ;11111111
F930   FF            ???                ;11111111
F931   FF            ???                ;11111111
F932   FF            ???                ;11111111
F933   FF            ???                ;11111111
F934   FF            ???                ;11111111
F935   FF            ???                ;11111111
F936   FF            ???                ;11111111
F937   FF            ???                ;11111111
F938   FF            ???                ;11111111
F939   FF            ???                ;11111111
F93A   FF            ???                ;11111111
F93B   FF            ???                ;11111111
F93C   FF            ???                ;11111111
F93D   FF            ???                ;11111111
F93E   FF            ???                ;11111111
F93F   FF            ???                ;11111111
F940   FF            ???                ;11111111
F941   FF            ???                ;11111111
F942   FF            ???                ;11111111
F943   FF            ???                ;11111111
F944   FF            ???                ;11111111
F945   FF            ???                ;11111111
F946   FF            ???                ;11111111
F947   FF            ???                ;11111111
F948   FF            ???                ;11111111
F949   FF            ???                ;11111111
F94A   FF            ???                ;11111111
F94B   FF            ???                ;11111111
F94C   FF            ???                ;11111111
F94D   FF            ???                ;11111111
F94E   FF            ???                ;11111111
F94F   FF            ???                ;11111111
F950   FF            ???                ;11111111
F951   FF            ???                ;11111111
F952   FF            ???                ;11111111
F953   FF            ???                ;11111111
F954   FF            ???                ;11111111
F955   FF            ???                ;11111111
F956   FF            ???                ;11111111
F957   FF            ???                ;11111111
F958   FF            ???                ;11111111
F959   FF            ???                ;11111111
F95A   FF            ???                ;11111111
F95B   FF            ???                ;11111111
F95C   FF            ???                ;11111111
F95D   FF            ???                ;11111111
F95E   FF            ???                ;11111111
F95F   FF            ???                ;11111111
F960   FF            ???                ;11111111
F961   FF            ???                ;11111111
F962   FF            ???                ;11111111
F963   FF            ???                ;11111111
F964   FF            ???                ;11111111
F965   FF            ???                ;11111111
F966   FF            ???                ;11111111
F967   FF            ???                ;11111111
F968   FF            ???                ;11111111
F969   FF            ???                ;11111111
F96A   FF            ???                ;11111111
F96B   FF            ???                ;11111111
F96C   FF            ???                ;11111111
F96D   FF            ???                ;11111111
F96E   FF            ???                ;11111111
F96F   FF            ???                ;11111111
F970   FF            ???                ;11111111
F971   FF            ???                ;11111111
F972   FF            ???                ;11111111
F973   FF            ???                ;11111111
F974   FF            ???                ;11111111
F975   FF            ???                ;11111111
F976   FF            ???                ;11111111
F977   FF            ???                ;11111111
F978   FF            ???                ;11111111
F979   FF            ???                ;11111111
F97A   FF            ???                ;11111111
F97B   FF            ???                ;11111111
F97C   FF            ???                ;11111111
F97D   FF            ???                ;11111111
F97E   FF            ???                ;11111111
F97F   FF            ???                ;11111111
F980   FF            ???                ;11111111
F981   FF            ???                ;11111111
F982   FF            ???                ;11111111
F983   FF            ???                ;11111111
F984   FF            ???                ;11111111
F985   FF            ???                ;11111111
F986   FF            ???                ;11111111
F987   FF            ???                ;11111111
F988   FF            ???                ;11111111
F989   FF            ???                ;11111111
F98A   FF            ???                ;11111111
F98B   FF            ???                ;11111111
F98C   FF            ???                ;11111111
F98D   FF            ???                ;11111111
F98E   FF            ???                ;11111111
F98F   FF            ???                ;11111111
F990   FF            ???                ;11111111
F991   FF            ???                ;11111111
F992   FF            ???                ;11111111
F993   FF            ???                ;11111111
F994   FF            ???                ;11111111
F995   FF            ???                ;11111111
F996   FF            ???                ;11111111
F997   FF            ???                ;11111111
F998   FF            ???                ;11111111
F999   FF            ???                ;11111111
F99A   FF            ???                ;11111111
F99B   FF            ???                ;11111111
F99C   FF            ???                ;11111111
F99D   FF            ???                ;11111111
F99E   FF            ???                ;11111111
F99F   FF            ???                ;11111111
F9A0   FF            ???                ;11111111
F9A1   FF            ???                ;11111111
F9A2   FF            ???                ;11111111
F9A3   FF            ???                ;11111111
F9A4   FF            ???                ;11111111
F9A5   FF            ???                ;11111111
F9A6   FF            ???                ;11111111
F9A7   FF            ???                ;11111111
F9A8   FF            ???                ;11111111
F9A9   FF            ???                ;11111111
F9AA   FF            ???                ;11111111
F9AB   FF            ???                ;11111111
F9AC   FF            ???                ;11111111
F9AD   FF            ???                ;11111111
F9AE   FF            ???                ;11111111
F9AF   FF            ???                ;11111111
F9B0   FF            ???                ;11111111
F9B1   FF            ???                ;11111111
F9B2   FF            ???                ;11111111
F9B3   FF            ???                ;11111111
F9B4   FF            ???                ;11111111
F9B5   FF            ???                ;11111111
F9B6   FF            ???                ;11111111
F9B7   FF            ???                ;11111111
F9B8   FF            ???                ;11111111
F9B9   FF            ???                ;11111111
F9BA   FF            ???                ;11111111
F9BB   FF            ???                ;11111111
F9BC   FF            ???                ;11111111
F9BD   FF            ???                ;11111111
F9BE   FF            ???                ;11111111
F9BF   FF            ???                ;11111111
F9C0   FF            ???                ;11111111
F9C1   FF            ???                ;11111111
F9C2   FF            ???                ;11111111
F9C3   FF            ???                ;11111111
F9C4   FF            ???                ;11111111
F9C5   FF            ???                ;11111111
F9C6   FF            ???                ;11111111
F9C7   FF            ???                ;11111111
F9C8   FF            ???                ;11111111
F9C9   FF            ???                ;11111111
F9CA   FF            ???                ;11111111
F9CB   FF            ???                ;11111111
F9CC   FF            ???                ;11111111
F9CD   FF            ???                ;11111111
F9CE   FF            ???                ;11111111
F9CF   FF            ???                ;11111111
F9D0   FF            ???                ;11111111
F9D1   FF            ???                ;11111111
F9D2   FF            ???                ;11111111
F9D3   FF            ???                ;11111111
F9D4   FF            ???                ;11111111
F9D5   FF            ???                ;11111111
F9D6   FF            ???                ;11111111
F9D7   FF            ???                ;11111111
F9D8   FF            ???                ;11111111
F9D9   FF            ???                ;11111111
F9DA   FF            ???                ;11111111
F9DB   FF            ???                ;11111111
F9DC   FF            ???                ;11111111
F9DD   FF            ???                ;11111111
F9DE   FF            ???                ;11111111
F9DF   FF            ???                ;11111111
F9E0   FF            ???                ;11111111
F9E1   FF            ???                ;11111111
F9E2   FF            ???                ;11111111
F9E3   FF            ???                ;11111111
F9E4   FF            ???                ;11111111
F9E5   FF            ???                ;11111111
F9E6   FF            ???                ;11111111
F9E7   FF            ???                ;11111111
F9E8   FF            ???                ;11111111
F9E9   FF            ???                ;11111111
F9EA   FF            ???                ;11111111
F9EB   FF            ???                ;11111111
F9EC   FF            ???                ;11111111
F9ED   FF            ???                ;11111111
F9EE   FF            ???                ;11111111
F9EF   FF            ???                ;11111111
F9F0   FF            ???                ;11111111
F9F1   FF            ???                ;11111111
F9F2   FF            ???                ;11111111
F9F3   FF            ???                ;11111111
F9F4   FF            ???                ;11111111
F9F5   FF            ???                ;11111111
F9F6   FF            ???                ;11111111
F9F7   FF            ???                ;11111111
F9F8   FF            ???                ;11111111
F9F9   FF            ???                ;11111111
F9FA   FF            ???                ;11111111
F9FB   FF            ???                ;11111111
F9FC   FF            ???                ;11111111
F9FD   FF            ???                ;11111111
F9FE   FF            ???                ;11111111
F9FF   FF            ???                ;11111111
FA00   FF            ???                ;11111111
FA01   FF            ???                ;11111111
FA02   FF            ???                ;11111111
FA03   FF            ???                ;11111111
FA04   FF            ???                ;11111111
FA05   FF            ???                ;11111111
FA06   FF            ???                ;11111111
FA07   FF            ???                ;11111111
FA08   FF            ???                ;11111111
FA09   FF            ???                ;11111111
FA0A   FF            ???                ;11111111
FA0B   FF            ???                ;11111111
FA0C   FF            ???                ;11111111
FA0D   FF            ???                ;11111111
FA0E   FF            ???                ;11111111
FA0F   FF            ???                ;11111111
FA10   FF            ???                ;11111111
FA11   FF            ???                ;11111111
FA12   FF            ???                ;11111111
FA13   FF            ???                ;11111111
FA14   FF            ???                ;11111111
FA15   FF            ???                ;11111111
FA16   FF            ???                ;11111111
FA17   FF            ???                ;11111111
FA18   FF            ???                ;11111111
FA19   FF            ???                ;11111111
FA1A   FF            ???                ;11111111
FA1B   FF            ???                ;11111111
FA1C   FF            ???                ;11111111
FA1D   FF            ???                ;11111111
FA1E   FF            ???                ;11111111
FA1F   FF            ???                ;11111111
FA20   FF            ???                ;11111111
FA21   FF            ???                ;11111111
FA22   FF            ???                ;11111111
FA23   FF            ???                ;11111111
FA24   FF            ???                ;11111111
FA25   FF            ???                ;11111111
FA26   FF            ???                ;11111111
FA27   FF            ???                ;11111111
FA28   FF            ???                ;11111111
FA29   FF            ???                ;11111111
FA2A   FF            ???                ;11111111
FA2B   FF            ???                ;11111111
FA2C   FF            ???                ;11111111
FA2D   FF            ???                ;11111111
FA2E   FF            ???                ;11111111
FA2F   FF            ???                ;11111111
FA30   FF            ???                ;11111111
FA31   FF            ???                ;11111111
FA32   FF            ???                ;11111111
FA33   FF            ???                ;11111111
FA34   FF            ???                ;11111111
FA35   FF            ???                ;11111111
FA36   FF            ???                ;11111111
FA37   FF            ???                ;11111111
FA38   FF            ???                ;11111111
FA39   FF            ???                ;11111111
FA3A   FF            ???                ;11111111
FA3B   FF            ???                ;11111111
FA3C   FF            ???                ;11111111
FA3D   FF            ???                ;11111111
FA3E   FF            ???                ;11111111
FA3F   FF            ???                ;11111111
FA40   FF            ???                ;11111111
FA41   FF            ???                ;11111111
FA42   FF            ???                ;11111111
FA43   FF            ???                ;11111111
FA44   FF            ???                ;11111111
FA45   FF            ???                ;11111111
FA46   FF            ???                ;11111111
FA47   FF            ???                ;11111111
FA48   FF            ???                ;11111111
FA49   FF            ???                ;11111111
FA4A   FF            ???                ;11111111
FA4B   FF            ???                ;11111111
FA4C   FF            ???                ;11111111
FA4D   FF            ???                ;11111111
FA4E   FF            ???                ;11111111
FA4F   FF            ???                ;11111111
FA50   FF            ???                ;11111111
FA51   FF            ???                ;11111111
FA52   FF            ???                ;11111111
FA53   FF            ???                ;11111111
FA54   FF            ???                ;11111111
FA55   FF            ???                ;11111111
FA56   FF            ???                ;11111111
FA57   FF            ???                ;11111111
FA58   FF            ???                ;11111111
FA59   FF            ???                ;11111111
FA5A   FF            ???                ;11111111
FA5B   FF            ???                ;11111111
FA5C   FF            ???                ;11111111
FA5D   FF            ???                ;11111111
FA5E   FF            ???                ;11111111
FA5F   FF            ???                ;11111111
FA60   FF            ???                ;11111111
FA61   FF            ???                ;11111111
FA62   FF            ???                ;11111111
FA63   FF            ???                ;11111111
FA64   FF            ???                ;11111111
FA65   FF            ???                ;11111111
FA66   FF            ???                ;11111111
FA67   FF            ???                ;11111111
FA68   FF            ???                ;11111111
FA69   FF            ???                ;11111111
FA6A   FF            ???                ;11111111
FA6B   FF            ???                ;11111111
FA6C   FF            ???                ;11111111
FA6D   FF            ???                ;11111111
FA6E   FF            ???                ;11111111
FA6F   FF            ???                ;11111111
FA70   FF            ???                ;11111111
FA71   FF            ???                ;11111111
FA72   FF            ???                ;11111111
FA73   FF            ???                ;11111111
FA74   FF            ???                ;11111111
FA75   FF            ???                ;11111111
FA76   FF            ???                ;11111111
FA77   FF            ???                ;11111111
FA78   FF            ???                ;11111111
FA79   FF            ???                ;11111111
FA7A   FF            ???                ;11111111
FA7B   FF            ???                ;11111111
FA7C   FF            ???                ;11111111
FA7D   FF            ???                ;11111111
FA7E   FF            ???                ;11111111
FA7F   FF            ???                ;11111111
FA80   FF            ???                ;11111111
FA81   FF            ???                ;11111111
FA82   FF            ???                ;11111111
FA83   FF            ???                ;11111111
FA84   FF            ???                ;11111111
FA85   FF            ???                ;11111111
FA86   FF            ???                ;11111111
FA87   FF            ???                ;11111111
FA88   FF            ???                ;11111111
FA89   FF            ???                ;11111111
FA8A   FF            ???                ;11111111
FA8B   FF            ???                ;11111111
FA8C   FF            ???                ;11111111
FA8D   FF            ???                ;11111111
FA8E   FF            ???                ;11111111
FA8F   FF            ???                ;11111111
FA90   FF            ???                ;11111111
FA91   FF            ???                ;11111111
FA92   FF            ???                ;11111111
FA93   FF            ???                ;11111111
FA94   FF            ???                ;11111111
FA95   FF            ???                ;11111111
FA96   FF            ???                ;11111111
FA97   FF            ???                ;11111111
FA98   FF            ???                ;11111111
FA99   FF            ???                ;11111111
FA9A   FF            ???                ;11111111
FA9B   FF            ???                ;11111111
FA9C   FF            ???                ;11111111
FA9D   FF            ???                ;11111111
FA9E   FF            ???                ;11111111
FA9F   FF            ???                ;11111111
FAA0   FF            ???                ;11111111
FAA1   FF            ???                ;11111111
FAA2   FF            ???                ;11111111
FAA3   FF            ???                ;11111111
FAA4   FF            ???                ;11111111
FAA5   FF            ???                ;11111111
FAA6   FF            ???                ;11111111
FAA7   FF            ???                ;11111111
FAA8   FF            ???                ;11111111
FAA9   FF            ???                ;11111111
FAAA   FF            ???                ;11111111
FAAB   FF            ???                ;11111111
FAAC   FF            ???                ;11111111
FAAD   FF            ???                ;11111111
FAAE   FF            ???                ;11111111
FAAF   FF            ???                ;11111111
FAB0   FF            ???                ;11111111
FAB1   FF            ???                ;11111111
FAB2   FF            ???                ;11111111
FAB3   FF            ???                ;11111111
FAB4   FF            ???                ;11111111
FAB5   FF            ???                ;11111111
FAB6   FF            ???                ;11111111
FAB7   FF            ???                ;11111111
FAB8   FF            ???                ;11111111
FAB9   FF            ???                ;11111111
FABA   FF            ???                ;11111111
FABB   FF            ???                ;11111111
FABC   FF            ???                ;11111111
FABD   FF            ???                ;11111111
FABE   FF            ???                ;11111111
FABF   FF            ???                ;11111111
FAC0   FF            ???                ;11111111
FAC1   FF            ???                ;11111111
FAC2   FF            ???                ;11111111
FAC3   FF            ???                ;11111111
FAC4   FF            ???                ;11111111
FAC5   FF            ???                ;11111111
FAC6   FF            ???                ;11111111
FAC7   FF            ???                ;11111111
FAC8   FF            ???                ;11111111
FAC9   FF            ???                ;11111111
FACA   FF            ???                ;11111111
FACB   FF            ???                ;11111111
FACC   FF            ???                ;11111111
FACD   FF            ???                ;11111111
FACE   FF            ???                ;11111111
FACF   FF            ???                ;11111111
FAD0   FF            ???                ;11111111
FAD1   FF            ???                ;11111111
FAD2   FF            ???                ;11111111
FAD3   FF            ???                ;11111111
FAD4   FF            ???                ;11111111
FAD5   FF            ???                ;11111111
FAD6   FF            ???                ;11111111
FAD7   FF            ???                ;11111111
FAD8   FF            ???                ;11111111
FAD9   FF            ???                ;11111111
FADA   FF            ???                ;11111111
FADB   FF            ???                ;11111111
FADC   FF            ???                ;11111111
FADD   FF            ???                ;11111111
FADE   FF            ???                ;11111111
FADF   FF            ???                ;11111111
FAE0   FF            ???                ;11111111
FAE1   FF            ???                ;11111111
FAE2   FF            ???                ;11111111
FAE3   FF            ???                ;11111111
FAE4   FF            ???                ;11111111
FAE5   FF            ???                ;11111111
FAE6   FF            ???                ;11111111
FAE7   FF            ???                ;11111111
FAE8   FF            ???                ;11111111
FAE9   FF            ???                ;11111111
FAEA   FF            ???                ;11111111
FAEB   FF            ???                ;11111111
FAEC   FF            ???                ;11111111
FAED   FF            ???                ;11111111
FAEE   FF            ???                ;11111111
FAEF   FF            ???                ;11111111
FAF0   FF            ???                ;11111111
FAF1   FF            ???                ;11111111
FAF2   FF            ???                ;11111111
FAF3   FF            ???                ;11111111
FAF4   FF            ???                ;11111111
FAF5   FF            ???                ;11111111
FAF6   FF            ???                ;11111111
FAF7   FF            ???                ;11111111
FAF8   FF            ???                ;11111111
FAF9   FF            ???                ;11111111
FAFA   FF            ???                ;11111111
FAFB   FF            ???                ;11111111
FAFC   FF            ???                ;11111111
FAFD   FF            ???                ;11111111
FAFE   FF            ???                ;11111111
FAFF   FF            ???                ;11111111
FB00   FF            ???                ;11111111
FB01   FF            ???                ;11111111
FB02   FF            ???                ;11111111
FB03   FF            ???                ;11111111
FB04   FF            ???                ;11111111
FB05   FF            ???                ;11111111
FB06   FF            ???                ;11111111
FB07   FF            ???                ;11111111
FB08   FF            ???                ;11111111
FB09   FF            ???                ;11111111
FB0A   FF            ???                ;11111111
FB0B   FF            ???                ;11111111
FB0C   FF            ???                ;11111111
FB0D   FF            ???                ;11111111
FB0E   FF            ???                ;11111111
FB0F   FF            ???                ;11111111
FB10   FF            ???                ;11111111
FB11   FF            ???                ;11111111
FB12   FF            ???                ;11111111
FB13   FF            ???                ;11111111
FB14   FF            ???                ;11111111
FB15   FF            ???                ;11111111
FB16   FF            ???                ;11111111
FB17   FF            ???                ;11111111
FB18   FF            ???                ;11111111
FB19   FF            ???                ;11111111
FB1A   FF            ???                ;11111111
FB1B   FF            ???                ;11111111
FB1C   FF            ???                ;11111111
FB1D   FF            ???                ;11111111
FB1E   FF            ???                ;11111111
FB1F   FF            ???                ;11111111
FB20   FF            ???                ;11111111
FB21   FF            ???                ;11111111
FB22   FF            ???                ;11111111
FB23   FF            ???                ;11111111
FB24   FF            ???                ;11111111
FB25   FF            ???                ;11111111
FB26   FF            ???                ;11111111
FB27   FF            ???                ;11111111
FB28   FF            ???                ;11111111
FB29   FF            ???                ;11111111
FB2A   FF            ???                ;11111111
FB2B   FF            ???                ;11111111
FB2C   FF            ???                ;11111111
FB2D   FF            ???                ;11111111
FB2E   FF            ???                ;11111111
FB2F   FF            ???                ;11111111
FB30   FF            ???                ;11111111
FB31   FF            ???                ;11111111
FB32   FF            ???                ;11111111
FB33   FF            ???                ;11111111
FB34   FF            ???                ;11111111
FB35   FF            ???                ;11111111
FB36   FF            ???                ;11111111
FB37   FF            ???                ;11111111
FB38   FF            ???                ;11111111
FB39   FF            ???                ;11111111
FB3A   FF            ???                ;11111111
FB3B   FF            ???                ;11111111
FB3C   FF            ???                ;11111111
FB3D   FF            ???                ;11111111
FB3E   FF            ???                ;11111111
FB3F   FF            ???                ;11111111
FB40   FF            ???                ;11111111
FB41   FF            ???                ;11111111
FB42   FF            ???                ;11111111
FB43   FF            ???                ;11111111
FB44   FF            ???                ;11111111
FB45   FF            ???                ;11111111
FB46   FF            ???                ;11111111
FB47   FF            ???                ;11111111
FB48   FF            ???                ;11111111
FB49   FF            ???                ;11111111
FB4A   FF            ???                ;11111111
FB4B   FF            ???                ;11111111
FB4C   FF            ???                ;11111111
FB4D   FF            ???                ;11111111
FB4E   FF            ???                ;11111111
FB4F   FF            ???                ;11111111
FB50   FF            ???                ;11111111
FB51   FF            ???                ;11111111
FB52   FF            ???                ;11111111
FB53   FF            ???                ;11111111
FB54   FF            ???                ;11111111
FB55   FF            ???                ;11111111
FB56   FF            ???                ;11111111
FB57   FF            ???                ;11111111
FB58   FF            ???                ;11111111
FB59   FF            ???                ;11111111
FB5A   FF            ???                ;11111111
FB5B   FF            ???                ;11111111
FB5C   FF            ???                ;11111111
FB5D   FF            ???                ;11111111
FB5E   FF            ???                ;11111111
FB5F   FF            ???                ;11111111
FB60   FF            ???                ;11111111
FB61   FF            ???                ;11111111
FB62   FF            ???                ;11111111
FB63   FF            ???                ;11111111
FB64   FF            ???                ;11111111
FB65   FF            ???                ;11111111
FB66   FF            ???                ;11111111
FB67   FF            ???                ;11111111
FB68   FF            ???                ;11111111
FB69   FF            ???                ;11111111
FB6A   FF            ???                ;11111111
FB6B   FF            ???                ;11111111
FB6C   FF            ???                ;11111111
FB6D   FF            ???                ;11111111
FB6E   FF            ???                ;11111111
FB6F   FF            ???                ;11111111
FB70   FF            ???                ;11111111
FB71   FF            ???                ;11111111
FB72   FF            ???                ;11111111
FB73   FF            ???                ;11111111
FB74   FF            ???                ;11111111
FB75   FF            ???                ;11111111
FB76   FF            ???                ;11111111
FB77   FF            ???                ;11111111
FB78   FF            ???                ;11111111
FB79   FF            ???                ;11111111
FB7A   FF            ???                ;11111111
FB7B   FF            ???                ;11111111
FB7C   FF            ???                ;11111111
FB7D   FF            ???                ;11111111
FB7E   FF            ???                ;11111111
FB7F   FF            ???                ;11111111
FB80   FF            ???                ;11111111
FB81   FF            ???                ;11111111
FB82   FF            ???                ;11111111
FB83   FF            ???                ;11111111
FB84   FF            ???                ;11111111
FB85   FF            ???                ;11111111
FB86   FF            ???                ;11111111
FB87   FF            ???                ;11111111
FB88   FF            ???                ;11111111
FB89   FF            ???                ;11111111
FB8A   FF            ???                ;11111111
FB8B   FF            ???                ;11111111
FB8C   FF            ???                ;11111111
FB8D   FF            ???                ;11111111
FB8E   FF            ???                ;11111111
FB8F   FF            ???                ;11111111
FB90   FF            ???                ;11111111
FB91   FF            ???                ;11111111
FB92   FF            ???                ;11111111
FB93   FF            ???                ;11111111
FB94   FF            ???                ;11111111
FB95   FF            ???                ;11111111
FB96   FF            ???                ;11111111
FB97   FF            ???                ;11111111
FB98   FF            ???                ;11111111
FB99   FF            ???                ;11111111
FB9A   FF            ???                ;11111111
FB9B   FF            ???                ;11111111
FB9C   FF            ???                ;11111111
FB9D   FF            ???                ;11111111
FB9E   FF            ???                ;11111111
FB9F   FF            ???                ;11111111
FBA0   FF            ???                ;11111111
FBA1   FF            ???                ;11111111
FBA2   FF            ???                ;11111111
FBA3   FF            ???                ;11111111
FBA4   FF            ???                ;11111111
FBA5   FF            ???                ;11111111
FBA6   FF            ???                ;11111111
FBA7   FF            ???                ;11111111
FBA8   FF            ???                ;11111111
FBA9   FF            ???                ;11111111
FBAA   FF            ???                ;11111111
FBAB   FF            ???                ;11111111
FBAC   FF            ???                ;11111111
FBAD   FF            ???                ;11111111
FBAE   FF            ???                ;11111111
FBAF   FF            ???                ;11111111
FBB0   FF            ???                ;11111111
FBB1   FF            ???                ;11111111
FBB2   FF            ???                ;11111111
FBB3   FF            ???                ;11111111
FBB4   FF            ???                ;11111111
FBB5   FF            ???                ;11111111
FBB6   FF            ???                ;11111111
FBB7   FF            ???                ;11111111
FBB8   FF            ???                ;11111111
FBB9   FF            ???                ;11111111
FBBA   FF            ???                ;11111111
FBBB   FF            ???                ;11111111
FBBC   FF            ???                ;11111111
FBBD   FF            ???                ;11111111
FBBE   FF            ???                ;11111111
FBBF   FF            ???                ;11111111
FBC0   FF            ???                ;11111111
FBC1   FF            ???                ;11111111
FBC2   FF            ???                ;11111111
FBC3   FF            ???                ;11111111
FBC4   FF            ???                ;11111111
FBC5   FF            ???                ;11111111
FBC6   FF            ???                ;11111111
FBC7   FF            ???                ;11111111
FBC8   FF            ???                ;11111111
FBC9   FF            ???                ;11111111
FBCA   FF            ???                ;11111111
FBCB   FF            ???                ;11111111
FBCC   FF            ???                ;11111111
FBCD   FF            ???                ;11111111
FBCE   FF            ???                ;11111111
FBCF   FF            ???                ;11111111
FBD0   FF            ???                ;11111111
FBD1   FF            ???                ;11111111
FBD2   FF            ???                ;11111111
FBD3   FF            ???                ;11111111
FBD4   FF            ???                ;11111111
FBD5   FF            ???                ;11111111
FBD6   FF            ???                ;11111111
FBD7   FF            ???                ;11111111
FBD8   FF            ???                ;11111111
FBD9   FF            ???                ;11111111
FBDA   FF            ???                ;11111111
FBDB   FF            ???                ;11111111
FBDC   FF            ???                ;11111111
FBDD   FF            ???                ;11111111
FBDE   FF            ???                ;11111111
FBDF   FF            ???                ;11111111
FBE0   FF            ???                ;11111111
FBE1   FF            ???                ;11111111
FBE2   FF            ???                ;11111111
FBE3   FF            ???                ;11111111
FBE4   FF            ???                ;11111111
FBE5   FF            ???                ;11111111
FBE6   FF            ???                ;11111111
FBE7   FF            ???                ;11111111
FBE8   FF            ???                ;11111111
FBE9   FF            ???                ;11111111
FBEA   FF            ???                ;11111111
FBEB   FF            ???                ;11111111
FBEC   FF            ???                ;11111111
FBED   FF            ???                ;11111111
FBEE   FF            ???                ;11111111
FBEF   FF            ???                ;11111111
FBF0   FF            ???                ;11111111
FBF1   FF            ???                ;11111111
FBF2   FF            ???                ;11111111
FBF3   FF            ???                ;11111111
FBF4   FF            ???                ;11111111
FBF5   FF            ???                ;11111111
FBF6   FF            ???                ;11111111
FBF7   FF            ???                ;11111111
FBF8   FF            ???                ;11111111
FBF9   FF            ???                ;11111111
FBFA   FF            ???                ;11111111
FBFB   FF            ???                ;11111111
FBFC   FF            ???                ;11111111
FBFD   FF            ???                ;11111111
FBFE   FF            ???                ;11111111
FBFF   FF            ???                ;11111111
FC00   FF            ???                ;11111111
FC01   FF            ???                ;11111111
FC02   FF            ???                ;11111111
FC03   FF            ???                ;11111111
FC04   FF            ???                ;11111111
FC05   FF            ???                ;11111111
FC06   FF            ???                ;11111111
FC07   FF            ???                ;11111111
FC08   FF            ???                ;11111111
FC09   FF            ???                ;11111111
FC0A   FF            ???                ;11111111
FC0B   FF            ???                ;11111111
FC0C   FF            ???                ;11111111
FC0D   FF            ???                ;11111111
FC0E   FF            ???                ;11111111
FC0F   FF            ???                ;11111111
FC10   FF            ???                ;11111111
FC11   FF            ???                ;11111111
FC12   FF            ???                ;11111111
FC13   FF            ???                ;11111111
FC14   FF            ???                ;11111111
FC15   FF            ???                ;11111111
FC16   FF            ???                ;11111111
FC17   FF            ???                ;11111111
FC18   FF            ???                ;11111111
FC19   FF            ???                ;11111111
FC1A   FF            ???                ;11111111
FC1B   FF            ???                ;11111111
FC1C   FF            ???                ;11111111
FC1D   FF            ???                ;11111111
FC1E   FF            ???                ;11111111
FC1F   FF            ???                ;11111111
FC20   FF            ???                ;11111111
FC21   FF            ???                ;11111111
FC22   FF            ???                ;11111111
FC23   FF            ???                ;11111111
FC24   FF            ???                ;11111111
FC25   FF            ???                ;11111111
FC26   FF            ???                ;11111111
FC27   FF            ???                ;11111111
FC28   FF            ???                ;11111111
FC29   FF            ???                ;11111111
FC2A   FF            ???                ;11111111
FC2B   FF            ???                ;11111111
FC2C   FF            ???                ;11111111
FC2D   FF            ???                ;11111111
FC2E   FF            ???                ;11111111
FC2F   FF            ???                ;11111111
FC30   FF            ???                ;11111111
FC31   FF            ???                ;11111111
FC32   FF            ???                ;11111111
FC33   FF            ???                ;11111111
FC34   FF            ???                ;11111111
FC35   FF            ???                ;11111111
FC36   FF            ???                ;11111111
FC37   FF            ???                ;11111111
FC38   FF            ???                ;11111111
FC39   FF            ???                ;11111111
FC3A   FF            ???                ;11111111
FC3B   FF            ???                ;11111111
FC3C   FF            ???                ;11111111
FC3D   FF            ???                ;11111111
FC3E   FF            ???                ;11111111
FC3F   FF            ???                ;11111111
FC40   FF            ???                ;11111111
FC41   FF            ???                ;11111111
FC42   FF            ???                ;11111111
FC43   FF            ???                ;11111111
FC44   FF            ???                ;11111111
FC45   FF            ???                ;11111111
FC46   FF            ???                ;11111111
FC47   FF            ???                ;11111111
FC48   FF            ???                ;11111111
FC49   FF            ???                ;11111111
FC4A   FF            ???                ;11111111
FC4B   FF            ???                ;11111111
FC4C   FF            ???                ;11111111
FC4D   FF            ???                ;11111111
FC4E   FF            ???                ;11111111
FC4F   FF            ???                ;11111111
FC50   FF            ???                ;11111111
FC51   FF            ???                ;11111111
FC52   FF            ???                ;11111111
FC53   FF            ???                ;11111111
FC54   FF            ???                ;11111111
FC55   FF            ???                ;11111111
FC56   FF            ???                ;11111111
FC57   FF            ???                ;11111111
FC58   FF            ???                ;11111111
FC59   FF            ???                ;11111111
FC5A   FF            ???                ;11111111
FC5B   FF            ???                ;11111111
FC5C   FF            ???                ;11111111
FC5D   FF            ???                ;11111111
FC5E   FF            ???                ;11111111
FC5F   FF            ???                ;11111111
FC60   FF            ???                ;11111111
FC61   FF            ???                ;11111111
FC62   FF            ???                ;11111111
FC63   FF            ???                ;11111111
FC64   FF            ???                ;11111111
FC65   FF            ???                ;11111111
FC66   FF            ???                ;11111111
FC67   FF            ???                ;11111111
FC68   FF            ???                ;11111111
FC69   FF            ???                ;11111111
FC6A   FF            ???                ;11111111
FC6B   FF            ???                ;11111111
FC6C   FF            ???                ;11111111
FC6D   FF            ???                ;11111111
FC6E   FF            ???                ;11111111
FC6F   FF            ???                ;11111111
FC70   FF            ???                ;11111111
FC71   FF            ???                ;11111111
FC72   FF            ???                ;11111111
FC73   FF            ???                ;11111111
FC74   FF            ???                ;11111111
FC75   FF            ???                ;11111111
FC76   FF            ???                ;11111111
FC77   FF            ???                ;11111111
FC78   FF            ???                ;11111111
FC79   FF            ???                ;11111111
FC7A   FF            ???                ;11111111
FC7B   FF            ???                ;11111111
FC7C   FF            ???                ;11111111
FC7D   FF            ???                ;11111111
FC7E   FF            ???                ;11111111
FC7F   FF            ???                ;11111111
FC80   FF            ???                ;11111111
FC81   FF            ???                ;11111111
FC82   FF            ???                ;11111111
FC83   FF            ???                ;11111111
FC84   FF            ???                ;11111111
FC85   FF            ???                ;11111111
FC86   FF            ???                ;11111111
FC87   FF            ???                ;11111111
FC88   FF            ???                ;11111111
FC89   FF            ???                ;11111111
FC8A   FF            ???                ;11111111
FC8B   FF            ???                ;11111111
FC8C   FF            ???                ;11111111
FC8D   FF            ???                ;11111111
FC8E   FF            ???                ;11111111
FC8F   FF            ???                ;11111111
FC90   FF            ???                ;11111111
FC91   FF            ???                ;11111111
FC92   FF            ???                ;11111111
FC93   FF            ???                ;11111111
FC94   FF            ???                ;11111111
FC95   FF            ???                ;11111111
FC96   FF            ???                ;11111111
FC97   FF            ???                ;11111111
FC98   FF            ???                ;11111111
FC99   FF            ???                ;11111111
FC9A   FF            ???                ;11111111
FC9B   FF            ???                ;11111111
FC9C   FF            ???                ;11111111
FC9D   FF            ???                ;11111111
FC9E   FF            ???                ;11111111
FC9F   FF            ???                ;11111111
FCA0   FF            ???                ;11111111
FCA1   FF            ???                ;11111111
FCA2   FF            ???                ;11111111
FCA3   FF            ???                ;11111111
FCA4   FF            ???                ;11111111
FCA5   FF            ???                ;11111111
FCA6   FF            ???                ;11111111
FCA7   FF            ???                ;11111111
FCA8   FF            ???                ;11111111
FCA9   FF            ???                ;11111111
FCAA   FF            ???                ;11111111
FCAB   FF            ???                ;11111111
FCAC   FF            ???                ;11111111
FCAD   FF            ???                ;11111111
FCAE   FF            ???                ;11111111
FCAF   FF            ???                ;11111111
FCB0   FF            ???                ;11111111
FCB1   FF            ???                ;11111111
FCB2   FF            ???                ;11111111
FCB3   FF            ???                ;11111111
FCB4   FF            ???                ;11111111
FCB5   FF            ???                ;11111111
FCB6   FF            ???                ;11111111
FCB7   FF            ???                ;11111111
FCB8   FF            ???                ;11111111
FCB9   FF            ???                ;11111111
FCBA   FF            ???                ;11111111
FCBB   FF            ???                ;11111111
FCBC   FF            ???                ;11111111
FCBD   FF            ???                ;11111111
FCBE   FF            ???                ;11111111
FCBF   FF            ???                ;11111111
FCC0   FF            ???                ;11111111
FCC1   FF            ???                ;11111111
FCC2   FF            ???                ;11111111
FCC3   FF            ???                ;11111111
FCC4   FF            ???                ;11111111
FCC5   FF            ???                ;11111111
FCC6   FF            ???                ;11111111
FCC7   FF            ???                ;11111111
FCC8   FF            ???                ;11111111
FCC9   FF            ???                ;11111111
FCCA   FF            ???                ;11111111
FCCB   FF            ???                ;11111111
FCCC   FF            ???                ;11111111
FCCD   FF            ???                ;11111111
FCCE   FF            ???                ;11111111
FCCF   FF            ???                ;11111111
FCD0   FF            ???                ;11111111
FCD1   FF            ???                ;11111111
FCD2   FF            ???                ;11111111
FCD3   FF            ???                ;11111111
FCD4   FF            ???                ;11111111
FCD5   FF            ???                ;11111111
FCD6   FF            ???                ;11111111
FCD7   FF            ???                ;11111111
FCD8   FF            ???                ;11111111
FCD9   FF            ???                ;11111111
FCDA   FF            ???                ;11111111
FCDB   FF            ???                ;11111111
FCDC   FF            ???                ;11111111
FCDD   FF            ???                ;11111111
FCDE   FF            ???                ;11111111
FCDF   FF            ???                ;11111111
FCE0   FF            ???                ;11111111
FCE1   FF            ???                ;11111111
FCE2   FF            ???                ;11111111
FCE3   FF            ???                ;11111111
FCE4   FF            ???                ;11111111
FCE5   FF            ???                ;11111111
FCE6   FF            ???                ;11111111
FCE7   FF            ???                ;11111111
FCE8   FF            ???                ;11111111
FCE9   FF            ???                ;11111111
FCEA   FF            ???                ;11111111
FCEB   FF            ???                ;11111111
FCEC   FF            ???                ;11111111
FCED   FF            ???                ;11111111
FCEE   FF            ???                ;11111111
FCEF   FF            ???                ;11111111
FCF0   FF            ???                ;11111111
FCF1   FF            ???                ;11111111
FCF2   FF            ???                ;11111111
FCF3   FF            ???                ;11111111
FCF4   FF            ???                ;11111111
FCF5   FF            ???                ;11111111
FCF6   FF            ???                ;11111111
FCF7   FF            ???                ;11111111
FCF8   FF            ???                ;11111111
FCF9   FF            ???                ;11111111
FCFA   FF            ???                ;11111111
FCFB   FF            ???                ;11111111
FCFC   FF            ???                ;11111111
FCFD   FF            ???                ;11111111
FCFE   FF            ???                ;11111111
FCFF   FF            ???                ;11111111
FD00   FF            ???                ;11111111
FD01   FF            ???                ;11111111
FD02   FF            ???                ;11111111
FD03   FF            ???                ;11111111
FD04   FF            ???                ;11111111
FD05   FF            ???                ;11111111
FD06   FF            ???                ;11111111
FD07   FF            ???                ;11111111
FD08   FF            ???                ;11111111
FD09   FF            ???                ;11111111
FD0A   FF            ???                ;11111111
FD0B   FF            ???                ;11111111
FD0C   FF            ???                ;11111111
FD0D   FF            ???                ;11111111
FD0E   FF            ???                ;11111111
FD0F   FF            ???                ;11111111
FD10   FF            ???                ;11111111
FD11   FF            ???                ;11111111
FD12   FF            ???                ;11111111
FD13   FF            ???                ;11111111
FD14   FF            ???                ;11111111
FD15   FF            ???                ;11111111
FD16   FF            ???                ;11111111
FD17   FF            ???                ;11111111
FD18   FF            ???                ;11111111
FD19   FF            ???                ;11111111
FD1A   FF            ???                ;11111111
FD1B   FF            ???                ;11111111
FD1C   FF            ???                ;11111111
FD1D   FF            ???                ;11111111
FD1E   FF            ???                ;11111111
FD1F   FF            ???                ;11111111
FD20   FF            ???                ;11111111
FD21   FF            ???                ;11111111
FD22   FF            ???                ;11111111
FD23   FF            ???                ;11111111
FD24   FF            ???                ;11111111
FD25   FF            ???                ;11111111
FD26   FF            ???                ;11111111
FD27   FF            ???                ;11111111
FD28   FF            ???                ;11111111
FD29   FF            ???                ;11111111
FD2A   FF            ???                ;11111111
FD2B   FF            ???                ;11111111
FD2C   FF            ???                ;11111111
FD2D   FF            ???                ;11111111
FD2E   FF            ???                ;11111111
FD2F   FF            ???                ;11111111
FD30   FF            ???                ;11111111
FD31   FF            ???                ;11111111
FD32   FF            ???                ;11111111
FD33   FF            ???                ;11111111
FD34   FF            ???                ;11111111
FD35   FF            ???                ;11111111
FD36   FF            ???                ;11111111
FD37   FF            ???                ;11111111
FD38   FF            ???                ;11111111
FD39   FF            ???                ;11111111
FD3A   FF            ???                ;11111111
FD3B   FF            ???                ;11111111
FD3C   FF            ???                ;11111111
FD3D   FF            ???                ;11111111
FD3E   FF            ???                ;11111111
FD3F   FF            ???                ;11111111
FD40   FF            ???                ;11111111
FD41   FF            ???                ;11111111
FD42   FF            ???                ;11111111
FD43   FF            ???                ;11111111
FD44   FF            ???                ;11111111
FD45   FF            ???                ;11111111
FD46   FF            ???                ;11111111
FD47   FF            ???                ;11111111
FD48   FF            ???                ;11111111
FD49   FF            ???                ;11111111
FD4A   FF            ???                ;11111111
FD4B   FF            ???                ;11111111
FD4C   FF            ???                ;11111111
FD4D   FF            ???                ;11111111
FD4E   FF            ???                ;11111111
FD4F   FF            ???                ;11111111
FD50   FF            ???                ;11111111
FD51   FF            ???                ;11111111
FD52   FF            ???                ;11111111
FD53   FF            ???                ;11111111
FD54   FF            ???                ;11111111
FD55   FF            ???                ;11111111
FD56   FF            ???                ;11111111
FD57   FF            ???                ;11111111
FD58   FF            ???                ;11111111
FD59   FF            ???                ;11111111
FD5A   FF            ???                ;11111111
FD5B   FF            ???                ;11111111
FD5C   FF            ???                ;11111111
FD5D   FF            ???                ;11111111
FD5E   FF            ???                ;11111111
FD5F   FF            ???                ;11111111
FD60   FF            ???                ;11111111
FD61   FF            ???                ;11111111
FD62   FF            ???                ;11111111
FD63   FF            ???                ;11111111
FD64   FF            ???                ;11111111
FD65   FF            ???                ;11111111
FD66   FF            ???                ;11111111
FD67   FF            ???                ;11111111
FD68   FF            ???                ;11111111
FD69   FF            ???                ;11111111
FD6A   FF            ???                ;11111111
FD6B   FF            ???                ;11111111
FD6C   FF            ???                ;11111111
FD6D   FF            ???                ;11111111
FD6E   FF            ???                ;11111111
FD6F   FF            ???                ;11111111
FD70   FF            ???                ;11111111
FD71   FF            ???                ;11111111
FD72   FF            ???                ;11111111
FD73   FF            ???                ;11111111
FD74   FF            ???                ;11111111
FD75   FF            ???                ;11111111
FD76   FF            ???                ;11111111
FD77   FF            ???                ;11111111
FD78   FF            ???                ;11111111
FD79   FF            ???                ;11111111
FD7A   FF            ???                ;11111111
FD7B   FF            ???                ;11111111
FD7C   FF            ???                ;11111111
FD7D   FF            ???                ;11111111
FD7E   FF            ???                ;11111111
FD7F   FF            ???                ;11111111
FD80   FF            ???                ;11111111
FD81   FF            ???                ;11111111
FD82   FF            ???                ;11111111
FD83   FF            ???                ;11111111
FD84   FF            ???                ;11111111
FD85   FF            ???                ;11111111
FD86   FF            ???                ;11111111
FD87   FF            ???                ;11111111
FD88   FF            ???                ;11111111
FD89   FF            ???                ;11111111
FD8A   FF            ???                ;11111111
FD8B   FF            ???                ;11111111
FD8C   FF            ???                ;11111111
FD8D   FF            ???                ;11111111
FD8E   FF            ???                ;11111111
FD8F   FF            ???                ;11111111
FD90   FF            ???                ;11111111
FD91   FF            ???                ;11111111
FD92   FF            ???                ;11111111
FD93   FF            ???                ;11111111
FD94   FF            ???                ;11111111
FD95   FF            ???                ;11111111
FD96   FF            ???                ;11111111
FD97   FF            ???                ;11111111
FD98   FF            ???                ;11111111
FD99   FF            ???                ;11111111
FD9A   FF            ???                ;11111111
FD9B   FF            ???                ;11111111
FD9C   FF            ???                ;11111111
FD9D   FF            ???                ;11111111
FD9E   FF            ???                ;11111111
FD9F   FF            ???                ;11111111
FDA0   FF            ???                ;11111111
FDA1   FF            ???                ;11111111
FDA2   FF            ???                ;11111111
FDA3   FF            ???                ;11111111
FDA4   FF            ???                ;11111111
FDA5   FF            ???                ;11111111
FDA6   FF            ???                ;11111111
FDA7   FF            ???                ;11111111
FDA8   FF            ???                ;11111111
FDA9   FF            ???                ;11111111
FDAA   FF            ???                ;11111111
FDAB   FF            ???                ;11111111
FDAC   FF            ???                ;11111111
FDAD   FF            ???                ;11111111
FDAE   FF            ???                ;11111111
FDAF   FF            ???                ;11111111
FDB0   FF            ???                ;11111111
FDB1   FF            ???                ;11111111
FDB2   FF            ???                ;11111111
FDB3   FF            ???                ;11111111
FDB4   FF            ???                ;11111111
FDB5   FF            ???                ;11111111
FDB6   FF            ???                ;11111111
FDB7   FF            ???                ;11111111
FDB8   FF            ???                ;11111111
FDB9   FF            ???                ;11111111
FDBA   FF            ???                ;11111111
FDBB   FF            ???                ;11111111
FDBC   FF            ???                ;11111111
FDBD   FF            ???                ;11111111
FDBE   FF            ???                ;11111111
FDBF   FF            ???                ;11111111
FDC0   FF            ???                ;11111111
FDC1   FF            ???                ;11111111
FDC2   FF            ???                ;11111111
FDC3   FF            ???                ;11111111
FDC4   FF            ???                ;11111111
FDC5   FF            ???                ;11111111
FDC6   FF            ???                ;11111111
FDC7   FF            ???                ;11111111
FDC8   FF            ???                ;11111111
FDC9   FF            ???                ;11111111
FDCA   FF            ???                ;11111111
FDCB   FF            ???                ;11111111
FDCC   FF            ???                ;11111111
FDCD   FF            ???                ;11111111
FDCE   FF            ???                ;11111111
FDCF   FF            ???                ;11111111
FDD0   FF            ???                ;11111111
FDD1   FF            ???                ;11111111
FDD2   FF            ???                ;11111111
FDD3   FF            ???                ;11111111
FDD4   FF            ???                ;11111111
FDD5   FF            ???                ;11111111
FDD6   FF            ???                ;11111111
FDD7   FF            ???                ;11111111
FDD8   FF            ???                ;11111111
FDD9   FF            ???                ;11111111
FDDA   FF            ???                ;11111111
FDDB   FF            ???                ;11111111
FDDC   FF            ???                ;11111111
FDDD   FF            ???                ;11111111
FDDE   FF            ???                ;11111111
FDDF   FF            ???                ;11111111
FDE0   FF            ???                ;11111111
FDE1   FF            ???                ;11111111
FDE2   FF            ???                ;11111111
FDE3   FF            ???                ;11111111
FDE4   FF            ???                ;11111111
FDE5   FF            ???                ;11111111
FDE6   FF            ???                ;11111111
FDE7   FF            ???                ;11111111
FDE8   FF            ???                ;11111111
FDE9   FF            ???                ;11111111
FDEA   FF            ???                ;11111111
FDEB   FF            ???                ;11111111
FDEC   FF            ???                ;11111111
FDED   FF            ???                ;11111111
FDEE   FF            ???                ;11111111
FDEF   FF            ???                ;11111111
FDF0   FF            ???                ;11111111
FDF1   FF            ???                ;11111111
FDF2   FF            ???                ;11111111
FDF3   FF            ???                ;11111111
FDF4   FF            ???                ;11111111
FDF5   FF            ???                ;11111111
FDF6   FF            ???                ;11111111
FDF7   FF            ???                ;11111111
FDF8   FF            ???                ;11111111
FDF9   FF            ???                ;11111111
FDFA   FF            ???                ;11111111
FDFB   FF            ???                ;11111111
FDFC   FF            ???                ;11111111
FDFD   FF            ???                ;11111111
FDFE   FF            ???                ;11111111
FDFF   FF            ???                ;11111111
FE00   FF            ???                ;11111111
FE01   FF            ???                ;11111111
FE02   FF            ???                ;11111111
FE03   FF            ???                ;11111111
FE04   FF            ???                ;11111111
FE05   FF            ???                ;11111111
FE06   FF            ???                ;11111111
FE07   FF            ???                ;11111111
FE08   FF            ???                ;11111111
FE09   FF            ???                ;11111111
FE0A   FF            ???                ;11111111
FE0B   FF            ???                ;11111111
FE0C   FF            ???                ;11111111
FE0D   FF            ???                ;11111111
FE0E   FF            ???                ;11111111
FE0F   FF            ???                ;11111111
FE10   FF            ???                ;11111111
FE11   FF            ???                ;11111111
FE12   FF            ???                ;11111111
FE13   FF            ???                ;11111111
FE14   FF            ???                ;11111111
FE15   FF            ???                ;11111111
FE16   FF            ???                ;11111111
FE17   FF            ???                ;11111111
FE18   FF            ???                ;11111111
FE19   FF            ???                ;11111111
FE1A   FF            ???                ;11111111
FE1B   FF            ???                ;11111111
FE1C   FF            ???                ;11111111
FE1D   FF            ???                ;11111111
FE1E   FF            ???                ;11111111
FE1F   FF            ???                ;11111111
FE20   FF            ???                ;11111111
FE21   FF            ???                ;11111111
FE22   FF            ???                ;11111111
FE23   FF            ???                ;11111111
FE24   FF            ???                ;11111111
FE25   FF            ???                ;11111111
FE26   FF            ???                ;11111111
FE27   FF            ???                ;11111111
FE28   FF            ???                ;11111111
FE29   FF            ???                ;11111111
FE2A   FF            ???                ;11111111
FE2B   FF            ???                ;11111111
FE2C   FF            ???                ;11111111
FE2D   FF            ???                ;11111111
FE2E   FF            ???                ;11111111
FE2F   FF            ???                ;11111111
FE30   FF            ???                ;11111111
FE31   FF            ???                ;11111111
FE32   FF            ???                ;11111111
FE33   FF            ???                ;11111111
FE34   FF            ???                ;11111111
FE35   FF            ???                ;11111111
FE36   FF            ???                ;11111111
FE37   FF            ???                ;11111111
FE38   FF            ???                ;11111111
FE39   FF            ???                ;11111111
FE3A   FF            ???                ;11111111
FE3B   FF            ???                ;11111111
FE3C   FF            ???                ;11111111
FE3D   FF            ???                ;11111111
FE3E   FF            ???                ;11111111
FE3F   FF            ???                ;11111111
FE40   FF            ???                ;11111111
FE41   FF            ???                ;11111111
FE42   FF            ???                ;11111111
FE43   FF            ???                ;11111111
FE44   FF            ???                ;11111111
FE45   FF            ???                ;11111111
FE46   FF            ???                ;11111111
FE47   FF            ???                ;11111111
FE48   FF            ???                ;11111111
FE49   FF            ???                ;11111111
FE4A   FF            ???                ;11111111
FE4B   FF            ???                ;11111111
FE4C   FF            ???                ;11111111
FE4D   FF            ???                ;11111111
FE4E   FF            ???                ;11111111
FE4F   FF            ???                ;11111111
FE50   FF            ???                ;11111111
FE51   FF            ???                ;11111111
FE52   FF            ???                ;11111111
FE53   FF            ???                ;11111111
FE54   FF            ???                ;11111111
FE55   FF            ???                ;11111111
FE56   FF            ???                ;11111111
FE57   FF            ???                ;11111111
FE58   FF            ???                ;11111111
FE59   FF            ???                ;11111111
FE5A   FF            ???                ;11111111
FE5B   FF            ???                ;11111111
FE5C   FF            ???                ;11111111
FE5D   FF            ???                ;11111111
FE5E   FF            ???                ;11111111
FE5F   FF            ???                ;11111111
FE60   FF            ???                ;11111111
FE61   FF            ???                ;11111111
FE62   FF            ???                ;11111111
FE63   FF            ???                ;11111111
FE64   FF            ???                ;11111111
FE65   FF            ???                ;11111111
FE66   FF            ???                ;11111111
FE67   FF            ???                ;11111111
FE68   FF            ???                ;11111111
FE69   FF            ???                ;11111111
FE6A   FF            ???                ;11111111
FE6B   FF            ???                ;11111111
FE6C   FF            ???                ;11111111
FE6D   FF            ???                ;11111111
FE6E   FF            ???                ;11111111
FE6F   FF            ???                ;11111111
FE70   FF            ???                ;11111111
FE71   FF            ???                ;11111111
FE72   FF            ???                ;11111111
FE73   FF            ???                ;11111111
FE74   FF            ???                ;11111111
FE75   FF            ???                ;11111111
FE76   FF            ???                ;11111111
FE77   FF            ???                ;11111111
FE78   FF            ???                ;11111111
FE79   FF            ???                ;11111111
FE7A   FF            ???                ;11111111
FE7B   FF            ???                ;11111111
FE7C   FF            ???                ;11111111
FE7D   FF            ???                ;11111111
FE7E   FF            ???                ;11111111
FE7F   FF            ???                ;11111111
FE80   FF            ???                ;11111111
FE81   FF            ???                ;11111111
FE82   FF            ???                ;11111111
FE83   FF            ???                ;11111111
FE84   FF            ???                ;11111111
FE85   FF            ???                ;11111111
FE86   FF            ???                ;11111111
FE87   FF            ???                ;11111111
FE88   FF            ???                ;11111111
FE89   FF            ???                ;11111111
FE8A   FF            ???                ;11111111
FE8B   FF            ???                ;11111111
FE8C   FF            ???                ;11111111
FE8D   FF            ???                ;11111111
FE8E   FF            ???                ;11111111
FE8F   FF            ???                ;11111111
FE90   FF            ???                ;11111111
FE91   FF            ???                ;11111111
FE92   FF            ???                ;11111111
FE93   FF            ???                ;11111111
FE94   FF            ???                ;11111111
FE95   FF            ???                ;11111111
FE96   FF            ???                ;11111111
FE97   FF            ???                ;11111111
FE98   FF            ???                ;11111111
FE99   FF            ???                ;11111111
FE9A   FF            ???                ;11111111
FE9B   FF            ???                ;11111111
FE9C   FF            ???                ;11111111
FE9D   FF            ???                ;11111111
FE9E   FF            ???                ;11111111
FE9F   FF            ???                ;11111111
FEA0   FF            ???                ;11111111
FEA1   FF            ???                ;11111111
FEA2   FF            ???                ;11111111
FEA3   FF            ???                ;11111111
FEA4   FF            ???                ;11111111
FEA5   FF            ???                ;11111111
FEA6   FF            ???                ;11111111
FEA7   FF            ???                ;11111111
FEA8   FF            ???                ;11111111
FEA9   FF            ???                ;11111111
FEAA   FF            ???                ;11111111
FEAB   FF            ???                ;11111111
FEAC   FF            ???                ;11111111
FEAD   FF            ???                ;11111111
FEAE   FF            ???                ;11111111
FEAF   FF            ???                ;11111111
FEB0   FF            ???                ;11111111
FEB1   FF            ???                ;11111111
FEB2   FF            ???                ;11111111
FEB3   FF            ???                ;11111111
FEB4   FF            ???                ;11111111
FEB5   FF            ???                ;11111111
FEB6   FF            ???                ;11111111
FEB7   FF            ???                ;11111111
FEB8   FF            ???                ;11111111
FEB9   FF            ???                ;11111111
FEBA   FF            ???                ;11111111
FEBB   FF            ???                ;11111111
FEBC   FF            ???                ;11111111
FEBD   FF            ???                ;11111111
FEBE   FF            ???                ;11111111
FEBF   FF            ???                ;11111111
FEC0   FF            ???                ;11111111
FEC1   FF            ???                ;11111111
FEC2   FF            ???                ;11111111
FEC3   FF            ???                ;11111111
FEC4   FF            ???                ;11111111
FEC5   FF            ???                ;11111111
FEC6   FF            ???                ;11111111
FEC7   FF            ???                ;11111111
FEC8   FF            ???                ;11111111
FEC9   FF            ???                ;11111111
FECA   FF            ???                ;11111111
FECB   FF            ???                ;11111111
FECC   FF            ???                ;11111111
FECD   FF            ???                ;11111111
FECE   FF            ???                ;11111111
FECF   FF            ???                ;11111111
FED0   FF            ???                ;11111111
FED1   FF            ???                ;11111111
FED2   FF            ???                ;11111111
FED3   FF            ???                ;11111111
FED4   FF            ???                ;11111111
FED5   FF            ???                ;11111111
FED6   FF            ???                ;11111111
FED7   FF            ???                ;11111111
FED8   FF            ???                ;11111111
FED9   FF            ???                ;11111111
FEDA   FF            ???                ;11111111
FEDB   FF            ???                ;11111111
FEDC   FF            ???                ;11111111
FEDD   FF            ???                ;11111111
FEDE   FF            ???                ;11111111
FEDF   FF            ???                ;11111111
FEE0   FF            ???                ;11111111
FEE1   FF            ???                ;11111111
FEE2   FF            ???                ;11111111
FEE3   FF            ???                ;11111111
FEE4   FF            ???                ;11111111
FEE5   FF            ???                ;11111111
FEE6   FF            ???                ;11111111
FEE7   FF            ???                ;11111111
FEE8   FF            ???                ;11111111
FEE9   FF            ???                ;11111111
FEEA   FF            ???                ;11111111
FEEB   FF            ???                ;11111111
FEEC   FF            ???                ;11111111
FEED   FF            ???                ;11111111
FEEE   FF            ???                ;11111111
FEEF   FF            ???                ;11111111
FEF0   FF            ???                ;11111111
FEF1   FF            ???                ;11111111
FEF2   FF            ???                ;11111111
FEF3   FF            ???                ;11111111
FEF4   FF            ???                ;11111111
FEF5   FF            ???                ;11111111
FEF6   FF            ???                ;11111111
FEF7   FF            ???                ;11111111
FEF8   FF            ???                ;11111111
FEF9   FF            ???                ;11111111
FEFA   FF            ???                ;11111111
FEFB   FF            ???                ;11111111
FEFC   FF            ???                ;11111111
FEFD   FF            ???                ;11111111
FEFE   FF            ???                ;11111111
FEFF   FF            ???                ;11111111
FF00   6C 90 01      JMP ($0190)
FF03   6C 92 01      JMP ($0192)
FF06   6C 94 01      JMP ($0194)
FF09   6C 96 01      JMP ($0196)
FF0C   6C 98 01      JMP ($0198)
FF0F   6C 9A 01      JMP ($019A)
FF12   6C 9C 01      JMP ($019C)
FF15   6C 9E 01      JMP ($019E)
FF18   6C A0 01      JMP ($01A0)
FF1B   6C A2 01      JMP ($01A2)
FF1E   6C A4 01      JMP ($01A4)
FF21   6C A6 01      JMP ($01A6)
FF24   6C A8 01      JMP ($01A8)
FF27   6C AA 01      JMP ($01AA)
FF2A   6C AC 01      JMP ($01AC)
FF2D   6C AE 01      JMP ($01AE)
FF30   6C B0 01      JMP ($01B0)
FF33   6C B2 01      JMP ($01B2)
FF36   6C B4 01      JMP ($01B4)
FF39   6C B6 01      JMP ($01B6)
FF3C   6C B8 01      JMP ($01B8)
FF3F   6C BA 01      JMP ($01BA)
FF42   FF            ???                ;11111111
FF43   FF            ???                ;11111111
FF44   FF            ???                ;11111111
FF45   FF            ???                ;11111111
FF46   FF            ???                ;11111111
FF47   FF            ???                ;11111111
FF48   FF            ???                ;11111111
FF49   FF            ???                ;11111111
FF4A   FF            ???                ;11111111
FF4B   FF            ???                ;11111111
FF4C   FF            ???                ;11111111
FF4D   FF            ???                ;11111111
FF4E   FF            ???                ;11111111
FF4F   FF            ???                ;11111111
FF50   FF            ???                ;11111111
FF51   FF            ???                ;11111111
FF52   FF            ???                ;11111111
FF53   FF            ???                ;11111111
FF54   4C 9D 95      JMP $959D
FF57   4C 38 A9      JMP $A938
FF5A   4C 4C A9      JMP $A94C
FF5D   4C 1D AB      JMP $AB1D
FF60   4C 45 91      JMP $9145
FF63   4C EA AE      JMP $AEEA
FF66   4C 5C 8C      JMP $8C5C
FF69   4C 60 94      JMP $9460
FF6C   4C E3 BF      JMP $BFE3
FF6F   FF            ???                ;11111111
FF70   FF            ???                ;11111111
FF71   FF            ???                ;11111111
FF72   FF            ???                ;11111111
FF73   FF            ???                ;11111111
FF74   FF            ???                ;11111111
FF75   F0 B0         BEQ $FF27
FF77   FD DA CA      SBC $CADA,X
FF7A   AF            ???                ;10101111
FF7B   62            ???                ;01100010 'b'
FF7C   B2            ???                ;10110010
FF7D   C5 8E         CMP $8E
FF7F   81 B7         STA ($B7,X)
FF81   2F            ???                ;00101111 '/'
FF82   89            ???                ;10001001
FF83   5D 8A 8F      EOR $8F8A,X
FF86   89            ???                ;10001001
FF87   A1 A1         LDA ($A1,X)
FF89   56 A9         LSR $A9,X
FF8B   6E 87 C5      ROR $C587
FF8E   88            DEY
FF8F   88            DEY
FF90   86 48         STX $48
FF92   B3            ???                ;10110011
FF93   AE A7 CF      LDX $CFA7
FF96   AB            ???                ;10101011
FF97   5C            ???                ;01011100 '\'
FF98   AD B8 AE      LDA $AEB8
FF9B   BE C0 DC      LDX $DCC0,Y
FF9E   CE F1 A7      DEC $A7F1
FFA1   FF            ???                ;11111111
FFA2   FF            ???                ;11111111
FFA3   FF            ???                ;11111111
FFA4   FF            ???                ;11111111
FFA5   FF            ???                ;11111111
FFA6   FF            ???                ;11111111
FFA7   FF            ???                ;11111111
FFA8   FF            ???                ;11111111
FFA9   FF            ???                ;11111111
FFAA   FF            ???                ;11111111
FFAB   FF            ???                ;11111111
FFAC   FF            ???                ;11111111
FFAD   A0 2B         LDY #$2B
FFAF   B9 75 FF      LDA $FF75,Y
FFB2   99 90 01      STA $0190,Y
FFB5   88            DEY
FFB6   10 F7         BPL $FFAF
FFB8   A9 4C         LDA #$4C
FFBA   8D FC 01      STA $01FC
FFBD   A9 40         LDA #$40
FFBF   8D FD 01      STA $01FD
FFC2   A9 BA         LDA #$BA
FFC4   8D FE 01      STA $01FE
FFC7   60            RTS
FFC8   FF            ???                ;11111111
FFC9   FF            ???                ;11111111
FFCA   FF            ???                ;11111111
FFCB   FF            ???                ;11111111
FFCC   FF            ???                ;11111111
FFCD   FF            ???                ;11111111
FFCE   FF            ???                ;11111111
FFCF   FF            ???                ;11111111
FFD0   FF            ???                ;11111111
FFD1   FF            ???                ;11111111
FFD2   FF            ???                ;11111111
FFD3   FF            ???                ;11111111
FFD4   FF            ???                ;11111111
FFD5   FF            ???                ;11111111
FFD6   FF            ???                ;11111111
FFD7   FF            ???                ;11111111
FFD8   FF            ???                ;11111111
FFD9   FF            ???                ;11111111
FFDA   FF            ???                ;11111111
FFDB   FF            ???                ;11111111
FFDC   FF            ???                ;11111111
FFDD   FF            ???                ;11111111
FFDE   FF            ???                ;11111111
FFDF   FF            ???                ;11111111
FFE0   FF            ???                ;11111111
FFE1   FF            ???                ;11111111
FFE2   FF            ???                ;11111111
FFE3   FF            ???                ;11111111
FFE4   FF            ???                ;11111111
FFE5   FF            ???                ;11111111
FFE6   FF            ???                ;11111111
FFE7   FF            ???                ;11111111
FFE8   FF            ???                ;11111111
FFE9   FF            ???                ;11111111
FFEA   9A            TXS
FFEB   8B            ???                ;10001011
FFEC   D7            ???                ;11010111
FFED   8B            ???                ;10001011
FFEE   00            BRK
FFEF   05 03         ORA $03
FFF1   05 06         ORA $06
FFF3   05 09         ORA $09
FFF5   05 0C         ORA $0C
FFF7   05 0F         ORA $0F
FFF9   05 3C         ORA $3C
FFFB   AD 24 AF      LDA $AF24
FFFE   03            ???                ;00000011
FFFF   FF            ???                ;11111111
                     .END

