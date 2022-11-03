---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	IdentifierUris = @(
		"https://contosoiwaapp-contoso.msappproxy.net"
	)
	Web = @{
		RedirectUris = @(
			"https://contosoiwaapp-contoso.msappproxy.net"
		)
		HomePageUrl = "https://contosoiwaapp-contoso.msappproxy.net"
	}
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```