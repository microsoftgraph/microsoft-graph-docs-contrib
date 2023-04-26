---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Groups["{group-id}"].Members.Count.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```