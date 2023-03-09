---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = " https://graph.microsoft.com/beta/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da",
};
await graphClient.Policies.FeatureRolloutPolicies["{featureRolloutPolicy-id}"].AppliesTo.Ref.PostAsync(requestBody);


```