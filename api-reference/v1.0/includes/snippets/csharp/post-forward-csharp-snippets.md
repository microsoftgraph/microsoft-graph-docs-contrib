---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.Threads.Item.Posts.Item.MicrosoftGraphForward.ForwardPostRequestBody
{
	Comment = "comment-value",
	ToRecipients = new List<Recipient>
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Name = "name-value",
				Address = "address-value",
			},
		},
	},
};
await graphClient.Groups["group-id"].Threads["conversationThread-id"].Posts["post-id"].MicrosoftGraphForward.PostAsync(requestBody);


```