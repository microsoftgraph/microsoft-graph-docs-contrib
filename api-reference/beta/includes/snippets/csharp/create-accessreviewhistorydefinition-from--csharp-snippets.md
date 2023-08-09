---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewHistoryDefinition
{
	DisplayName = "Last quarter's group reviews April 2021",
	Decisions = new List<AccessReviewHistoryDecisionFilter?>
	{
		AccessReviewHistoryDecisionFilter.Approve,
		AccessReviewHistoryDecisionFilter.Deny,
		AccessReviewHistoryDecisionFilter.DontKnow,
		AccessReviewHistoryDecisionFilter.NotReviewed,
		AccessReviewHistoryDecisionFilter.NotNotified,
	},
	ReviewHistoryPeriodStartDateTime = DateTimeOffset.Parse("2021-01-01T00:00:00Z"),
	ReviewHistoryPeriodEndDateTime = DateTimeOffset.Parse("2021-04-30T23:59:59Z"),
	Scopes = new List<AccessReviewScope>
	{
		new AccessReviewQueryScope
		{
			OdataType = "#microsoft.graph.accessReviewQueryScope",
			QueryType = "MicrosoftGraph",
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
			QueryRoot = null,
		},
		new AccessReviewQueryScope
		{
			OdataType = "#microsoft.graph.accessReviewQueryScope",
			QueryType = "MicrosoftGraph",
			Query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
			QueryRoot = null,
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.HistoryDefinitions.PostAsync(requestBody);


```