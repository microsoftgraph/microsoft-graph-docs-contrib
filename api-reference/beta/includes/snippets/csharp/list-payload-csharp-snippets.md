---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Security.AttackSimulation.Payloads.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "source eq 'Tenant'";
});


```