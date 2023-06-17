---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Messages.Item.Reply.ReplyPostRequestBody
{
	Message = new Message
	{
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "samanthab@contoso.onmicrosoft.com",
					Name = "Samantha Booth",
				},
			},
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "randiw@contoso.onmicrosoft.com",
					Name = "Randi Welch",
				},
			},
		},
	},
	Comment = "Samantha, Randi, would you name the group please?",
};
await graphClient.Me.Messages["{message-id}"].Reply.PostAsync(requestBody);


```