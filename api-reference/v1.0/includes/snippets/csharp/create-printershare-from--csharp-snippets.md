---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrinterShare
{
	DisplayName = "ShareName",
	AllowAllUsers = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"printer@odata.bind" , "https://graph.microsoft.com/v1.0/print/printers/{printerId}"
		},
	},
};
var result = await graphClient.Print.Shares.PostAsync(requestBody);


```