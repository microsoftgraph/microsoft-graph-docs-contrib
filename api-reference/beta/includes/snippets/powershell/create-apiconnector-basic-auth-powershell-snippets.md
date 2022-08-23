---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Test API"
	TargetUrl = "https://someapi.com/api"
	AuthenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.basicAuthentication"
		Username = "<USERNAME>"
		Password = "<PASSWORD>"
	}
}

New-MgIdentityApiConnector -BodyParameter $params

```