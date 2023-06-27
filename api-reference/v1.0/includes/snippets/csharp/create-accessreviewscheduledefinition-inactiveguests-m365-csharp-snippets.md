---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review inactive guests on teams",
	DescriptionForAdmins = "Control guest user access to our teams.",
	DescriptionForReviewers = "Information security is everyone's responsibility. Review our access policy for more.",
	InstanceEnumerationScope = new AccessReviewQueryScope
	{
		OdataType = "#microsoft.graph.accessReviewQueryScope",
		Query = "/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')",
		QueryType = "MicrosoftGraph",
	},
	Scope = new AccessReviewInactiveUsersQueryScope
	{
		OdataType = "#microsoft.graph.accessReviewInactiveUsersQueryScope",
		Query = "./members/microsoft.graph.user/?$filter=(userType eq 'Guest')",
		QueryType = "MicrosoftGraph",
		InactiveDuration = TimeSpan.Parse("P30D"),
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "./owners",
			QueryType = "MicrosoftGraph",
		},
	},
	FallbackReviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
			QueryType = "MicrosoftGraph",
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		RecommendationsEnabled = true,
		InstanceDurationInDays = 3,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				DayOfMonth = 5,
				Interval = 3,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.NoEnd,
				StartDate = new Date(DateTime.Parse("2020-05-04T00:00:00.000Z")),
			},
		},
		DefaultDecisionEnabled = true,
		DefaultDecision = "Deny",
		AutoApplyDecisionsEnabled = true,
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```