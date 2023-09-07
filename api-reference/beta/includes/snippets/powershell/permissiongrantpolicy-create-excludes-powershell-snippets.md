---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	permissionType = "delegated"
	resourceApplication = "00000003-0000-0000-c000-000000000000"
}

New-MgBetaPolicyPermissionGrantPolicyExclude -PermissionGrantPolicyId $permissionGrantPolicyId -BodyParameter $params

```