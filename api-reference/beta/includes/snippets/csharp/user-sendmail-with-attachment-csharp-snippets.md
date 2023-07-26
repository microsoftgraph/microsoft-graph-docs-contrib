---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

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
					Address = "meganb@contoso.onmicrosoft.com",
				},
			},
		},
		Attachments = new List<Attachment>
		{
			new FileAttachment
			{
				OdataType = "#microsoft.graph.fileAttachment",
				Name = "attachment.txt",
				ContentType = "text/plain",
				ContentBytes = Convert.FromBase64String("SGVsbG8gV29ybGQh"),
			},
		},
	},
};
await graphClient.Me.SendMail.PostAsync(requestBody);


```