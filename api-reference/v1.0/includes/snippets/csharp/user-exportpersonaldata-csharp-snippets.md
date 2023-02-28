---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.MicrosoftGraphExportPersonalData.ExportPersonalDataPostRequestBody
{
	StorageLocation = "storageLocation-value",
};
await graphClient.Users["user-id"].MicrosoftGraphExportPersonalData.PostAsync(requestBody);


```