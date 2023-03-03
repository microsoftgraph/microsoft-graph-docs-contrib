---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teamwork.SendActivityNotificationToRecipients.SendActivityNotificationToRecipientsPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/{teamsAppId}",
	},
	ActivityType = "pendingFinanceApprovalRequests",
	PreviewText = new ItemBody
	{
		Content = "Internal spending team has a pending finance approval requests",
	},
	Recipients = new List<TeamworkNotificationRecipient>
	{
		new TeamworkNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userId" , "569363e2-4e49-4661-87f2-16f245c5d66a"
				},
			},
		},
		new TeamworkNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userId" , "ab88234e-0874-477c-9638-d144296ed04f"
				},
			},
		},
		new TeamworkNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userId" , "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
				},
			},
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
await graphClient.Teamwork.SendActivityNotificationToRecipients.PostAsync(requestBody);


```