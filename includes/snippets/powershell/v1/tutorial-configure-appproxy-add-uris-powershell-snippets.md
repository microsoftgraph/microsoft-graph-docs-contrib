---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	identifierUris = @(
		"https://contosoiwaapp-contoso.msappproxy.net"
	)
	web = @{
		redirectUris = @(
			"https://contosoiwaapp-contoso.msappproxy.net"
		)
		homePageUrl = "https://contosoiwaapp-contoso.msappproxy.net"
	}
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```