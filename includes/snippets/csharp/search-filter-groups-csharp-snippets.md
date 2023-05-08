---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "mailEnabled eq true";
	requestConfiguration.QueryParameters.Search = "\"displayName:OneVideo\"";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```