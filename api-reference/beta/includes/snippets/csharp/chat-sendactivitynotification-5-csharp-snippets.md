---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Chats.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/beta/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
	},
	ActivityType = "taskCreated",
	PreviewText = new ItemBody
	{
		Content = "New Task Created",
	},
	Recipient = new TeamworkNotificationRecipient
	{
		OdataType = "microsoft.graph.chatMembersNotificationRecipient",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"chatId" , "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
			},
		},
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