---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Messages.Item.Reply;
using Microsoft.Graph.Models;

var requestBody = new ReplyPostRequestBody
{
	Message = new Message
	{
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "samanthab@contoso.com",
					Name = "Samantha Booth",
				},
			},
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "randiw@contoso.com",
					Name = "Randi Welch",
				},
			},
		},
	},
	Comment = "Samantha, Randi, would you name the group please?",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Messages["{message-id}"].Reply.PostAsync(requestBody);


```