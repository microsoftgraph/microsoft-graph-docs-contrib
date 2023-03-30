---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Applications.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "startswith(displayName,%20'a')";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Top = 1;
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```