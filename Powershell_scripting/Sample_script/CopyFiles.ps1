# Parameters
# The script should take 2 arguments $source and $destination (for the source and destination folders).

param(
    [string]$source="C:\Users\10728749\raghib\temp\source"
    ,[string]$destination="C:\Users\10728749\raghib\temp\destination"
)

#Functions
#2)	Functions

#Create a function named CheckFolder that checks for the existence of a specific directory/folder that is passed 
#to it as a parameter. Also, include a switch parameter named create. If the directory/folder does not exist and 
#the create switch is specified, a new folder should be created using the name of the folder/directory that was 
#passed to the function.

function CheckFolder([string]$path, [switch]$create){
    $exist = Test-Path -Path $path

    if(!$exist -and $create){
        Write-Host "Source Folder doesn't exit. Creating Folder"
        mkdir $path
        $exist = Test-Path -Path $path
    }

    return $exist
}


#Create a function named DisplayFolderStatistics to display folder statistics for a directory/path that is passed 
#to it. Output should include the name of the folder, number of files in the folder, and total size of all files in 
#that directory.

function DisplayFolderStatistics([string]$path){
    $files = dir C:\Users\10728749\raghib\temp\source | where {!$_.PSIsContainer}
    $totals = $files | Measure-Object -Property length -Sum
    $stats = "" | Select Path,Count,Size
    $stats.Path = $path
    $stats.Count = $totals.Count
    $stats.Size= $totals.Sum
    return $stats
}

#3)	Main processing

#a) Test for existence of the source folder (using the CheckFolder function).
$sourceexit = CheckFolder $source -create

if(!$sourceexit){
    Write-Host "Source Folder doesn't exit/ Exit from scripting"
    Exit
}

#b) Test for the existence of the destination folder; create it if it is not found (using the CheckFolder function 
#with the –create switch).Write-Host "Testing Destination Directory - $destination"

$destinationexit = CheckFolder $destination -create

if(!$destinationexit){
    Write-Host "Destination Folder doesn't exit/ Exit from scripting"
    Exit
}

#c) Copy each file to the appropriate destination.
#get all the files that need to be copied

$files = dir $source -Recurse | where {!$_.PSIsCOntainer}


#c-i) Display a message when copying a file. The message should list where the file is being
#moved from and where it is being moved to.

foreach ($file in $files){
    $ext = $file.Extension.Replace(".","")
    $extdestdir = "$destination\$ext"
    
    # test for folder exit or not
    
    $extdestdirexits = CheckFolder $extdestdir -create
    if(!$extdestdirexits){
        Write-Host "($extdestdir) Folder doesn't exit/ Exit from scripting"
        Exit
    }

    # Copy files
    Copy $file.FullName $extdestdir
}



#d) Display each target folder name with the file count and byte count for each folder.

$allstats =@()
$dirs = dir $destination | where {$_.PSIsContainer}
foreach ($dir in $dirs){
   $allstats += DisplayFolderStatistics $dir.FullName
}

$allstats | sort size -Descending