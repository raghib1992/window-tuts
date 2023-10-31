# Paramters
param([string]$g_dir="C:\Users\10728749\raghib\aws-devops")

#Function
function Get-DirInfo ($dir) {
    $result = Get-ChildItem $dir -Recurse | Measure-Object -Property length -Sum
    return [math]::Round(($result).sum/1GB,2)
}


#Main processing
Get-DirInfo $g_dir