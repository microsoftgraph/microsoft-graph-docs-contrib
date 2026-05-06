---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension"
	displayName = "Verified ID Claim Validation"
	description = "Validate claims from a Verified ID presentation"
	endpointConfiguration = @{
		"@odata.type" = "#microsoft.graph.httpRequestEndpoint"
		targetUrl = "https://contoso.azurewebsites.net/api/verifiedIdClaimValidation"
	}
	authenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.azureAdTokenAuthentication"
		resourceId = "api://contoso.azurewebsites.net/verifiedIdClaimValidation"
	}
	clientConfiguration = @{
		timeoutInMilliseconds = 2000
		maximumRetries = 1
	}
	behaviorOnError = @{
		"@odata.type" = "#microsoft.graph.customExtensionBehaviorOnError"
	}
}

New-MgIdentityCustomAuthenticationExtension -BodyParameter $params

```