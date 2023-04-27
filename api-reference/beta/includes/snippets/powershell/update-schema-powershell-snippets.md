---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	baseType = "microsoft.graph.externalItem"
	properties = @(
		@{
			name = "ticketTitle"
			type = "string"
			isSearchable = "true"
			isRetrievable = "true"
			labels = @(
				"title"
			)
		}
		@{
			name = "priority"
			type = "string"
			isQueryable = "true"
			isRetrievable = "true"
			isSearchable = "false"
		}
		@{
			name = "assignee"
			type = "string"
			isRetrievable = "true"
		}
	)
}

Update-MgExternalConnectionSchema -ExternalConnectionId $externalConnectionId -BodyParameter $params

```