---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FeatureRolloutPolicy
{
	DisplayName = "PasswordHashSync Rollout Policy",
	Description = "PasswordHashSync Rollout Policy",
	IsEnabled = true,
	IsAppliedToOrganization = false,
};
var result = await graphClient.Policies.FeatureRolloutPolicies["{featureRolloutPolicy-id}"].PatchAsync(requestBody);


```