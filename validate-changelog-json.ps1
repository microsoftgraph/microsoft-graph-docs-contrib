$schemaFileName = "Changelog.Schema.json"
$schemaPath = "changelog/" + $schemaFileName
$schema = Get-Content $schemaPath  | Out-String

$err = "";
Get-ChildItem -Filter "changelog/*.json" | Where-Object { $schemaFileName -notcontains $_.Name} | ForEach-Object { 
    
    # first test only json parsing to not mixup error
    $json = Get-Content $_ | Out-String -ErrorAction:SilentlyContinue
    if(($json | Test-Json -ErrorAction:SilentlyContinue) -eq $true){

        # if json parsing is fine, let's check schema
        if(($json | Test-Json -Schema $schema -ErrorAction:SilentlyContinue) -eq $true){
            Write-Host ("Passed Validation : " + $_.Name) -ForegroundColor Green
        } else {
            $err += "File found with invalid changelog: " + $_.Name + "`nError Details: " + $Error[0].ErrorDetails.Message + "`r`n";
        }

    } else {
        $err += $_.Name + "`t`t" + $Error[0].Exception.Message + "`r`n";
    }
}

# only drop one error preventing 
if($err -ne ""){
    Write-Error $err
    exit -1
}