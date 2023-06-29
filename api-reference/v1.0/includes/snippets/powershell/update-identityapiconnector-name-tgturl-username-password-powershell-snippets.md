---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	displayName = "New Test API"
	targetUrl = "https://otherapi.com/api/endpoint"
	authenticationConfiguration = @{
		"@odata.type" = "microsoft.graph.basicAuthentication"
		username = "<NEW_USERNAME>"
		password = "<NEW_PASSWORD>"
	}
}

Update-MgIdentityApiConnector -IdentityApiConnectorId $identityApiConnectorId -BodyParameter $params

```