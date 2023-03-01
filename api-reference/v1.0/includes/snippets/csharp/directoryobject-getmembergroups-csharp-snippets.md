---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.DirectoryObjects.Item.GetMemberGroups.GetMemberGroupsPostRequestBody
{
	SecurityEnabledOnly = false,
};
var result = await graphClient.DirectoryObjects["{directoryObject-id}"].GetMemberGroups.PostAsync(requestBody);


```