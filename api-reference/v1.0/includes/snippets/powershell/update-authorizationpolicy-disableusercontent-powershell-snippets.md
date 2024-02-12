---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	defaultUserRolePermissions = @{
		permissionGrantPoliciesAssigned = @(
		)
	}
}

Update-MgPolicyAuthorizationPolicy -BodyParameter $params

```