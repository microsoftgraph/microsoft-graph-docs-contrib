---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Teamwork.SendActivityNotificationToRecipients;
using Microsoft.Graph.Models;

var requestBody = new SendActivityNotificationToRecipientsPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.Text,
		Value = "Deployment Approvals Channel",
		WebUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
	},
	ActivityType = "announcementPosted",
	PreviewText = new ItemBody
	{
		Content = "new announcemnet posted",
	},
	TemplateParameters = new List<KeyValuePair>
	{
		new KeyValuePair
		{
			Name = "deploymentId",
			Value = "6788662",
		},
	},
	Recipients = new List<TeamworkNotificationRecipient>
	{
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "569363e2-4e49-4661-87f2-16f245c5d66a",
		},
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "ab88234e-0874-477c-9638-d144296ed04f",
		},
		new AadUserNotificationRecipient
		{
			OdataType = "microsoft.graph.aadUserNotificationRecipient",
			UserId = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc",
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
await graphClient.Teamwork.SendActivityNotificationToRecipients.PostAsync(requestBody);


```