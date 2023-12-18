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
			includeApplications = @(
				@{
					appId = "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
				}
			)
		}
	}
	priority = 500
	handler = @{
		"@odata.type" = "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler"
	}
}

New-MgBetaIdentityAuthenticationEventListener -BodyParameter $params

```