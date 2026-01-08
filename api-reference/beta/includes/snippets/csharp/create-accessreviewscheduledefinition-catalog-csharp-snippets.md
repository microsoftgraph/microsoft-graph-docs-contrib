---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessReviewScheduleDefinition
{
	DisplayName = "Review of catalog",
	DescriptionForAdmins = "Review of all resources in a catalog",
	DescriptionForReviewers = "If you have any questions, contact jerry@contoso.com",
	Scope = new AccessReviewScope
	{
		OdataType = "#microsoft.graph.accessReviewResourceScope",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceScopes" , new List<object>
				{
					new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"resourceId", new UntypedString("a45681aa-35f2-47c6-958b-741d6b09a033")
						},
						{
							"displayName", new UntypedString("My Catalog")
						},
						{
							"scopeType", new UntypedString("catalog")
						},
					}),
				}
			},
			{
				"principalScopes" , new List<object>
				{
					new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"@odata.type", new UntypedString("#microsoft.graph.accessReviewPrincipalScope")
						},
						{
							"scopeType", new UntypedString("allUsers")
						},
					}),
				}
			},
		},
	},
	Reviewers = new List<AccessReviewReviewerScope>
	{
		new AccessReviewReviewerScope
		{
			OdataType = "#microsoft.graph.accessReviewReviewerScope",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"scopeType" , "resourceOwner"
				},
			},
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
		RecommendationsEnabled = true,
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
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.AccessReviews.Definitions.PostAsync(requestBody);


```