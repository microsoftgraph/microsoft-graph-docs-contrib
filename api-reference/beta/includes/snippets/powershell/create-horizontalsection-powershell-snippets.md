---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	emphasis = "soft"
	layout = "oneColumn"
	id = "3"
	columns = @(
		@{
			id = "1"
			width = 12
			webparts = @(
				@{
					id = "20a69b85-529c-41f3-850e-c93458aa74eb"
					innerHtml = "<p>sample text in text web part</p>"
				}
			)
		}
	)
}

New-MgBetaSitePageCanvaLayoutHorizontalSection -SiteId $siteId -SitePageId $sitePageId -BodyParameter $params

```