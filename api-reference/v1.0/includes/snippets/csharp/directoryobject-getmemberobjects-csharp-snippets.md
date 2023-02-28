---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.DirectoryObjects.Item.MicrosoftGraphGetMemberObjects.GetMemberObjectsPostRequestBody
{
	SecurityEnabledOnly = true,
};
var result = await graphClient.DirectoryObjects["directoryObject-id"].MicrosoftGraphGetMemberObjects.PostAsync(requestBody);


```