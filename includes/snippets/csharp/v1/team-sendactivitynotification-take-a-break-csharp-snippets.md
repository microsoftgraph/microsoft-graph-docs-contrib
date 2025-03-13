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
		Value = "https://graph.microsoft.com/v1.0/teams/{teamId}",
	},
	ActivityType = "systemDefault",
	PreviewText = new ItemBody
	{
		Content = "Take a break",
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
			Name = "systemDefaultText",
			Value = "You need to take a short break",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teams["{team-id}"].SendActivityNotification.PostAsync(requestBody);


```