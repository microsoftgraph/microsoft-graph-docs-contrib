---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Chats.Item.SendActivityNotification;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendActivityNotificationPostRequestBody
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
	Recipient = new ChatMembersNotificationRecipient
	{
		OdataType = "microsoft.graph.chatMembersNotificationRecipient",
		ChatId = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2",
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Chats["{chat-id}"].SendActivityNotification.PostAsync(requestBody);


```