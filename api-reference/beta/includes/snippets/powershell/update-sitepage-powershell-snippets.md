---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	"@odata.type" = "#microsoft.graph.sitePage"
	Title = "sample"
	ShowComments = $true
	ShowRecommendedPages = $false
}

Update-MgSitePage -SiteId $siteId -SitePageId $sitePageId -BodyParameter $params

```