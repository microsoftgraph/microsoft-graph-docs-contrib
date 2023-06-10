---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Devices["{device-id}"].TransitiveMemberOf.GraphGroup.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.QueryParameters.Filter = "startswith(displayName, 'a')";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```