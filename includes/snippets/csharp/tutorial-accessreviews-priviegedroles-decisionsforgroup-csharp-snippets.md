---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.IdentityGovernance.AccessReviews.Definitions.Item.Instances.Item.Decisions.Item.Decision
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"decision" , "Approve"
		},
		{
			"justification" , "The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources"
		},
	},
};
await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Decisions["{accessReviewInstanceDecisionItem-id}"].PostAsync(requestBody);


```