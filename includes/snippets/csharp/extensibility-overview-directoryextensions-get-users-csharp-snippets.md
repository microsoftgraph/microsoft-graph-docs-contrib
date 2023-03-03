---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker","extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable" };
});


```