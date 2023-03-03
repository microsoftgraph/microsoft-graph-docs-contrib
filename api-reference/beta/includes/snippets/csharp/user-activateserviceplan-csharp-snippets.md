---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.ActivateServicePlan.ActivateServicePlanPostRequestBody
{
	ServicePlanId = Guid.Parse("28f42d6f-8034-4a0f-9d8a-a218a63b3299"),
	SkuId = Guid.Parse("465a2a90-5e59-456d-a7b8-127b9fb2e484"),
};
await graphClient.Me.ActivateServicePlan.PostAsync(requestBody);


```