for FILE in *.bin; do
hexdump -v -e '1/1 "%02X\n"' $FILE > ${FILE%.*}.mem;
done
