---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	web = @{
		redirectUris = @(
			"https://signin.aws.amazon.com/saml"
		)
	}
	identifierUris = @(
		"https://signin.aws.amazon.com/saml"
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```