---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Message
{
	Subject = "Annual review",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "You should be proud!",
	},
	ToRecipients = new List<Recipient>
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "rufus@contoso.com",
			},
		},
	},
	Extensions = new List<Extension>
	{
		new OpenTypeExtension
		{
			OdataType = "microsoft.graph.openTypeExtension",
			ExtensionName = "Com.Contoso.Referral",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"companyName" , "Wingtip Toys"
				},
				{
					"expirationDate" , "2015-12-30T11:00:00.000Z"
				},
				{
					"dealValue" , 10000
				},
			},
		},
	},
};
var result = await graphClient.Me.Messages.PostAsync(requestBody);


```