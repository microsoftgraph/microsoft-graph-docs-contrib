---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.RetentionLabel
{
	OdataType = "#microsoft.graph.security.retentionLabel",
	RetentionDuration = new Microsoft.Graph.Beta.Models.Security.RetentionDuration
	{
		OdataType = "microsoft.graph.security.retentionDuration",
	},
	DescriptionForAdmins = "String",
	DescriptionForUsers = "String",
	LabelToBeApplied = "String",
	DefaultRecordBehavior = Microsoft.Graph.Beta.Models.Security.DefaultRecordBehavior.StartLocked,
};
var result = await graphClient.Security.Labels.RetentionLabels["{retentionLabel-id}"].PatchAsync(requestBody);


```