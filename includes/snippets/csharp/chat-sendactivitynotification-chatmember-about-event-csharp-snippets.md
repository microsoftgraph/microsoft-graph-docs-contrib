---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.Text,
	Value = "Weekly Virtual Social",
	WebUrl = "Teams webUrl"
};

var previewText = new ItemBody
{
	Content = "It will be fun!"
};

var activityType = "eventCreated";

var recipient = new ChatMembersNotificationRecipient
{
	ChatId = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"
};

await graphClient.Chats["{chat-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,null,recipient)
	.Request()
	.PostAsync();

```