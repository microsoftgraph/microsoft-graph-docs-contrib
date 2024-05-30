---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	clientSecret = "1111111111111"
}

Update-MgBetaIdentityProvider -IdentityProviderId $identityProviderId -BodyParameter $params

```