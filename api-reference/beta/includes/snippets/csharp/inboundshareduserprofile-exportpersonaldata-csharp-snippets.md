---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.InboundSharedUserProfiles.Item.ExportPersonalData.ExportPersonalDataPostRequestBody
{
	StorageLocation = "MyStorageAccount",
};
await graphClient.Directory.InboundSharedUserProfiles["{inboundSharedUserProfile-userId}"].ExportPersonalData.PostAsync(requestBody);


```