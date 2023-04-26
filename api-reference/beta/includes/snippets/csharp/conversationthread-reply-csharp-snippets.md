---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Groups.Item.Threads.Item.Reply.ReplyPostRequestBody
{
	Post = new Post
	{
		Body = new ItemBody
		{
			ContentType = BodyType.Text,
			Content = "content-value",
		},
	},
};
await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Reply.PostAsync(requestBody);


```