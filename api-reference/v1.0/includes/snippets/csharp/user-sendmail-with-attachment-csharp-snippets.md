---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.SendMail.SendMailPostRequestBody
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
			new Attachment
			{
				OdataType = "#microsoft.graph.fileAttachment",
				Name = "attachment.txt",
				ContentType = "text/plain",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"contentBytes" , "SGVsbG8gV29ybGQh"
					},
				},
			},
		},
	},
};
await graphClient.Me.SendMail.PostAsync(requestBody);


```