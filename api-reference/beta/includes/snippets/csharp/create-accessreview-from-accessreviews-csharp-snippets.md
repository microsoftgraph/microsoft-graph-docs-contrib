---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessReview
{
	DisplayName = "TestReview",
	StartDateTime = DateTimeOffset.Parse("2017-02-10T00:35:53.214Z"),
	EndDateTime = DateTimeOffset.Parse("2017-03-12T00:35:53.214Z"),
	ReviewedEntity = new Identity
	{
		Id = "99025615-a0b1-47ec-9117-35377b10998b",
	},
	ReviewerType = "delegated",
	BusinessFlowTemplateId = "6e4f3d20-c5c3-407f-9695-8460952bcc68",
	Description = "Sample description",
	Reviewers = new List<AccessReviewReviewer>
	{
		new AccessReviewReviewer
		{
			Id = "f260246a-09b1-4fd5-8d18-daed736071ec",
		},
		new AccessReviewReviewer
		{
			Id = "5a4e184c-4ee5-4883-96e9-b371f8da88e3",
		},
	},
	Settings = new AccessReviewSettings
	{
		MailNotificationsEnabled = true,
		RemindersEnabled = true,
		JustificationRequiredOnApproval = true,
		AutoReviewEnabled = false,
		ActivityDurationInDays = 30,
		AutoApplyReviewResultsEnabled = false,
		AccessRecommendationsEnabled = false,
		RecurrenceSettings = new AccessReviewRecurrenceSettings
		{
			RecurrenceType = "onetime",
			RecurrenceEndType = "endBy",
			DurationInDays = 0,
			RecurrenceCount = 0,
		},
		AutoReviewSettings = new AutoReviewSettings
		{
			NotReviewedResult = "Deny",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AccessReviews.PostAsync(requestBody);


```