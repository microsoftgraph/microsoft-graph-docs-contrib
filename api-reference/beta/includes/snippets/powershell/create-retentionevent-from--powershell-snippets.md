---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionEvent"
	DisplayName = "String"
	Description = "String"
	EventQueries = @(
		@{
			"@odata.type" = "microsoft.graph.security.eventQueries"
		}
	)
	EventTriggerDateTime = [System.DateTime]::Parse("String (timestamp)")
	CreatedBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	EventPropagationResults = @(
		@{
			"@odata.type" = "microsoft.graph.security.eventPropagationResult"
		}
	)
	EventStatus = @{
		"@odata.type" = "microsoft.graph.security.retentionEventStatus"
	}
	LastStatusUpdateDateTime = [System.DateTime]::Parse("String (timestamp)")
}

New-MgSecurityTriggerRetentionEvent -BodyParameter $params

```