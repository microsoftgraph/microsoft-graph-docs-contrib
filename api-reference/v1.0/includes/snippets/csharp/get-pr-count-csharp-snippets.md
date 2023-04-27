---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups["{group-id}"].Members.GraphUser.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.QueryParameters.Search = "\"displayName:Pr\"";
	requestConfiguration.QueryParameters.Select = new string []{ "displayName","id" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```