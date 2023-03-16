---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	Subject = "Party planning",
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
};
var result = await graphClient.Me.Messages.PostAsync(requestBody);


```