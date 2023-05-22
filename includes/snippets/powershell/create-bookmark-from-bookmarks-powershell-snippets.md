---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	displayName = "Contoso Install Site"
	webUrl = "http://www.contoso.com/"
	description = "Try or buy Contoso for Home or Business and view product information"
	keywords = @{
		keywords = @(
			"Contoso"
			"install"
		)
		reservedKeywords = @(
			"Contoso"
		)
		matchSimilarKeywords = $true
	}
	state = "published"
}

New-MgSearchBookmark -BodyParameter $params

```