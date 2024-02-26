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
		Subject = "Project kickoff",
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Name = "Samantha Booth",
					Address = "samanthab@contoso.com",
				},
			},
		},
		Mentions = new List<Mention>
		{
			new Mention
			{
				Mentioned = new EmailAddress
				{
					Name = "Dana Swope",
					Address = "danas@contoso.com",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.SendMail.PostAsync(requestBody);


```