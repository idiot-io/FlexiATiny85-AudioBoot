@ECHO OFF

::
:: this is for fuse and burn 
:: in windows with arduino installed
:: install attinycore core in arduino 
::
set SERIAL_PORT=COM8
::stk500v1=="arduino as isp"
set PROGRAMMER=stk500v1

:: if you installed arduino this folder should exsit under your user

:: the actual HEX to burn
set HEX=%~dp0\main.hex


cd C:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28\tools\avrdude\windows

:: burn fuses
cd %AVRPATH%
avrdude ^
-Cavrdude.conf -v ^
-p t85 ^
-c stk500v1 ^
-P %SERIAL_PORT% ^
-b 19200 ^
-U efuse:w:0xfe:m ^
-U hfuse:w:0xdd:m ^
-U lfuse:w:0xe1:m



::cd C:\Users\Admin\AppData\Local\Arduino15\packages\8BitMixtape\hardware\avr\0.0.28
avrdude ^
-Cavrdude.conf ^
-cstk500v1 ^
-B4 -PCOM8 ^
-b19200 ^
-pattiny85 ^
-Cavrdude.conf ^
-Uflash:w:%HEX%:i
pause
@echo on

rem            schematic for audio input
rem            =========================			
rem   	
rem 			          VCC	
rem 			           |	 
rem                       | | 10K
rem                       | |
rem                        |
rem 			           |
rem  audio in >-----||-----o------->  soundprog ( PB3 digital input pin )
rem                100nF   |
rem 	                   |  
rem                       | | 10K
rem                       | |
rem 			           |
rem                       GND
rem 

exit
