# Ensure scripting is enbale on remote server
```
Enter-PSSession -ComputerName <Remote Server Name>
```

# COpy item to remote server
Copy-Item -Path $file -Destination "\\Revote-Server\C$\Path"
Invoke-Co   mmand -COmputerName <Remote Server Name> -ScriptBlock {
    // Script 
}