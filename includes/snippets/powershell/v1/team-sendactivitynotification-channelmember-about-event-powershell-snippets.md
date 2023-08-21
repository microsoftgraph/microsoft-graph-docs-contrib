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
		"@odata.type" = "microsoft.graph.channelMembersNotificationRecipient"
		teamId = "7155e3c8-175e-4311-97ef-572edc3aa3db"
		channelId = "19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2"
	}
}

Send-MgTeamActivityNotification -TeamId $teamId -BodyParameter $params

```