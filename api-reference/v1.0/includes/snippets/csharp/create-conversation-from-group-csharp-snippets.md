---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Conversation
{
	Topic = "Take your wellness days and rest",
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
						Content = "Contoso cares about you: Rest and Recharge",
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