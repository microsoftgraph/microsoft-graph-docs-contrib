---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Directory.DeletedItems.GraphGroup.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Orderby = new string []{ "deletedDateTime asc" };
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","deletedDateTime" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```