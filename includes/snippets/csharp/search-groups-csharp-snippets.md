---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"displayName:OneVideo\" OR \"mail:onevideo\"";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```