---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.AccessReviews.Definitions.Item.Instances.Item.Stages.Item.BatchRecordDecisions;

var requestBody = new BatchRecordDecisionsPostRequestBody
{
	Decision = "Approve",
	Justification = "All principals with access need continued access to the resource as they are on the same team.",
	ResourceId = "a5c51e59-3fcd-4a37-87a1-835c0c21488a",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Stages["{accessReviewStage-id}"].BatchRecordDecisions.PostAsync(requestBody);


```