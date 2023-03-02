---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FeatureRolloutPolicy
{
	DisplayName = "PassthroughAuthentication rollout policy",
	Description = "PassthroughAuthentication rollout policy",
	Feature = StagedFeatureName.PassthroughAuthentication,
	IsEnabled = true,
	IsAppliedToOrganization = false,
};
var result = await graphClient.Policies.FeatureRolloutPolicies.PostAsync(requestBody);


```