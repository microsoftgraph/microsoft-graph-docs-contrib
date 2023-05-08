---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Devices["{device-id}"].MemberOf.GraphGroup.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Orderby = new string []{ "displayName" };
	requestConfiguration.QueryParameters.Filter = "startswith(displayName,%20'A')";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```