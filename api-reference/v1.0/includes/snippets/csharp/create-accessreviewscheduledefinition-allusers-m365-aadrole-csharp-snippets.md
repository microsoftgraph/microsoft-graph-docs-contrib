---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review employee access to LinkedIn",
	DescriptionForAdmins = "Review employee access to LinkedIn",
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
		},
		ResourceScopes = new List<AccessReviewScope>
		{
			new AccessReviewQueryScope
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae",
				QueryType = "MicrosoftGraph",
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
	AdditionalData = new Dictionary<string, object>
	{
		{
			"backupReviewers" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"query", new UntypedString("/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers")
					},
					{
						"queryType", new UntypedString("MicrosoftGraph")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```