---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onTokenIssuanceStartListener"
	conditions = @{
		applications = @{
			includeAllApplications = $false
		}
	}
	priority = 500
}

Update-MgBetaIdentityAuthenticationEventListener -AuthenticationEventListenerId $authenticationEventListenerId -BodyParameter $params

```