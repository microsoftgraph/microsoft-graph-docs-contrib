---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
			DateTime = "2016-12-02T18:00:00",
			TimeZone = "Pacific Standard Time",
		},
		End = new DateTimeTimeZone
		{
			DateTime = "2016-12-02T19:00:00",
			TimeZone = "Pacific Standard Time",
		},
	},
};
var result = await graphClient.Me.Messages["{message-id}"].Attachments.PostAsync(requestBody);


```