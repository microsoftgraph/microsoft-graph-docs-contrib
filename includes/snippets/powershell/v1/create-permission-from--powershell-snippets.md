---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	roles = @(
	"write"
)
grantedTo = @{
	application = @{
		id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
	}
}
}

New-MgSitePermission -SiteId $siteId -BodyParameter $params

```