---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new UpdatePolicy
{
	OdataType = "#microsoft.graph.windowsUpdates.updatePolicy",
	Audience = new DeploymentAudience
	{
		Id = "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e",
	},
	ComplianceChanges = new List<ComplianceChange>
	{
		new ContentApproval
		{
			OdataType = "#microsoft.graph.windowsUpdates.contentApproval",
		},
	},
	ComplianceChangeRules = new List<ComplianceChangeRule>
	{
		new ContentApprovalRule
		{
			OdataType = "#microsoft.graph.windowsUpdates.contentApprovalRule",
			ContentFilter = new DriverUpdateFilter
			{
				OdataType = "#microsoft.graph.windowsUpdates.driverUpdateFilter",
			},
			DurationBeforeDeploymentStart = TimeSpan.Parse("P7D"),
		},
	},
	DeploymentSettings = new DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Schedule = new ScheduleSettings
		{
			GradualRollout = new RateDrivenRolloutSettings
			{
				OdataType = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
				DurationBetweenOffers = TimeSpan.Parse("P1D"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"devicePerOffer" , 1000
					},
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies.PostAsync(requestBody);


```