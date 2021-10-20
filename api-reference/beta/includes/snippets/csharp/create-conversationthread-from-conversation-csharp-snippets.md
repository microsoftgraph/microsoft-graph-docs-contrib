---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	Topic = "Take your wellness days and rest",
	Posts = new ConversationThreadPostsCollectionPage()
	{
		new Post
		{
			Body = new ItemBody
			{
				ContentType = BodyType.Html,
				Content = "Waiting for the summer holidays."
			}
		}
	}
};

await graphClient.Groups["{group-id}"].Conversations["{conversation-id}"].Threads
	.Request()
	.AddAsync(conversationThread);

```