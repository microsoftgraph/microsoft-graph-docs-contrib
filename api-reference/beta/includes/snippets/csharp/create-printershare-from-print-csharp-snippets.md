---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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