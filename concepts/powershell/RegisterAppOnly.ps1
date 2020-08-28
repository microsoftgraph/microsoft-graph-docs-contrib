$certPath = "C:\Source\GraphPowerShellAppOnly.cer"
$graphResourceId = "00000003-0000-0000-c000-000000000000"
$UserReadAll = @{
  Id="df021288-bdef-4463-88db-98f22de89214"
  Type="Role"
}
$GroupReadAll = @{
  Id="5b567255-7703-4780-807c-7be8301ae99b"
  Type="Role"
}

# Requires an admin
Connect-Graph -Scopes "Application.ReadWrite.All User.Read"

# Get context for access to tenant ID
$context = Get-MgContext

# Load cert
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($certPath)

# Create app registration
$appRegistration = New-MgApplication -DisplayName "Graph PowerShell Script Test" -SignInAudience "AzureADMyOrg" `
 -RequiredResourceAccess @{ ResourceAppId=$graphResourceId; ResourceAccess=$UserReadAll, $GroupReadAll } `
 -AdditionalProperties @{} -KeyCredentials @(@{ Type="AsymmetricX509Cert"; Usage="Verify"; Key=$cert.RawData })

# Create corresponding service principal
New-MgServicePrincipal -AppId $appRegistration.AppId -AdditionalProperties @{} | Out-Null

# Generate admin consent URL
$adminConsentUrl = "https://login.microsoftonline.com/" + $context.TenantId + "/adminconsent?client_id=" + $appRegistration.AppId
Write-Host "Please go to the following URL in your browser to provide admin consent"
Write-Host $adminConsentUrl
Write-Host
Write-Host "After providing admin consent, you can use the following values with Connect-Graph for app-only:"
Write-Host "Connect-Graph -ClientId " $appRegistration.AppId "-TenantId " $context.TenantId "-CertificateName " $cert.SubjectName.Name

Disconnect-Graph
