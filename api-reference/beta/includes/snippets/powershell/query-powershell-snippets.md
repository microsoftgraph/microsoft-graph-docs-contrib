---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	requests = @(
		@{
			entityTypes = @(
				"externalItem"
			)
			contentSources = @(
				"/external/connections/connectionfriendlyname"
			)
			query = @{
				queryString = "contoso product"
			}
			from = 0
			size = 25
			fields = @(
				"title"
				"description"
			)
		}
	)
}

Invoke-MgQuerySearch -BodyParameter $params

```