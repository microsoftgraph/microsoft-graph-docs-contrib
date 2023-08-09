---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.Threads.Item.Reply.ReplyPostRequestBody
{
	Post = new Post
	{
		Body = new ItemBody
		{
			ContentType = BodyType.Text,
			Content = "I attached an event.",
		},
		Attachments = new List<Attachment>
		{
			new ItemAttachment
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
						DateTime = "2019-12-02T18:00:00",
						TimeZone = "Pacific Standard Time",
					},
					End = new DateTimeTimeZone
					{
						DateTime = "2019-12-02T19:00:00",
						TimeZone = "Pacific Standard Time",
					},
				},
			},
		},
	},
};
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```