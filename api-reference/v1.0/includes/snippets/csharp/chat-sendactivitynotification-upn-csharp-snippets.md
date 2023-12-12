---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Chats.Item.SendActivityNotification;
using Microsoft.Graph.Models;

var requestBody = new SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}",
	},
	ActivityType = "approvalRequired",
	PreviewText = new ItemBody
	{
		Content = "Deployment requires your approval",
	},
	Recipient = new AadUserNotificationRecipient
	{
		OdataType = "microsoft.graph.aadUserNotificationRecipient",
		UserId = "jacob@contoso.com",
	},
	TemplateParameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "approvalTaskId",
			Value = "2020AAGGTAPP",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Chats["{chat-id}"].SendActivityNotification.PostAsync(requestBody);


```