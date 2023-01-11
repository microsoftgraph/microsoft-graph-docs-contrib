---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Web = @{
		RedirectUris = @(
			"https://signin.aws.amazon.com/saml"
		)
	}
	IdentifierUris = @(
		"https://signin.aws.amazon.com/saml"
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```