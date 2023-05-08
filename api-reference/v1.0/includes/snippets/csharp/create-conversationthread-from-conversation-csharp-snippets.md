---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConversationThread
{
	Topic = "Take your wellness days and rest",
	Posts = new List<Post>
	{
		new Post
		{
			Body = new ItemBody
			{
				ContentType = BodyType.Html,
				Content = "Waiting for the summer holidays.",
			},
		},
	},
};
var result = await graphClient.Groups["{group-id}"].Conversations["{conversation-id}"].Threads.PostAsync(requestBody);


```