---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Messages.Item.CreateReply;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreateReplyPostRequestBody
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
	Comment = "Samantha, Randi, would you name the group if the project is approved, please?",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].CreateReply.PostAsync(requestBody);


```