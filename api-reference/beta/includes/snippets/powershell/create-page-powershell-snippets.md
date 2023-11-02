---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	"@odata.type" = "#microsoft.graph.sitePage"
	name = "test.aspx"
	title = "test"
	pageLayout = "article"
	showComments = $true
	showRecommendedPages = $false
}

New-MgBetaSitePage -SiteId $siteId -BodyParameter $params

```