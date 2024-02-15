---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	allowExternalIdentitiesToLeave = $false
}

Update-MgBetaPolicyExternalIdentityPolicy -BodyParameter $params

```