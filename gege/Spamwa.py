import pyautogui
import time
time.sleep(1)
a = open("List.txt", 'r')
for word in a:
   pyautogui.typewrite(word)
   pyautogui.press("Enter")
