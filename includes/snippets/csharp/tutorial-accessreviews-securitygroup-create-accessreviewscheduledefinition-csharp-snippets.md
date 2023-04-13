---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviewScheduleDefinition = new AccessReviewScheduleDefinition
{
	DisplayName = "One-time self-review for members of Building security",
	DescriptionForAdmins = "One-time self-review for members of Building security",
	DescriptionForReviewers = "One-time self-review for members of Building security",
	Scope = new AccessReviewScope
	{
		Query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers",
		QueryType = "MicrosoftGraph"
	},
	InstanceEnumerationScope = new AccessReviewScope
	{
		Query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4",
		QueryType = "MicrosoftGraph"
	},
	Settings = new AccessReviewScheduleSettings
	{
		MailNotificationsEnabled = true,
		ReminderNotificationsEnabled = true,
		JustificationRequiredOnApproval = true,
		DefaultDecisionEnabled = true,
		DefaultDecision = "Deny",
		InstanceDurationInDays = 5,
		AutoApplyDecisionsEnabled = true,
		RecommendationsEnabled = true,
		Recurrence = new PatternedRecurrence
		{
			Pattern = null,
			Range = new RecurrenceRange
			{
				Type = RecurrenceRangeType.Numbered,
				NumberOfOccurrences = 0,
				RecurrenceTimeZone = null,
				StartDate = new Date(2022,2,11),
				EndDate = new Date(2022,2,16)
			}
		}
	}
};

await graphClient.IdentityGovernance.AccessReviews.Definitions
	.Request()
	.AddAsync(accessReviewScheduleDefinition);

```