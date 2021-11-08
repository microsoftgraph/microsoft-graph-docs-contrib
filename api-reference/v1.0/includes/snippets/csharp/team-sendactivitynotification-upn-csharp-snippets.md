---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/tabs/{tabId}"
};

var activityType = "reservationUpdated";

var previewText = new ItemBody
{
	Content = "You have moved up the queue"
};

var recipient = new AadUserNotificationRecipient
{
	UserId = "jacob@contoso.com"
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "reservationId",
		Value = "TREEE433"
	},
	new KeyValuePair
	{
		Name = "currentSlot",
		Value = "23"
	}
};

await graphClient.Teams["{team-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,templateParameters,recipient)
	.Request()
	.PostAsync();

```