---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Messages.Item.MicrosoftGraphForward.ForwardPostRequestBody
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
await graphClient.Me.Messages["message-id"].MicrosoftGraphForward.PostAsync(requestBody);


```