---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Print.Printers.Item.Jobs.Item.Abort.AbortPostRequestBody
{
	Reason = "String",
};
await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"].Abort.PostAsync(requestBody);


```