---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}"
};

var activityType = "approvalRequired";

var previewText = new ItemBody
{
	Content = "Deployment requires your approval"
};

var recipient = new AadUserNotificationRecipient
{
	UserId = "jacob@contoso.com"
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "approvalTaskId",
		Value = "2020AAGGTAPP"
	}
};

await graphClient.Chats["{chat-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,templateParameters,recipient)
	.Request()
	.PostAsync();

```