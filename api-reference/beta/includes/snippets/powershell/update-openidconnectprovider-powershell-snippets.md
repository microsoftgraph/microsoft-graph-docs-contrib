---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	ResponseType = "id_token"
}

Update-MgIdentityProvider -IdentityProviderId $identityProviderId -BodyParameter $params

```