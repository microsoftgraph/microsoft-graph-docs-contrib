---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	accountId = "256db173-930a-4991-9061-0d51a9a93ba5"
	action = "disable"
	identityProvider = "activeDirectory"
}

Invoke-MgInvokeSecurityIdentityAccountAction -IdentityAccountsId $identityAccountsId -BodyParameter $params

```