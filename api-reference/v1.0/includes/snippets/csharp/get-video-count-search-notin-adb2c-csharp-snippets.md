---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"displayName:Video\" OR \"description:prod\"";
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```