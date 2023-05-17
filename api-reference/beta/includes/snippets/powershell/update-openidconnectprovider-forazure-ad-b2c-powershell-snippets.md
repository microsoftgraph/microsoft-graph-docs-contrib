---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.socialIdentityProvider"
	responseType = "id_token"
}

Update-MgIdentityProvider -IdentityProviderBaseId $identityProviderBaseId -BodyParameter $params

```