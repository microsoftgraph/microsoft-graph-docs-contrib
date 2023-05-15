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
		Value = "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}",
	},
	ActivityType = "reservationUpdated",
	PreviewText = new ItemBody
	{
		Content = "You have moved up the queue",
	},
	Recipient = new TeamworkNotificationRecipient
	{
		OdataType = "microsoft.graph.aadUserNotificationRecipient",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"userId" , "569363e2-4e49-4661-87f2-16f245c5d66a"
			},
		},
	},
	TemplateParameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "reservationId",
			Value = "TREEE433",
		},
		new KeyValuePair
		{
			Name = "currentSlot",
			Value = "23",
		},
	},
};
await graphClient.Teams["{team-id}"].SendActivityNotification.PostAsync(requestBody);


```