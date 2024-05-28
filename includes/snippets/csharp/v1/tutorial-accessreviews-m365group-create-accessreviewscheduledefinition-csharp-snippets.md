---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Guest access to marketing group",
	Scope = new AccessReviewQueryScope
	{
		OdataType = "#microsoft.graph.accessReviewQueryScope",
		Query = "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
		QueryType = "MicrosoftGraph",
	},
	InstanceEnumerationScope = new AccessReviewQueryScope
	{
		OdataType = "#microsoft.graph.accessReviewQueryScope",
		Query = "/v1.0/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true",
		QueryType = "MicrosoftGraph",
		QueryRoot = null,
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "./owners",
			QueryType = "MicrosoftGraph",
			QueryRoot = null,
		},
	},
	FallbackReviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4",
			QueryType = "MicrosoftGraph",
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		DefaultDecisionEnabled = true,
		DefaultDecision = "Deny",
		InstanceDurationInDays = 3,
		AutoApplyDecisionsEnabled = true,
		RecommendationsEnabled = true,
		RecommendationLookBackDuration = TimeSpan.Parse("P30D"),
		DecisionHistoriesForReviewersEnabled = false,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				Interval = 3,
				Month = 0,
				DayOfMonth = 0,
				DaysOfWeek = new List<DayOfWeekObject>
				{
				},
				FirstDayOfWeek = DayOfWeekObject.Sunday,
				Index = WeekIndex.First,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.EndDate,
				NumberOfOccurrences = 0,
				RecurrenceTimeZone = null,
				StartDate = new Date(DateTime.Parse("2024-03-21")),
				EndDate = new Date(DateTime.Parse("2025-03-21")),
			},
		},
		ApplyActions = new List<AccessReviewApplyAction>
		{
			new RemoveAccessApplyAction
			{
				OdataType = "#microsoft.graph.removeAccessApplyAction",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```