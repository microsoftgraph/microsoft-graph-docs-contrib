---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Drives["{drive-id}"].Bundles.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "bundle/album ne null";
});


```