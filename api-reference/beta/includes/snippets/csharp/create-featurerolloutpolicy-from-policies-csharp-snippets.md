---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FeatureRolloutPolicy
{
	DisplayName = "PassthroughAuthentication rollout policy",
	Description = "PassthroughAuthentication rollout policy",
	Feature = StagedFeatureName.PassthroughAuthentication,
	IsEnabled = true,
	IsAppliedToOrganization = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.FeatureRolloutPolicies.PostAsync(requestBody);


```