---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenTypeExtension
{
	OdataType = "microsoft.graph.openTypeExtension",
	ExtensionName = "Com.Contoso.Referral",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"companyName" , "Wingtip Toys"
		},
		{
			"dealValue" , 500050
		},
		{
			"expirationDate" , "2015-12-03T10:00:00.000Z"
		},
	},
};
var result = await graphClient.Me.Messages["{message-id}"].Extensions.PostAsync(requestBody);


```