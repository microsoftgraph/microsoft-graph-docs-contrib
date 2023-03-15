---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "entityUrl"
		Value = "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7"
	}
	ActivityType = "pendingFinanceApprovalRequests"
	PreviewText = @{
		Content = "Internal spending team has a pending finance approval requests"
	}
	Recipient = @{
		"@odata.type" = "microsoft.graph.channelMembersNotificationRecipient"
		TeamId = "e8bece96-d393-4b9b-b8da-69cedef1a7e7"
		ChannelId = "19:3d61a2309f094f4a9310b20f1db37520@thread.tacv2"
	}
	TemplateParameters = @(
		@{
			Name = "pendingRequestCount"
			Value = "5"
		}
	)
}

Send-MgTeamActivityNotification -TeamId $teamId -BodyParameter $params

```