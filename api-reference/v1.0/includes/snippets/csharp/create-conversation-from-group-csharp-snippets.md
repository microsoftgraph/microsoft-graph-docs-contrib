---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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
								Address = "AdeleV@contoso.com",
							},
						},
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Conversations.PostAsync(requestBody);


```