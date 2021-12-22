def main():
   a = int(input("Masukan Jumlah yang ingin di spam : "))
   b = input("Masukan Kata yang ingin di spam : ")
   f=open("spam.txt", "w+")
   for i in range(a):
      f.write(b+" \r\n")
      f.readlines()
   f.close
if __name__=="__main__":
   main()
