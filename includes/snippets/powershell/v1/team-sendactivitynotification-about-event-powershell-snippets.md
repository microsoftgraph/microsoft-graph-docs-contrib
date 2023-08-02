---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	topic = @{
		source = "text"
		value = "Weekly Virtual Social"
		webUrl = "Teams webUrl"
	}
	previewText = @{
		content = "It will be fun!"
	}
	activityType = "eventCreated"
	recipient = @{
		"@odata.type" = "microsoft.graph.teamMembersNotificationRecipient"
		teamId = "7155e3c8-175e-4311-97ef-572edc3aa3db"
	}
}

Send-MgTeamActivityNotification -TeamId $teamId -BodyParameter $params

```