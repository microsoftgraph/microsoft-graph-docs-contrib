---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	"@odata.type" = "#microsoft.graph.pageTemplate"
	name = "test.aspx"
	title = "test"
}

New-MgBetaSitePage -SiteId $siteId -BodyParameter $params

```