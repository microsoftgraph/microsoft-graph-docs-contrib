---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionLabel = new Microsoft.Graph.Security.RetentionLabel
{
	DisplayName = "String",
	BehaviorDuringRetentionPeriod = Microsoft.Graph.Security.BehaviorDuringRetentionPeriod.DoNotRetain,
	ActionAfterRetentionPeriod = Microsoft.Graph.Security.ActionAfterRetentionPeriod.None,
	RetentionTrigger = Microsoft.Graph.Security.RetentionTrigger.DateLabeled,
	RetentionDuration = new RetentionDuration
	{
	},
	IsInUse = false,
	DescriptionForAdmins = "String",
	DescriptionForUsers = "String",
	CreatedBy = new IdentitySet
	{
	},
	LabelToBeApplied = "String",
	DefaultRecordBehavior = Microsoft.Graph.Security.DefaultRecordBehavior.StartLocked
};

await graphClient.Security.Labels.RetentionLabels
	.Request()
	.AddAsync(retentionLabel);

```