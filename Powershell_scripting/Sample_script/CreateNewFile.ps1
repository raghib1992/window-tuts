Push-Location -Path U:\test-script
Get-ChildItem
mkdir -Path test-script
# Create New File
New-Item -Path .\File.txt -ItemType File -Force
Get-ChildItem
# Add Content into file
$data = "Mango is my favourite fruits"
Add-Content -Path File.txt -Value $data -Force
Get-Content -Path File.txt