---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	Color = "Fuchsia"
	Quantity = 
}

Update-MgSiteListItemField -SiteId $siteId -ListId $listId -ListItemId $listItemId -BodyParameter $params

```