---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetentionLabel
{
	OdataType = "#microsoft.graph.security.retentionLabel",
	DisplayName = "String",
	BehaviorDuringRetentionPeriod = BehaviorDuringRetentionPeriod.DoNotRetain,
	ActionAfterRetentionPeriod = ActionAfterRetentionPeriod.None,
	RetentionTrigger = RetentionTrigger.DateLabeled,
	RetentionDuration = new RetentionDuration
	{
		OdataType = "microsoft.graph.security.retentionDuration",
	},
	IsInUse = boolean,
	DescriptionForAdmins = "String",
	DescriptionForUsers = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	LabelToBeApplied = "String",
	DefaultRecordBehavior = DefaultRecordBehavior.StartLocked,
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
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.RetentionLabels.PostAsync(requestBody);


```