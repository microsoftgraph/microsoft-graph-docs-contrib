---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrinterShare
{
	Name = "name-value",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"printer@odata.bind" , "https://graph.microsoft.com/beta/print/printers/{id}"
		},
	},
};
var result = await graphClient.Print.Shares.PostAsync(requestBody);


```