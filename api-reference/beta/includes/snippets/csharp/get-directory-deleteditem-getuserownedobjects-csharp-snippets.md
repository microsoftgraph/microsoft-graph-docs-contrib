---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryNamespace.DeletedItems.GetUserOwnedObjects.GetUserOwnedObjectsPostRequestBody
{
	UserId = "55ac777c-109e-4022-b58c-470c8fcb6892",
	Type = "Group",
};
var result = await graphClient.Directory.DeletedItems.GetUserOwnedObjects.PostAsync(requestBody);


```