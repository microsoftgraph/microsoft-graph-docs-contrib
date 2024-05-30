---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Sites

$params = @{
	fields = @{
		Title = "Widget"
		Color = "Purple"
		Weight = 
	}
}

New-MgBetaSiteListItem -SiteId $siteId -ListId $listId -BodyParameter $params

```