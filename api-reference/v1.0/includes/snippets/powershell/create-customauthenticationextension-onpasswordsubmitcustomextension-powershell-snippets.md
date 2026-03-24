---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onPasswordSubmitCustomExtension"
	displayName = "Legacy password validator"
	description = "Validates passwords against a legacy authentication system for JIT migration"
	endpointConfiguration = @{
		"@odata.type" = "#microsoft.graph.httpRequestEndpoint"
		targetUrl = "https://api.contoso.com/passwordvalidation"
	}
	authenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.azureAdTokenAuthentication"
		resourceId = "api://api.contoso.com/passwordvalidation"
	}
	clientConfiguration = @{
		timeoutInMilliseconds = 2000
		maximumRetries = 1
	}
}

New-MgIdentityCustomAuthenticationExtension -BodyParameter $params

```