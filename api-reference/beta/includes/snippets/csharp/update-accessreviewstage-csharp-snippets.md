---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewStage = new AccessReviewStage
{
	Reviewers = new List<AccessReviewReviewerScope>()
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			QueryType = "MicrosoftGraph"
		}
	},
	FallbackReviewers = new List<AccessReviewReviewerScope>()
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
			QueryType = "MicrosoftGraph"
		},
		new AccessReviewReviewerScope
		{
			Query = "/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			QueryType = "MicrosoftGraph"
		}
	}
};

await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].Instances["{accessReviewInstance-id}"].Stages["{accessReviewStage-id}"]
	.Request()
	.UpdateAsync(accessReviewStage);

```