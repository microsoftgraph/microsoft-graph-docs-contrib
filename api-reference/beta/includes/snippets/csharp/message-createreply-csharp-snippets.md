---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.Messages.Item.CreateReply.CreateReplyPostRequestBody
{
	Message = new Message
	{
		ToRecipients = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "samanthab@contoso.onmicrosoft.com",
					Name = "Samantha Booth",
				},
			},
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Address = "randiw@contoso.onmicrosoft.com",
					Name = "Randi Welch",
				},
			},
		},
	},
	Comment = "Samantha, Randi, would you name the group if the project is approved, please?",
};
var result = await graphClient.Me.Messages["{message-id}"].CreateReply.PostAsync(requestBody);


```