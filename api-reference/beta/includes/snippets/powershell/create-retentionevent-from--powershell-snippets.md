---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionEvent"
	displayName = "String"
	description = "String"
	eventQueries = @(
		@{
			"@odata.type" = "microsoft.graph.security.eventQueries"
		}
	)
	eventTriggerDateTime = [System.DateTime]::Parse("String (timestamp)")
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	eventPropagationResults = @(
		@{
			"@odata.type" = "microsoft.graph.security.eventPropagationResult"
		}
	)
	eventStatus = @{
		"@odata.type" = "microsoft.graph.security.retentionEventStatus"
	}
	lastStatusUpdateDateTime = [System.DateTime]::Parse("String (timestamp)")
}

New-MgSecurityTriggerRetentionEvent -BodyParameter $params

```