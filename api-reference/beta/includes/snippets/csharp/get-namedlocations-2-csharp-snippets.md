---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Identity.ConditionalAccess.NamedLocations.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "isof('microsoft.graph.ipNamedLocation')";
});


```