---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teamwork.SendActivityNotificationToRecipients;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendActivityNotificationToRecipientsPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}",
	},
	ActivityType = "pendingFinanceApprovalRequests",
	PreviewText = new ItemBody
	{
		Content = "Internal spending team has a pending finance approval requests",
	},
	Recipients = new List<TeamworkNotificationRecipient>
	{
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "569363e2-4e49-4661-87f2-16f245c5d66a",
		},
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "ab88234e-0874-477c-9638-d144296ed04f",
		},
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc",
		},
	},
	TemplateParameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "pendingRequestCount",
			Value = "5",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teamwork.SendActivityNotificationToRecipients.PostAsync(requestBody);


```