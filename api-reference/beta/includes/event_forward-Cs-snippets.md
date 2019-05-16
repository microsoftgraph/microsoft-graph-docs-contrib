---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ToRecipients = new List<Recipient>()
{
	new Recipient
	{
		EmailAddress = new EmailAddress
		{
			Address = "danas@contoso.onmicrosoft.com",
			Name = "Dana Swope",
		},
	},
};

var Comment = "Dana, hope you can make this meeting.";

await graphClient.Me.Events["{id}"]
	.Forward(comment,toRecipients)
	.Request()
	.PostAsync();

```