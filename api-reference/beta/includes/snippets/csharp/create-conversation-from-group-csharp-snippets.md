---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Conversation
{
	Topic = "New head count",
	Threads = new List<ConversationThread>
	{
		new ConversationThread
		{
			Posts = new List<Post>
			{
				new Post
				{
					Body = new ItemBody
					{
						ContentType = BodyType.Html,
						Content = "The confirmation will come by the end of the week.",
					},
					NewParticipants = new List<Recipient>
					{
						new Recipient
						{
							EmailAddress = new EmailAddress
							{
								Name = "Adele Vance",
								Address = "AdeleV@contoso.onmicrosoft.com",
							},
						},
					},
				},
			},
		},
	},
};
var result = await graphClient.Groups["{group-id}"].Conversations.PostAsync(requestBody);


```