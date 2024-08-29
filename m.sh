# Game Boy variants
mkdir -p obj
mkdir -p bin
rgbasm -oobj/whichboot.o -Wno-obsolete -p 0xFF -isrc/ -ires/ -i./common/ src/whichboot.asm  &&
rgblink -t -w -p0xFF -o bin/whichboot.gb -m bin/whichboot.map -n bin/whichboot.sym obj/whichboot.o &&
rgbfix -v -s -l 0x33 -c -n 1 -p0xFF -t "WHICHBOOT" bin/whichboot.gb

# MegaDuck
mkdir -p obj
mkdir -p bin
rgbasm -oobj/whichboot_duck.o -Wno-obsolete -DTARGET_MEGADUCK  -p 0xFF -isrc/ -ires/ -i./common/ src/whichboot.asm  &&
rgblink -t -w -p0xFF -o bin/whichboot_duck.duck -m bin/whichboot_duck.map -n bin/whichboot_duck.sym obj/whichboot_duck.o &&
rgbfix -v -s -l 0x33 -c -n 1 -p0xFF -t "WHICHBOOT" bin/whichboot_duck.duck
