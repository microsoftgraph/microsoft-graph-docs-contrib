---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review access of users and groups to privileged roles",
	DescriptionForAdmins = "Review access of users and groups to privileged roles",
	Scope = new PrincipalResourceMembershipsScope
	{
		OdataType = "#microsoft.graph.principalResourceMembershipsScope",
		PrincipalScopes = new List<AccessReviewScope>
		{
			new AccessReviewQueryScope
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/users",
				QueryType = "MicrosoftGraph",
			},
			new AccessReviewQueryScope
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/groups",
				QueryType = "MicrosoftGraph",
			},
		},
		ResourceScopes = new List<AccessReviewScope>
		{
			new AccessReviewQueryScope
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
				QueryType = "MicrosoftGraph",
			},
		},
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8",
			QueryType = "MicrosoftGraph",
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		DefaultDecisionEnabled = false,
		DefaultDecision = "None",
		InstanceDurationInDays = 1,
		RecommendationsEnabled = false,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				Interval = 3,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.NoEnd,
				StartDate = new Date(DateTime.Parse("2024-03-25")),
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```