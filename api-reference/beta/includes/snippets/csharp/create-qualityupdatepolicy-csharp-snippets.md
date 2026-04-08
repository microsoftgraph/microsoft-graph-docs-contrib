---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new QualityUpdatePolicy
{
	OdataType = "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
	DisplayName = "Patch Tuesday 123",
	Description = "Testing Patch Tuesday in test environment",
	ApprovalRules = new List<ApprovalRule>
	{
		new QualityUpdateApprovalRule
		{
			OdataType = "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
			DeferralInDays = 0,
			Classification = QualityUpdateClassification.NonSecurity,
			Cadence = QualityUpdateCadence.OutOfBand,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Policies.PostAsync(requestBody);


```