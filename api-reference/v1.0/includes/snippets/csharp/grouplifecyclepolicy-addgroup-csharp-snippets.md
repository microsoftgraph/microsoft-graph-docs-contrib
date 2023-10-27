---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.GroupLifecyclePolicies.Item.AddGroup.AddGroupPostRequestBody
{
	GroupId = "ffffffff-ffff-ffff-ffff-ffffffffffff",
};
var result = await graphClient.GroupLifecyclePolicies["{groupLifecyclePolicy-id}"].AddGroup.PostAsync(requestBody);


```