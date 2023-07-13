---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	emphasis = "strong"
	layout = "twoColumns"
}

Update-MgBetaSitePageCanvaLayoutHorizontalSection -SiteId $siteId -SitePageId $sitePageId -HorizontalSectionId $horizontalSectionId -BodyParameter $params

```