---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review access of users and groups to privileged roles",
	DescriptionForAdmins = "Review access of users and groups to privileged roles",
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
					new 
					{
						OdataType = "#microsoft.graph.accessReviewQueryScope",
						Query = "/groups",
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
						Query = "/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1",
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
			Query = "/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85",
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
		InstanceDurationInDays = 3,
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
				StartDate = new Date(DateTime.Parse("2022-03-02")),
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```