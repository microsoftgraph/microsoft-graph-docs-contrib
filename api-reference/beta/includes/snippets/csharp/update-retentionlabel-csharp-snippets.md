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
	RetentionDuration = new RetentionDuration
	{
		OdataType = "microsoft.graph.security.retentionDuration",
	},
	DescriptionForAdmins = "String",
	DescriptionForUsers = "String",
	LabelToBeApplied = "String",
	DefaultRecordBehavior = DefaultRecordBehavior.StartLocked,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Labels.RetentionLabels["{retentionLabel-id}"].PatchAsync(requestBody);


```