---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review employee access to LinkedIn",
	DescriptionForAdmins = "Review employee access to LinkedIn",
	Scope = new AccessReviewScope
	{
		OdataType = "#microsoft.graph.principalResourceMembershipsScope",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"principalScopes" , new List<>
				{
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/users",
						QueryType = "MicrosoftGraph",
					},
				}
			},
			{
				"resourceScopes" , new List<>
				{
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae",
						QueryType = "MicrosoftGraph",
					},
				}
			},
		},
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "./manager",
			QueryType = "MicrosoftGraph",
			QueryRoot = "decisions",
		},
	},
	BackupReviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
			QueryType = "MicrosoftGraph",
		},
	},
	FallbackReviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers",
			QueryType = "MicrosoftGraph",
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		DefaultDecisionEnabled = true,
		DefaultDecision = "Recommendation",
		InstanceDurationInDays = 180,
		AutoApplyDecisionsEnabled = true,
		RecommendationsEnabled = true,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.AbsoluteMonthly,
				Interval = 6,
				DayOfMonth = 0,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.Numbered,
				StartDate = new Date(DateTime.Parse("2021-05-05")),
				EndDate = new Date(DateTime.Parse("2022-05-05")),
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```