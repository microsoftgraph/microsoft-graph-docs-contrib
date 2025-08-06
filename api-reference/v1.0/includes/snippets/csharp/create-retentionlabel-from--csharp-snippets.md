---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new RetentionLabel
{
	OdataType = "#microsoft.graph.security.retentionLabel",
	DisplayName = "Retention Schedule 10005",
	BehaviorDuringRetentionPeriod = BehaviorDuringRetentionPeriod.Retain,
	ActionAfterRetentionPeriod = ActionAfterRetentionPeriod.StartDispositionReview,
	RetentionTrigger = RetentionTrigger.DateOfEvent,
	RetentionDuration = new RetentionDurationInDays
	{
		OdataType = "microsoft.graph.security.retentionDurationInDays",
		Days = 2555,
	},
	DispositionReviewStages = new List<DispositionReviewStage>
	{
		new DispositionReviewStage
		{
			StageNumber = 1,
			Name = "Stage1",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"reviewersEmailAddresses " , new List<string>
					{
						"Admin@contoso.onmicrosoft.com",
					}
				},
			},
		},
	},
	DescriptionForAdmins = "retain for 7 years",
	DescriptionForUsers = "retain for 7 years",
	Descriptors = new FilePlanDescriptor
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"authorityTemplate@odata.bind" , "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')"
			},
			{
				"categoryTemplate@odata.bind" , "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')"
			},
			{
				"citationTemplate@odata.bind" , "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')"
			},
			{
				"departmentTemplate@odata.bind" , "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')"
			},
			{
				"filePlanReferenceTemplate@odata.bind" , "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')"
			},
		},
	},
	DefaultRecordBehavior = DefaultRecordBehavior.StartLocked,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"retentionEventType@odata.bind" , "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.RetentionLabels.PostAsync(requestBody);


```