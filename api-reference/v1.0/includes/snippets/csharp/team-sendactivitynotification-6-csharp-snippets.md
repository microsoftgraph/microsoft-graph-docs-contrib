---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/v1.0/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7",
	},
	ActivityType = "pendingFinanceApprovalRequests",
	PreviewText = new ItemBody
	{
		Content = "Internal spending team has a pending finance approval requests",
	},
	Recipient = new TeamworkNotificationRecipient
	{
		OdataType = "microsoft.graph.channelMembersNotificationRecipient",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"teamId" , "e8bece96-d393-4b9b-b8da-69cedef1a7e7"
			},
			{
				"channelId" , "19:3d61a2309f094f4a9310b20f1db37520@thread.tacv2"
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
await graphClient.Teams["{team-id}"].SendActivityNotification.PostAsync(requestBody);


```