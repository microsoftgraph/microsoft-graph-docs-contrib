---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.SendMail;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendMailPostRequestBody
{
	Message = new Message
	{
		Subject = "Meet for lunch?",
		Body = new ItemBody
		{
			ContentType = BodyType.Text,
			Content = "The new cafeteria is open.",
		},
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "samanthab@contoso.com",
				},
			},
		},
		CcRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "danas@contoso.com",
				},
			},
		},
	},
	SaveToSentItems = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.SendMail.PostAsync(requestBody);


```