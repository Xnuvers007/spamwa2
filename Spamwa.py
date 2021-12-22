import pyautogui
import time
import mouseinfo
import os
os.environ['DISPLAY'] = ':1.0'
os.environ['XAUTHORITY']='/run/user/1000/gdm/Xauthority'
input("Enter To Start")
time.sleep(1)
a = open("spam.txt", 'r')
for word in a:
   pyautogui.typewrite(word)
   pyautogui.press("Enter")
