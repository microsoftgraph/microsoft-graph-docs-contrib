---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	name = "testing02"
	issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0"
	subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a"
	description = "Updated description"
	audiences = @(
	"api://AzureADTokenExchange"
)
}

Update-MgApplicationFederatedIdentityCredential -ApplicationId $applicationId -FederatedIdentityCredentialId $federatedIdentityCredentialId -BodyParameter $params

```