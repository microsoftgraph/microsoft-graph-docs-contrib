---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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
};
var result = await graphClient.Security.Labels.RetentionLabels.PostAsync(requestBody);


```