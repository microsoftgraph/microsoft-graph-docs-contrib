---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "NOT)";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```