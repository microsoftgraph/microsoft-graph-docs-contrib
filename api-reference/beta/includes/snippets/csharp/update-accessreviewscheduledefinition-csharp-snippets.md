---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.AccessReviews.Definitions.Item.Definition
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"id" , "60860cdd-fb4d-4054-91ba-f75e04444aa6"
		},
		{
			"displayName" , "Test world UPDATED NAME!"
		},
		{
			"descriptionForAdmins" , "Test world"
		},
		{
			"descriptionForReviewers" , "Test world"
		},
		{
			"scope" , new 
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers",
				QueryType = "MicrosoftGraph",
			}
		},
		{
			"instanceEnumerationScope" , new 
			{
				OdataType = "#microsoft.graph.accessReviewQueryScope",
				Query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f",
				QueryType = "MicrosoftGraph",
			}
		},
		{
			"reviewers" , new List<>
			{
			}
		},
		{
			"settings" , new 
			{
				MailNotificationsEnabled = true,
				ReminderNotificationsEnabled = true,
				JustificationRequiredOnApproval = true,
				DefaultDecisionEnabled = false,
				DefaultDecision = "None",
				InstanceDurationInDays = 3,
				AutoApplyDecisionsEnabled = false,
				RecommendationsEnabled = true,
				Recurrence = new 
				{
					Pattern = new 
					{
						Type = "weekly",
						Interval = 1,
					},
					Range = new 
					{
						Type = "noEnd",
						StartDate = "2020-09-15",
					},
				},
			}
		},
	},
};
await graphClient.IdentityGovernance.AccessReviews.Definitions["{accessReviewScheduleDefinition-id}"].PutAsync(requestBody);


```