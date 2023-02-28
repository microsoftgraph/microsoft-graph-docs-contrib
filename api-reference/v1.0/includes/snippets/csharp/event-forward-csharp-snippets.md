---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.Events.Item.MicrosoftGraphForward.ForwardPostRequestBody
{
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
	Comment = "Dana, hope you can make this meeting.",
};
await graphClient.Me.Events["event-id"].MicrosoftGraphForward.PostAsync(requestBody);


```