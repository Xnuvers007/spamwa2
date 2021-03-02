import pyautogui
import time
input("Enter To Start")
time.sleep(1)
a = open("spam.txt", 'r')
for word in a:
   pyautogui.typewrite(word)
   pyautogui.press("Enter")
