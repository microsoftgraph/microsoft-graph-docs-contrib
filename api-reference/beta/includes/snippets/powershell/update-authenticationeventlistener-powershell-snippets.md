---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onTokenIssuanceStartListener"
	conditions = @{
		applications = @{
			includeAllApplications = $false
		}
	}
	priority = 500
}

Update-MgIdentityAuthenticationEventListener -AuthenticationEventListenerId $authenticationEventListenerId -BodyParameter $params

```