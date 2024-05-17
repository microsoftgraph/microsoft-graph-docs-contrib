---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	identifierUris = @(
	"https://signin.aws.amazon.com/saml"
)
web = @{
	redirectUris = @(
	"https://signin.aws.amazon.com/saml"
)
}
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```