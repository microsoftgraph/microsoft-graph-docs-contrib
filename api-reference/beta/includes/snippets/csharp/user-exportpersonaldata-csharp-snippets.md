---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Users.Item.ExportPersonalData.ExportPersonalDataPostRequestBody
{
	StorageLocation = "storageLocation-value",
};
await graphClient.Users["{user-id}"].ExportPersonalData.PostAsync(requestBody);


```