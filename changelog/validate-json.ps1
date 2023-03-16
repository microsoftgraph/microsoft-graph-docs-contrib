$schemaFileName = "Changelog.Schema.json"
$schema = Get-Content $schemaFileName  | Out-String

$err = "";
Get-ChildItem -Filter "*.json" | Where-Object { $schemaFileName -notcontains $_.Name} | ForEach-Object { 
    
    # first test only json parsing to not mixup error
    $json = Get-Content $_ | Out-String -ErrorAction:SilentlyContinue
    if(($json | Test-Json -ErrorAction:SilentlyContinue) -eq $true){

        # if json parsing is fine, let's check schema
        if(($json | Test-Json -Schema $schema -ErrorAction:SilentlyContinue) -eq $true){
            Write-Host ($_.Name + "`t`tPassed")
        } else {
            $err += $_.Name + "`t`t" + $Error[0].ErrorDetails.Message + "`r`n";
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