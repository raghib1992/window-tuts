# sorting

```
$files =dir

$files[0]
$files[10].name
get-help sort -online
$files | sort 
Get-ChildItem -Path C:\Test -File | Sort-Object -Property Length
```

# filtering

```
get-help where -online
get-service | where status -eq "Stopped"
Get-ChildItem | where {($_.name -like "D*") -and ($_.name -like "*s")}
```