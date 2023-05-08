---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.DirectoryObjects.Item.GetMemberObjects.GetMemberObjectsPostRequestBody
{
	SecurityEnabledOnly = true,
};
var result = await graphClient.DirectoryObjects["{directoryObject-id}"].GetMemberObjects.PostAsync(requestBody);


```