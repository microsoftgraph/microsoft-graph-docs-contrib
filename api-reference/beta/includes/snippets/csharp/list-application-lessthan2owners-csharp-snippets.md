---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Applications.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "owners/$count eq 0 or owners/$count eq 1";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```