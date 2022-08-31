---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	Requests = @(
		@{
			EntityTypes = @(
				"externalItem"
			)
			ContentSources = @(
				"/external/connections/connectionfriendlyname"
			)
			Query = @{
				QueryString = "contoso product"
			}
			From = 0
			Size = 25
			Fields = @(
				"title"
				"description"
			)
		}
	)
}

Invoke-MgQuerySearch -BodyParameter $params

```