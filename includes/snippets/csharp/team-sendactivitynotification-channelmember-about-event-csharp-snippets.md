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

var recipient = new ChannelMembersNotificationRecipient
{
	TeamId = "7155e3c8-175e-4311-97ef-572edc3aa3db",
	ChannelId = "19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2"
};

await graphClient.Teams["{team-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,null,recipient)
	.Request()
	.PostAsync();

```