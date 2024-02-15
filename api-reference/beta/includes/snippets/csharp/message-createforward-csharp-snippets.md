---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Messages.Item.CreateForward;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreateForwardPostRequestBody
{
	Message = new Message
	{
		IsDeliveryReceiptRequested = true,
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "danas@contoso.com",
					Name = "Dana Swope",
				},
			},
		},
	},
	Comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Messages["{message-id}"].CreateForward.PostAsync(requestBody);


```