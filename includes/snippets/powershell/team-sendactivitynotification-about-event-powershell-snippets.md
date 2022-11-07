---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "text"
		Value = "Weekly Virtual Social"
		WebUrl = "Teams webUrl"
	}
	PreviewText = @{
		Content = "It will be fun!"
	}
	ActivityType = "eventCreated"
	Recipient = @{
		"@odata.type" = "microsoft.graph.teamMembersNotificationRecipient"
		TeamId = "7155e3c8-175e-4311-97ef-572edc3aa3db"
	}
}

Send-MgTeamActivityNotification -TeamId $teamId -BodyParameter $params

```