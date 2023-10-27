---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Chats.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/beta/chats/{chatId}",
	},
	ActivityType = "taskCreated",
	PreviewText = new ItemBody
	{
		Content = "New Task Created",
	},
	Recipient = new AadUserNotificationRecipient
	{
		OdataType = "microsoft.graph.aadUserNotificationRecipient",
		UserId = "569363e2-4e49-4661-87f2-16f245c5d66a",
	},
	TemplateParameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "taskId",
			Value = "Task 12322",
		},
	},
};
await graphClient.Chats["{chat-id}"].SendActivityNotification.PostAsync(requestBody);


```