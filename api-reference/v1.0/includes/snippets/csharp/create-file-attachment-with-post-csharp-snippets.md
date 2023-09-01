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
			Content = "Which quarter does that file cover? See my attachment.",
		},
		Attachments = new List<Attachment>
		{
			new FileAttachment
			{
				OdataType = "#microsoft.graph.fileAttachment",
				Name = "Another file as attachment",
				ContentBytes = Convert.FromBase64String("VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu"),
			},
		},
	},
};
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```