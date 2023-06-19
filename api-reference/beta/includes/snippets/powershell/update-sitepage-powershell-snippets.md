---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	"@odata.type" = "#microsoft.graph.sitePage"
	title = "sample"
	showComments = $true
	showRecommendedPages = $false
}

Update-MgSitePage -SiteId $siteId -SitePageId $sitePageId -BodyParameter $params

```