---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Identity.ConditionalAccess.NamedLocations.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "createdDateTime ge 2019-09-01T00:00:00Z";
});


```