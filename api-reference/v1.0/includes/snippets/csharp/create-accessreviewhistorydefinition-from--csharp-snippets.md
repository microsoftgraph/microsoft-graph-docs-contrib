---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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
		new AccessReviewScope
		{
			OdataType = "#microsoft.graph.accessReviewQueryScope",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"queryType" , "MicrosoftGraph"
				},
				{
					"query" , "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')"
				},
				{
					"queryRoot" , null
				},
			},
		},
		new AccessReviewScope
		{
			OdataType = "#microsoft.graph.accessReviewQueryScope",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"queryType" , "MicrosoftGraph"
				},
				{
					"query" , "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')"
				},
				{
					"queryRoot" , null
				},
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.HistoryDefinitions.PostAsync(requestBody);


```