---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	Topic = @{
		Source = "entityUrl"
		Value = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}"
	}
	ActivityType = "pendingFinanceApprovalRequests"
	PreviewText = @{
		Content = "Internal spending team has a pending finance approval requests"
	}
	Recipients = @(
		@{
			"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
			UserId = "569363e2-4e49-4661-87f2-16f245c5d66a"
		}
		@{
			"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
			UserId = "ab88234e-0874-477c-9638-d144296ed04f"
		}
		@{
			"@odata.type" = "microsoft.graph.aadUserNotificationRecipient"
			UserId = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
		}
	)
	TemplateParameters = @(
		@{
			Name = "pendingRequestCount"
			Value = "5"
		}
	)
}

Send-MgTeamworkActivityNotificationToRecipient -BodyParameter $params

```