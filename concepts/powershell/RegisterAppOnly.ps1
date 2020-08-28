$certPath = "C:\Source\GraphPowerShellAppOnly.cer"

# Requires an admin
Connect-Graph -Scopes "Applications.ReadWrite.All"


$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($certPath)

$certValue = [System.Convert]::ToBase64String($cert.RawData)