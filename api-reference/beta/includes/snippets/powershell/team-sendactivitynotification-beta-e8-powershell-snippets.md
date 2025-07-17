---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	topic = @{
		source = "entityUrl"
		value = "https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}"
	}
	activityType = "announcementPosted"
	previewText = @{
		content = "new announcemnet posted"
	}
	iconId = "announcementCreated"
	recipient = @{
		"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
		userId = "jacob@contoso.com"
	}
	templateParameters = @(
		@{
			name = "reservationId"
			value = "TREEE433"
		}
		@{
			name = "currentSlot"
			value = "23"
		}
	)
}

Send-MgBetaTeamActivityNotification -TeamId $teamId -BodyParameter $params

```