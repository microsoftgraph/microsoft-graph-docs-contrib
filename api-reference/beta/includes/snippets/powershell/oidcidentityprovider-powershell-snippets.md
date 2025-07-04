---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.oidcIdentityProvider"
	displayName = "Contoso"
}

Update-MgBetaIdentityProvider -IdentityProviderBaseId $identityProviderBaseId -BodyParameter $params

```