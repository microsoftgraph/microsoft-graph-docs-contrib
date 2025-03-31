---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.socialIdentityProvider"
	displayName = "Login with Amazon"
	identityProviderType = "Amazon"
	clientId = "00001111-aaaa-2222-bbbb-3333cccc4444"
	clientSecret = "42*****96"
}

New-MgBetaIdentityProvider -BodyParameter $params

```