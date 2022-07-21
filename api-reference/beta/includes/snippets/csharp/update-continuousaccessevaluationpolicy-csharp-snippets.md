---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var continuousAccessEvaluationPolicy = new ContinuousAccessEvaluationPolicy
{
	Migrate = true
};

await graphClient.Identity.ContinuousAccessEvaluationPolicy
	.Request()
	.UpdateAsync(continuousAccessEvaluationPolicy);

```