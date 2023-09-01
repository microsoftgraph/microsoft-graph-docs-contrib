---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.GetMemberObjects.GetMemberObjectsPostRequestBody
{
	SecurityEnabledOnly = true,
};
var result = await graphClient.Me.GetMemberObjects.PostAsync(requestBody);


```