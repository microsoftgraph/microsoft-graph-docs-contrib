---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ItemAttachment
{
	OdataType = "#microsoft.graph.itemAttachment",
	Name = "Holiday event",
	Item = new Event
	{
		OdataType = "microsoft.graph.event",
		Subject = "Discuss gifts for children",
		Body = new ItemBody
		{
			ContentType = BodyType.Html,
			Content = "Let's look for funding!",
		},
		Start = new DateTimeTimeZone
		{
			DateTime = "2020-01-12T18:00:00",
			TimeZone = "Pacific Standard Time",
		},
		End = new DateTimeTimeZone
		{
			DateTime = "2020-01-12T19:00:00",
			TimeZone = "Pacific Standard Time",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Outlook.Tasks["{outlookTask-id}"].Attachments.PostAsync(requestBody);


```