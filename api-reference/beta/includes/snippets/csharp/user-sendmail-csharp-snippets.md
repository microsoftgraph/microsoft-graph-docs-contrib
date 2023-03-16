---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.SendMail.SendMailPostRequestBody
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
					Address = "samanthab@contoso.onmicrosoft.com",
				},
			},
		},
		CcRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "danas@contoso.onmicrosoft.com",
				},
			},
		},
	},
	SaveToSentItems = false,
};
await graphClient.Me.SendMail.PostAsync(requestBody);


```