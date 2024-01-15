---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	requests = @(
		@{
			entityTypes = @(
				"listItem"
			)
			query = @{
				queryString = "contoso"
				queryTemplate = '{searchTerms} CreatedBy:Bob"
			}
			from = 0
			size = 25
		}
	)
}

Invoke-MgQuerySearch -BodyParameter $params

```