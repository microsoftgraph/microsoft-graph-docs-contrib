---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "entityUrl"
		Value = "https://graph.microsoft.com/beta/teams/{teamId}"
	}
	ActivityType = "pendingFinanceApprovalRequests"
	PreviewText = @{
		Content = "Internal spending team has a pending finance approval requests"
	}
	Recipient = @{
		"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
		UserId = "569363e2-4e49-4661-87f2-16f245c5d66a"
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