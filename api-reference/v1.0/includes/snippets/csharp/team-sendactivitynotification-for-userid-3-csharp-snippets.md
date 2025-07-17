---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Users.Item.Teamwork.SendActivityNotification;
using Microsoft.Graph.Models;

var requestBody = new SendActivityNotificationPostRequestBody
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
	AdditionalData = new Dictionary<string, object>
	{
		{
			"iconId" , "announcementCreated"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Users["{user-id}"].Teamwork.SendActivityNotification.PostAsync(requestBody);


```