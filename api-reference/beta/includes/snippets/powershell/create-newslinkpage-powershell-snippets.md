---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	"@odata.type" = "#microsoft.graph.newsLinkPage"
	newsWebUrl = "https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car"
	title = "Contoso Unveils First Self-Driving Car"
}

New-MgBetaSitePage -SiteId $siteId -BodyParameter $params

```