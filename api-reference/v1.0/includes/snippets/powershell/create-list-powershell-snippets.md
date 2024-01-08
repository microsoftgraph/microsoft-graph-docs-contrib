---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	displayName = "Books"
	columns = @(
		@{
			name = "Author"
			text = @{
			}
		}
		@{
			name = "PageCount"
			number = @{
			}
		}
	)
	list = @{
		template = "genericList"
	}
}

New-MgSiteList -SiteId $siteId -BodyParameter $params

```