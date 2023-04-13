---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)",
	DescriptionForAdmins = "",
	DescriptionForReviewers = "",
	Scope = new AccessReviewScope
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"query" , "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')"
			},
			{
				"queryType" , "MicrosoftGraph"
			},
		},
	},
	InstanceEnumerationScope = new AccessReviewScope
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"query" , "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true"
			},
			{
				"queryType" , "MicrosoftGraph"
			},
		},
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
			QueryRoot = null,
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		DefaultDecisionEnabled = true,
		DefaultDecision = "Approve",
		InstanceDurationInDays = 0,
		AutoApplyDecisionsEnabled = true,
		RecommendationsEnabled = true,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				Interval = 3,
				Month = 0,
				DayOfMonth = 0,
				DaysOfWeek = new List<DayOfWeek>
				{
				},
				FirstDayOfWeek = DayOfWeekObject.Sunday,
				Index = WeekIndex.First,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.Numbered,
				NumberOfOccurrences = 0,
				RecurrenceTimeZone = null,
				StartDate = new Date(DateTime.Parse("2021-02-10")),
				EndDate = new Date(DateTime.Parse("2022-12-21")),
			},
		},
		ApplyActions = new List<AccessReviewApplyAction>
		{
			new AccessReviewApplyAction
			{
				OdataType = "#microsoft.graph.removeAccessApplyAction",
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```