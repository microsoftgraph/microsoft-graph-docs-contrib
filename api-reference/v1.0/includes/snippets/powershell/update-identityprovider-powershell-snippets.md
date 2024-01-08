---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	clientSecret = "1111111111111"
}

Update-MgIdentityProvider -IdentityProviderId $identityProviderId -BodyParameter $params

```