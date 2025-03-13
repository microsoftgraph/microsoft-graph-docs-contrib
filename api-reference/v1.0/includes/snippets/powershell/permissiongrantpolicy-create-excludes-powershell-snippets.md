---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	permissionType = "delegated"
	resourceApplication = "00000003-0000-0000-c000-000000000000"
}

New-MgPolicyPermissionGrantPolicyExclude -PermissionGrantPolicyId $permissionGrantPolicyId -BodyParameter $params

```