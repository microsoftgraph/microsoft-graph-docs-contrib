---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.RetentionLabel
{
	OdataType = "#microsoft.graph.security.retentionLabel",
	DisplayName = "String",
	BehaviorDuringRetentionPeriod = Microsoft.Graph.Beta.Models.Security.BehaviorDuringRetentionPeriod.DoNotRetain,
	ActionAfterRetentionPeriod = Microsoft.Graph.Beta.Models.Security.ActionAfterRetentionPeriod.None,
	RetentionTrigger = Microsoft.Graph.Beta.Models.Security.RetentionTrigger.DateLabeled,
	RetentionDuration = new Microsoft.Graph.Beta.Models.Security.RetentionDuration
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
	DefaultRecordBehavior = Microsoft.Graph.Beta.Models.Security.DefaultRecordBehavior.StartLocked,
	Descriptors = new Microsoft.Graph.Beta.Models.Security.FilePlanDescriptor
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
var result = await graphClient.Security.Labels.RetentionLabels.PostAsync(requestBody);


```