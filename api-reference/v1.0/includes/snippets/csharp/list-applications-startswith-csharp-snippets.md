---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Applications.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "startswith(displayName, 'a')";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Top = 1;
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```