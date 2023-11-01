$xmlFilePath = "C:\Users\raghi\Desktop\web.txt"

[xml]$xmlData = Get-Content -Path $xmlFilePath

$AppData = $xmlData.configuration.appSettings.add


#$AppData.add.value

foreach($url in $AppData)
{
    if($url.key -like "mic_service_url"){
        if($url.value -like "https://wss.qa.paygateway.com/mic"){
            Write-Host "No need to update url"
            $url.value
            #$url.value = "https://wss.qa.paygateway.com/mic"
        }
        else{
            Write-Host "url value need to update"
            Write-Host "https://wss.qa.paygateway.com/mic"
            $url.value = "https://wss.qa.paygateway.com/mic"
            $xmlData.save($xmlFilePath)
        }
    }
    #$url.key
    #$url.value

    #Write-Host "Key is ($url.key) and Value is ($url.value)" 
}

