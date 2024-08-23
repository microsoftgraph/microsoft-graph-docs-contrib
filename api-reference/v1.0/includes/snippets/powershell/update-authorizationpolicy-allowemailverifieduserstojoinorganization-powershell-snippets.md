---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	allowEmailVerifiedUsersToJoinOrganization = $false
}

Update-MgPolicyAuthorizationPolicy -BodyParameter $params

```