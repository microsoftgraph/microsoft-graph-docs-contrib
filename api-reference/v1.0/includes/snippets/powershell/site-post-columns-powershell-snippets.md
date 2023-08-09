---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Sites

$params = @{
	description = "test"
	enforceUniqueValues = $false
	hidden = $false
	indexed = $false
	name = "Title"
	text = @{
		allowMultipleLines = $false
		appendChangesToExistingText = $false
		linesForEditing = 0
		maxLength = 255
	}
}

New-MgSiteColumn -SiteId $siteId -BodyParameter $params

```