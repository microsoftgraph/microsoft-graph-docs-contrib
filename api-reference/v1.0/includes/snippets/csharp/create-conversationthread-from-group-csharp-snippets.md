---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConversationThread
{
	Topic = "New Conversation Thread Topic",
	Posts = new List<Post>
	{
		new Post
		{
			Body = new ItemBody
			{
				ContentType = BodyType.Html,
				Content = "this is body content",
			},
			NewParticipants = new List<Recipient>
			{
				new Recipient
				{
					EmailAddress = new EmailAddress
					{
						Name = "Alex Darrow",
						Address = "alexd@contoso.com",
					},
				},
			},
		},
	},
};
var result = await graphClient.Groups["{group-id}"].Threads.PostAsync(requestBody);


```