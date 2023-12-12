# Basic Data types
```
PS C:\Users\raghi> 1+2
3
PS C:\Users\raghi> $a = 1 + 3
PS C:\Users\raghi> $a
4
PS C:\Users\raghi> $a +=1
PS C:\Users\raghi> $a
5
PS C:\Users\raghi>
PS C:\Users\raghi> $a | get-member
PS C:\Users\raghi> $a = "This is string"
PS C:\Users\raghi> $a
This is string
PS C:\Users\raghi> $a.lenght
PS C:\Users\raghi> $a.length
14
PS C:\Users\raghi> $a.substring(0,5)
This
PS C:\Users\raghi> $b = 'Tom'
PS C:\Users\raghi> $a = "My name is $b"
PS C:\Users\raghi> $a
My name is Tom
PS C:\Users\raghi>
PS C:\Users\raghi>
PS C:\Users\raghi> $a= 'My name is $b'
PS C:\Users\raghi> $a
My name is $b
```
# Comparision
### Integer
```
PS C:\Users\raghi> 12 -eq 37
False
PS C:\Users\raghi> 12 -eq 12
True
PS C:\Users\raghi> $a = 12
PS C:\Users\raghi> $b = 37
PS C:\Users\raghi> $a -eq $b
False
PS C:\Users\raghi> $a -ne $b
True
PS C:\Users\raghi> $a -gt 5
True
PS C:\Users\raghi> $a -lt 5
False
PS C:\Users\raghi> $a -eq 12
True
```
### String
```
PS C:\Users\raghi> 'a' -eq 'A'
True
PS C:\Users\raghi> "a" -ceq "A"
False
PS C:\Users\raghi> "Apple" -eq "A*"
False
PS C:\Users\raghi> "Apple" -like "A*"
True
PS C:\Users\raghi>
PS C:\Users\raghi> $a = 'Apple'
PS C:\Users\raghi>
PS C:\Users\raghi>
PS C:\Users\raghi> $a -like "*p*"
True
PS C:\Users\raghi> $a -like "A??le"
True
PS C:\Users\raghi>
PS C:\Users\raghi> "Ankle" -like "A??le"
True
PS C:\Users\raghi> "Admirable" -like "A??le"
False
```
### Sentence
```
PS C:\Users\raghi> "My Name is Tom" -match "Tom"
True
PS C:\Users\raghi> "My Name is Tom" -match "Bob"
False
PS C:\Users\raghi>
PS C:\Users\raghi> "My Name is Tom" -match "TOM"
True
PS C:\Users\raghi> "My Name is Tom" -cmatch "TOM"
False
PS C:\Users\raghi> "My Name is Tom" -cmatch "Tom"
True
```