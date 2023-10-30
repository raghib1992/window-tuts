# Array
```
PS C:\Users\raghi> $str = "Server1","server2","server3"
PS C:\Users\raghi> $str
Server1
server2
server3
PS C:\Users\raghi> $str = @("Server1","server2","server3")
PS C:\Users\raghi> $str
Server1
server2
server3
PS C:\Users\raghi> $str = "Server1","server2","server3"
PS C:\Users\raghi> $str
Server1
server2
server3
PS C:\Users\raghi> $str[0]
Server1
PS C:\Users\raghi> $str[1]
server2
PS C:\Users\raghi> $str[2]
server3
PS C:\Users\raghi> $str[2] = "Breakdown"
PS C:\Users\raghi> #str
PS C:\Users\raghi> $str
Server1
server2
Breakdown
PS C:\Users\raghi> $str1 = @("Server1","Server2","Server3")
PS C:\Users\raghi> $str1
Server1
Server2
Server3
PS C:\Users\raghi> $str2 = @("Server4","Server5")
PS C:\Users\raghi>
PS C:\Users\raghi>
PS C:\Users\raghi>
PS C:\Users\raghi> $str2
Server4
Server5
PS C:\Users\raghi> $allstr = $str1 + $str2
PS C:\Users\raghi> $allstr
Server1
Server2
Server3
Server4
Server5
PS C:\Users\raghi>
```

# Hash table
```
PS C:\Users\raghi> $empNumber = @{"John Doe" = 12345; "Bob Jones" = 12346; "Sally Simth" = 12347}

PS C:\Users\raghi> $empNumber

Name                           Value
----                           -----
Bob Jones                      12346
Sally Simth                    12347
John Doe                       12345

PS C:\Users\raghi> $empNumber["Bob Jones"]
12346
PS C:\Users\raghi> $empNumber["Bob Jones"] = 889966
PS C:\Users\raghi> $empNumber

Name                           Value
----                           -----
Bob Jones                      889966
Sally Simth                    12347
John Doe                       12345

PS C:\Users\raghi> $empNumber["New Employee"] = 456782
PS C:\Users\raghi> $empNumber

Name                           Value
----                           -----
Bob Jones                      889966
Sally Simth                    12347
John Doe                       12345
New Employee                   456782

PS C:\Users\raghi> $empNumber.Remove("New Employee")
PS C:\Users\raghi> $empNumber

Name                           Value
----                           -----
Bob Jones                      889966
Sally Simth                    12347
John Doe                       12345

PS C:\Users\raghi>
```