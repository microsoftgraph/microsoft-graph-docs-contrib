---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	requests = @(
		@{
			entityTypes = @(
				"chatMessage"
			)
			query = @{
				queryString = "test"
			}
			from = 0
			size = 25
		}
	)
}

Invoke-MgQuerySearch -BodyParameter $params

```