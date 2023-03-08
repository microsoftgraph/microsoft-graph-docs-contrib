---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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
			new Attachment
			{
				OdataType = "#microsoft.graph.itemAttachment",
				Name = "Holiday event",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"item" , new 
						{
							OdataType = "microsoft.graph.event",
							Subject = "Discuss gifts for children",
							Body = new 
							{
								ContentType = "HTML",
								Content = "Let's look for funding!",
							},
							Start = new 
							{
								DateTime = "2019-12-02T18:00:00",
								TimeZone = "Pacific Standard Time",
							},
							End = new 
							{
								DateTime = "2019-12-02T19:00:00",
								TimeZone = "Pacific Standard Time",
							},
						}
					},
				},
			},
		},
	},
};
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```