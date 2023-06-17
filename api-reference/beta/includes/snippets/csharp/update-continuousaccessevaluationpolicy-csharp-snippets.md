---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContinuousAccessEvaluationPolicy
{
	OdataType = "#microsoft.graph.continuousAccessEvaluationPolicy",
	Migrate = true,
};
var result = await graphClient.Identity.ContinuousAccessEvaluationPolicy.PatchAsync(requestBody);


```