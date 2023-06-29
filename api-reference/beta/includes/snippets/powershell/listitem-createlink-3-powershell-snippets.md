---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	type = "embed"
}

New-MgSiteListItemLink -SiteId $siteId -ListId $listId -ListItemId $listItemId -BodyParameter $params

```