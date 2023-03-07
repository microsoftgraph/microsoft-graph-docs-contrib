---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups["{group-id}"].Members.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Filter = "startswith(displayName,%20'a')";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```