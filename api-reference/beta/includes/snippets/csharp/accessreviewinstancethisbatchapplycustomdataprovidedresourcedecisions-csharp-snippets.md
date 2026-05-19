---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.AccessReviews.Definitions.Item.Instances.Item.BatchApplyCustomDataProvidedResourceDecisions;
using Microsoft.Graph.Beta.Models;

var requestBody = new BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody
{
	ApplyResult = AccessReviewInstanceDecisionItemApplyResult.AppliedSuccessfully,
	ApplyDescription = "Access was removed from production application: GitHub-app.",
	CustomDataProvidedResourceId = "5c728447-be5c-4565-b4d3-cb248b609891",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].BatchApplyCustomDataProvidedResourceDecisions.PostAsync(requestBody);


```