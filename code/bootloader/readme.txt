#fuses burn
C:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28/tools/avrdude/windows/avrdude -cstk500v1 -B4 -PCOM8 -b19200 -pattiny85 -CC:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28/tools/avrdude/windows/avrdude.conf -Ulfuse:w:0xE1:m -Uefuse:w:0xFE:m -Uhfuse:w:0xDD:m 

#burn the bootloader
C:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28/tools/avrdude/windows/avrdude -cstk500v1 -B4 -PCOM8 -b19200 -b19200 -pattiny85 -CC:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28/tools/avrdude/windows/avrdude.conf -Uflash:w:C:\DEV\GitHub\FlexiATiny85-AudioBoot\code\bootloader\TinyFlexiAudioBoot_PB0.hex:i 