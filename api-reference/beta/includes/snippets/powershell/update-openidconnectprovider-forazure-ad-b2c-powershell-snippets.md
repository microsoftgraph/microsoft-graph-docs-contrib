---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.socialIdentityProvider"
	responseType = "id_token"
}

Update-MgBetaIdentityProvider -IdentityProviderBaseId $identityProviderBaseId -BodyParameter $params

```