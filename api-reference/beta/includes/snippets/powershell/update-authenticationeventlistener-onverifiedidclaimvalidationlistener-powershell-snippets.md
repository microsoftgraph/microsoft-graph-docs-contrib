---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onVerifiedIdClaimValidationListener"
	displayName = "Verified ID Claim Validation Listener (updated)"
	handler = @{
		"@odata.type" = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler"
		configuration = @{
			"@odata.type" = "#microsoft.graph.customExtensionOverwriteConfiguration"
			clientConfiguration = @{
				"@odata.type" = "#microsoft.graph.customExtensionClientConfiguration"
				maximumRetries = 
				timeoutInMilliseconds = 
			}
			behaviorOnError = @{
				"@odata.type" = "#microsoft.graph.customExtensionBehaviorOnError"
			}
		}
	}
}

Update-MgBetaIdentityAuthenticationEventListener -AuthenticationEventListenerId $authenticationEventListenerId -BodyParameter $params

```