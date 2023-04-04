---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContinuousAccessEvaluationPolicy
{
	OdataType = "#microsoft.graph.continuousAccessEvaluationPolicy",
	Migrate = true,
};
var result = await graphClient.Identity.ContinuousAccessEvaluationPolicy.PatchAsync(requestBody);


```