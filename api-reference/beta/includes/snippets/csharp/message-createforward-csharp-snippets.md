---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.CreateForward.CreateForwardPostRequestBody
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
					Address = "danas@contoso.onmicrosoft.com",
					Name = "Dana Swope",
				},
			},
		},
	},
	Comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.",
};
var result = await graphClient.Me.Messages["{message-id}"].CreateForward.PostAsync(requestBody);


```