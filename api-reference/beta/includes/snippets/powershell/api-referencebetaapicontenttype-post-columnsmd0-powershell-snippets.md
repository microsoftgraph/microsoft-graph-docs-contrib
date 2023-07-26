---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	"sourceColumn@odata.bind" = "https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103"
}

New-MgBetaSiteContentTypeColumn -SiteId $siteId -ContentTypeId $contentTypeId -BodyParameter $params

```