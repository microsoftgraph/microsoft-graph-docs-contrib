$certPath = "C:\Source\GraphPowerShellAppOnly.cer"
$perm1 = @{
  Id="5b567255-7703-4780-807c-7be8301ae99b"
  Type="Role"
}
$perm2 = @{
  Id="df021288-bdef-4463-88db-98f22de89214"
  Type="Role"
}

# Requires an admin
Connect-Graph -Scopes "Application.ReadWrite.All"


$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($certPath)

$appRegistration = New-MgApplication -DisplayName "Graph PowerShell Script Test" -SignInAudience "AzureADMyOrg" `
 -RequiredResourceAccess @{ ResourceAppId="00000003-0000-0000-c000-000000000000"; ResourceAccess=$perm1, $perm2 } `
 -AdditionalProperties @{} -KeyCredentials @(@{ Type="AsymmetricX509Cert"; Usage="Verify"; Key=$cert.RawData })

$servicePrincipal = New-MgServicePrincipal -AppId $appRegistration.AppId -AdditionalProperties @{}

Disconn

