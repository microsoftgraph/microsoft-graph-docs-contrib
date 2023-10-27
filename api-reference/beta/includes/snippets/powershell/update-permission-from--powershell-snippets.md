---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	roles = @(
		"read"
	)
}

Update-MgBetaSitePermission -SiteId $siteId -PermissionId $permissionId -BodyParameter $params

```