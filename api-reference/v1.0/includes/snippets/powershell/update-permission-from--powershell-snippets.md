---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	roles = @(
		"read"
	)
}

Update-MgSitePermission -SiteId $siteId -PermissionId $permissionId -BodyParameter $params

```