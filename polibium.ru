#  Квадрат Полибия:
#
#  		+  1  2  3  4  5  6
#  		1  a  b  c  d  e  f
#  		2  g  h  i  j  k  l
#  		3  m  n  o  p  q  r
#  		4  s  t  u  v  w  x
#  		5  y  z  0  1  2  3
#  		6  4  5  6  7  8  9

encript = input("Введите текст который хотите зашифровать: ")

encript = encript.lower()
### Первый шаг шифрования ###

key = {
    'a': '11', 'b': '12', 'c': '13', 'd': '14',
    'e': '15', 'f': '16', 'g': '21', 'h': '22',
    'i': '23', 'j': '24', 'k': '25', 'l': '26',
    'm': '31', 'n': '32', 'o': '33', 'p': '34',
    'q': '35', 'r': '36', 's': '41', 't': '42',
    'u': '43', 'v': '44', 'w': '45', 'x': '46',
    'y': '51', 'z': '52', '0': '53', '1': '54',
    '2': '55', '3': '56', '4': '61', '5': '62',
    '6': '63', '7': '64', '8': '65', '9': '66'
}

# Шифрование
crypt = ""
for i in encript:
    if i in key:
        crypt += key[i]
        crypt += " "
print(crypt)

# Расшифрование
temp = ""
decrypt = ""
for i in crypt:
    if i != " ":
        temp += i
    else:
        for j in key:
            if key[j] == temp:
                decrypt += j
        temp = ""
print(decrypt)
