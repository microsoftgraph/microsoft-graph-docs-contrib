---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
	displayName = "Woodgrove Drive User Flow"
	conditions = @{
		applications = @{
			includeApplications = @(
				@{
					appId = "63856651-13d9-4784-9abf-20758d509e19"
				}
			)
		}
	}
	onAuthenticationMethodLoadStart = @{
		"@odata.type" = "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
		identityProviders = @(
		)
	}
	onInteractiveAuthFlowStart = @{
		"@odata.type" = "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp"
		isSignUpAllowed = $true
	}
	onAttributeCollection = @{
		"@odata.type" = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp"
		attributes = @(
		)
	}
}

New-MgBetaIdentityAuthenticationEventFlow -BodyParameter $params

```