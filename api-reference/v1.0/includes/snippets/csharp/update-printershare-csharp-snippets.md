---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrinterShare
{
	DisplayName = "PrinterShare Name",
	AllowAllUsers = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"printer@odata.bind" , "https://graph.microsoft.com/v1.0/print/printers/{printerId}"
		},
	},
};
var result = await graphClient.Print.Shares["{printerShare-id}"].PatchAsync(requestBody);


```