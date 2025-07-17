---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teams.Item.SendActivityNotification;
using Microsoft.Graph.Models;

var requestBody = new SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.EntityUrl,
		Value = "https://graph.microsoft.com/v1.0/teams/{teamId}/channels/{channelId}/messages/{messageId}/replies/{replyId}",
	},
	ActivityType = "announcementPosted",
	PreviewText = new ItemBody
	{
		Content = "new announcemnet posted",
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
			Name = "reservationId",
			Value = "TREEE433",
		},
		new KeyValuePair
		{
			Name = "currentSlot",
			Value = "23",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"iconId" , "announcementCreated"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teams["{team-id}"].SendActivityNotification.PostAsync(requestBody);


```