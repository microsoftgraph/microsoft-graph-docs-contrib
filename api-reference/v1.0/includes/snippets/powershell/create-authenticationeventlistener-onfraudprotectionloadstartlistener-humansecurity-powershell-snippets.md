---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onFraudProtectionLoadStartListener"
	conditions = @{
		applications = @{
			includeApplications = @(
				@{
					appId = "0001111-aaaa-2222-bbbb-3333cccc4444"
				}
			)
		}
	}
	handler = @{
		"@odata.type" = "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler"
		signUp = @{
			"@odata.type" = "#microsoft.graph.fraudProtectionProviderConfiguration"
			fraudProtectionProvider = @{
				"@odata.type" = "#microsoft.graph.humanSecurityFraudProtectionProvider"
				id = "fabe5100-cc02-46c1-bd0e-ce885fe367fd"
			}
		}
	}
}

New-MgIdentityAuthenticationEventListener -BodyParameter $params

```