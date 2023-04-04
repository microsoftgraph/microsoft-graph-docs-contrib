---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.SendMail.SendMailPostRequestBody
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
					Address = "samanthab@contoso.onmicrosoft.com",
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
					Address = "danas@contoso.onmicrosoft.com",
				},
			},
		},
	},
};
await graphClient.Me.SendMail.PostAsync(requestBody);


```