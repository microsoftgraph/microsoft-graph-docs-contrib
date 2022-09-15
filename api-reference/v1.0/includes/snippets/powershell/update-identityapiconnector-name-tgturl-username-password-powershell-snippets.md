---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "New Test API"
	TargetUrl = "https://otherapi.com/api/endpoint"
	AuthenticationConfiguration = @{
		"@odata.type" = "microsoft.graph.basicAuthentication"
		Username = "<NEW_USERNAME>"
		Password = "<NEW_PASSWORD>"
	}
}

Update-MgIdentityApiConnector -IdentityApiConnectorId $identityApiConnectorId -BodyParameter $params

```