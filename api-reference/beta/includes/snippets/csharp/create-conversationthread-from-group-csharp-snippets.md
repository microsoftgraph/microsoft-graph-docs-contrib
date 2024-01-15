---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Threads.PostAsync(requestBody);


```