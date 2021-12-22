@echo off

:ulang
echo ingin mengulang kembali ? (y/n)
set jawaban=
set /P jawaban=Type input: %=%
If %jawaban%=="y" goto Ask
If %jawaban%=="Y" goto Ask
If %jawaban%=="N" goto asterisk
If %jawaban%=="n" goto asterisk

:asterisk
echo akan keluar dalam 3 detik
TIMEOUT /T 3
EXIT /B

:Ask
echo ingin start ? (y/N)
set INPUT=
set /P INPUT=Type input: %=%
If %INPUT%=="Y" goto yes
If %INPUT%=="y" goto yes
If %INPUT%=="N" goto no
If %INPUT%=="n" goto no

:yes
cd Aplikasi_Exe
./CreateFile.exe

set url="https://web.whatsapp.com"

echo ingin menggunakan Chrome [C], Firefox [F], Microsoft Edge [E] ?
set INPUT=
set /P INPUT=Type input: %=%
If %INPUT%=="C" goto C
If %INPUT%=="c" goto C
If %INPUT%=="F" goto F
If %INPUT%=="f" goto F
If %INPUT%=="E" goto E
If %INPUT%=="e" goto E

:C
start chrome %url%

:F
start firefox %url%

:E
start microsoft-edge %url%

./Spammer.exe

TIMEOUT /T 5

goto ulang

:no
echo akan keluar dalam 3 detik
TIMEOUT /T 3
EXIT /B
