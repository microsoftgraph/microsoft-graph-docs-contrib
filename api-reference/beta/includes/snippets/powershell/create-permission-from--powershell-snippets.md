---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	roles = @(
	"write"
)
grantedToIdentities = @(
	@{
		application = @{
			id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
			displayName = "Contoso Time Manager App"
		}
	}
)
}

New-MgBetaSitePermission -SiteId $siteId -BodyParameter $params

```