---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onAttributeCollectionSubmitListener"
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
		"@odata.type" = "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler"
		customExtension = @{
			id = "66867d1f-7824-4f38-aad1-75da1ad09ee2"
		}
	}
}

New-MgBetaIdentityAuthenticationEventListener -BodyParameter $params

```