---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Message
{
	Subject = "Did you see last night's game?",
	Importance = Importance.Low,
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "They were <b>awesome</b>!",
	},
	ToRecipients = new List<Recipient>
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "AdeleV@contoso.com",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages.PostAsync(requestBody);


```