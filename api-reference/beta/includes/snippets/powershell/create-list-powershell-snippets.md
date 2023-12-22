---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

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

New-MgBetaSiteList -SiteId $siteId -BodyParameter $params

```