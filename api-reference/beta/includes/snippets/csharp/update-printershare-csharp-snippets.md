---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrinterShare
{
	DisplayName = "ShareName",
	AllowAllUsers = true,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"printer@odata.bind" , "https://graph.microsoft.com/beta/print/printers/{id}"
		},
	},
};
var result = await graphClient.Print.Shares["{printerShare-id}"].PatchAsync(requestBody);


```