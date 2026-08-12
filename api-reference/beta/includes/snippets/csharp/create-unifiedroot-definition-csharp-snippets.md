---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Catalog access review",
	DescriptionForAdmins = "Quarterly user-centric review of catalog resources",
	Scope = new PrincipalResourceMembershipsScope
	{
		OdataType = "#microsoft.graph.principalResourceMembershipsScope",
		PrincipalScopes = new List<AccessReviewScope>
		{
			new AccessReviewPrincipalScope
			{
				OdataType = "#microsoft.graph.accessReviewPrincipalScope",
				ScopeType = AccessReviewPrincipalScopeType.AllUsers,
			},
		},
		ResourceScopes = new List<AccessReviewScope>
		{
			new AccessReviewResourceScope
			{
				OdataType = "#microsoft.graph.accessReviewResourceScope",
				ResourceId = "c6010d0c-ff41-4929-9776-fa03a03dd5ac",
				ScopeType = AccessReviewResourceScopeType.Catalog,
			},
		},
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			OdataType = "#microsoft.graph.accessReviewReviewerScope",
			ScopeType = AccessReviewReviewerScopeType.Manager,
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		InstanceDurationInDays = 6,
		RecommendationsEnabled = true,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				Interval = 1,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.NoEnd,
				StartDate = new Date(DateTime.Parse("2026-08-31")),
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Unified.Definitions.PostAsync(requestBody);


```