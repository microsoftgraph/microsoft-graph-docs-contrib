---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	permissionGrantPolicyIdsAssignedToDefaultUserRole = @(
		"managePermissionGrantsForSelf.microsoft-user-default-low"
	)
}

Update-MgBetaPolicyAuthorizationPolicy -AuthorizationPolicyId $authorizationPolicyId -BodyParameter $params

```