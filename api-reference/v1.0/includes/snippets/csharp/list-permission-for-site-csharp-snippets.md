---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "{query}";
});


```