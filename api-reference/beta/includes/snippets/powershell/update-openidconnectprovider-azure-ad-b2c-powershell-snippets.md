---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	responseType = "id_token"
}

Update-MgBetaIdentityProvider -IdentityProviderId $identityProviderId -BodyParameter $params

```