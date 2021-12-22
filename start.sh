#!/bin/bash

echo ''
echo ''
read -n1 -p "Kamu ingin menjalankan programnya langsung atau python ? L = langsung, P = python" doit
case $doit in
	l|L) cd Aplikasi_Exe
		echo "Menginstall wine"
		sudo dpkg --add-architecture i386
		sudo apt update && sudo apt full-upgrade -y
		sudo apt install wine wine64 wine32 winbind winetricks
		wine CreateFile.exe
		xdg-open https://web.whatsapp.com/
		wine Spammer.exe
		wine --version;;
	n|N) python3 createFile.py
		xdg-open https://web.whatsapp.com/
		python3 Spamwa.py
	*) echo "Invalid" ;;
esac
