```
function add-something
{
    1 + 3
}

add-something
```

```
function add-something
{
    
    param([int]$num1, [int]$num2)
    $num1 + $num2
}

add-something 123 456
add-something -num1 123 -num2 456
```
```
function add-something
{
    
    param([int]$num1, [int]$num2)
    return $num1 + $num2
}

$result = add-something 123 456
```
```
function Get-DirInfo ($dir) {
    Get-ChildItem $dir -Recurse | Measure-Object -Property length -Sum
}

[math]::Round((Get-DirInfo C:\Users\10728749\raghib\aws-devops).sum/1GB,2)
```