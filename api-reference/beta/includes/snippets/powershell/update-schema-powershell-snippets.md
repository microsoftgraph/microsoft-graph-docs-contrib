---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	BaseType = "microsoft.graph.externalItem"
	Properties = @(
		@{
			Name = "ticketTitle"
			Type = "string"
			IsSearchable = "true"
			IsRetrievable = "true"
			Labels = @(
				"title"
			)
		}
		@{
			Name = "priority"
			Type = "string"
			IsQueryable = "true"
			IsRetrievable = "true"
			IsSearchable = "false"
		}
		@{
			Name = "assignee"
			Type = "string"
			IsRetrievable = "true"
		}
	)
}

Update-MgExternalConnectionSchema -ExternalConnectionId $externalConnectionId -BodyParameter $params

```