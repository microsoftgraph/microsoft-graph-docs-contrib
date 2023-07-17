---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7",
	},
	ActivityType = "pendingFinanceApprovalRequests",
	PreviewText = new ItemBody
	{
		Content = "Internal spending team has a pending finance approval requests",
	},
	Recipient = new ChannelMembersNotificationRecipient
	{
		OdataType = "microsoft.graph.channelMembersNotificationRecipient",
		TeamId = "e8bece96-d393-4b9b-b8da-69cedef1a7e7",
		ChannelId = "19:3d61a2309f094f4a9310b20f1db37520@thread.tacv2",
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