---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem
{
	Decision = "Approve",
	Justification = "I trust this person"
};

await graphClient.Me.PendingAccessReviewInstances["{accessReviewInstance-id}"].Decisions["{accessReviewInstanceDecisionItem-id}"]
	.Request()
	.UpdateAsync(accessReviewInstanceDecisionItem);

```