---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.socialIdentityProvider"
	DisplayName = "Apple"
}

Update-MgIdentityProvider -IdentityProviderBaseId $identityProviderBaseId -BodyParameter $params

```