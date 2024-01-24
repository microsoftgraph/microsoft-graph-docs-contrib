---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onAttributeCollectionStartCustomExtension"
	displayName = "attributeCollectionStartName"
	description = "example description"
	authenticationConfiguration = @{
		"@odata.type" = "#microsoft.graph.azureAdTokenAuthentication"
		resourceId = "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
	}
	endpointConfiguration = @{
		"@odata.type" = "#microsoft.graph.httpRequestEndpoint"
		targetUrl = "https://contoso.com"
	}
	clientConfiguration = @{
		timeoutInMilliseconds = 2000
		maximumRetries = 1
	}
}

New-MgBetaIdentityCustomAuthenticationExtension -BodyParameter $params

```