---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Test create",
	DescriptionForAdmins = "New scheduled access review",
	DescriptionForReviewers = "If you have any questions, contact jerry@contoso.com",
	Scope = new AccessReviewQueryScope
	{
		OdataType = "#microsoft.graph.accessReviewQueryScope",
		Query = "/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers",
		QueryType = "MicrosoftGraph",
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			Query = "/users/398164b1-5196-49dd-ada2-364b49f99b27",
			QueryType = "MicrosoftGraph",
		},
	},
	Settings = new AccessReviewScheduleSettings
	{
		InstanceDurationInDays = 1,
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				Type = RecurrencePatternType.Weekly,
				Interval = 1,
			},
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.NoEnd,
				StartDate = new Date(DateTime.Parse("2020-09-08T12:02:30.667Z")),
			},
		},
		RecommendationInsightSettings = new List<AccessReviewRecommendationInsightSetting>
		{
			new UserLastSignInRecommendationInsightSetting
			{
				OdataType = "#microsoft.graph.userLastSignInRecommendationInsightSetting",
				RecommendationLookBackDuration = TimeSpan.Parse("P30D"),
				SignInScope = UserSignInRecommendationScope.Tenant,
			},
			new GroupPeerOutlierRecommendationInsightSettings
			{
				OdataType = "#microsoft.graph.groupPeerOutlierRecommendationInsightSettings",
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```