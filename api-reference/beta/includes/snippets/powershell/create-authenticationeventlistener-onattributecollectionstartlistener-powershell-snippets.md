---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onAttributeCollectionStartListener"
	priority = 500
	conditions = @{
		applications = @{
			includeAllApplications = $false
			includeApplications = @(
				@{
					appId = "a7eed01f-a333-4983-bc6b-d359ec9e5eef"
				}
			)
		}
	}
	handler = @{
		"@odata.type" = "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler"
		customExtension = @{
			id = "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02"
		}
	}
}

New-MgBetaIdentityAuthenticationEventListener -BodyParameter $params

```