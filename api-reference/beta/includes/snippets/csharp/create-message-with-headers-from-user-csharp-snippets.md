---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Message
{
	Subject = "9/8/2018: concert",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "The group represents Washington.",
	},
	ToRecipients = new List<Recipient>
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "AlexW@contoso.com",
			},
		},
	},
	InternetMessageHeaders = new List<InternetMessageHeader>
	{
		new InternetMessageHeader
		{
			Name = "x-custom-header-group-name",
			Value = "Washington",
		},
		new InternetMessageHeader
		{
			Name = "x-custom-header-group-id",
			Value = "WA001",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages.PostAsync(requestBody);


```