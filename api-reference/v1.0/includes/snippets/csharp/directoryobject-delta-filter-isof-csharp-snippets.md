---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.DirectoryObjects.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "isof or isof";
});


```