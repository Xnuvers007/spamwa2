import pyautogui
import time
import mouseinfo
import os
from sys import platform

if platform=="linux" or platform=="linux2":
   os.environ['DISPLAY'] = ':1.0' #Linux / debian
elif platform=="win32":
   s.environ['DISPLAY'] = ':0' #windows
else:
   print("Cannot detect this device")

os.environ['XAUTHORITY']='/run/user/1000/gdm/Xauthority'
input("Enter To Start")
time.sleep(1)
a = open("spam.txt", 'r')
for word in a:
   pyautogui.typewrite(word)
   pyautogui.press("Enter")
