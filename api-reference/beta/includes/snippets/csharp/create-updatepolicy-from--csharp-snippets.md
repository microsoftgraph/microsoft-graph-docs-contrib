---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatePolicy
{
	OdataType = "#microsoft.graph.windowsUpdates.updatePolicy",
	Audience = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentAudience
	{
		Id = "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e",
	},
	ComplianceChanges = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.ComplianceChange>
	{
		new Microsoft.Graph.Beta.Models.WindowsUpdates.ContentApproval
		{
			OdataType = "#microsoft.graph.windowsUpdates.contentApproval",
		},
	},
	ComplianceChangeRules = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.ComplianceChangeRule>
	{
		new Microsoft.Graph.Beta.Models.WindowsUpdates.ContentApprovalRule
		{
			OdataType = "#microsoft.graph.windowsUpdates.contentApprovalRule",
			ContentFilter = new Microsoft.Graph.Beta.Models.WindowsUpdates.DriverUpdateFilter
			{
				OdataType = "#microsoft.graph.windowsUpdates.driverUpdateFilter",
			},
			DurationBeforeDeploymentStart = TimeSpan.Parse("P7D"),
		},
	},
	DeploymentSettings = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Schedule = new Microsoft.Graph.Beta.Models.WindowsUpdates.ScheduleSettings
		{
			GradualRollout = new Microsoft.Graph.Beta.Models.WindowsUpdates.RateDrivenRolloutSettings
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
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies.PostAsync(requestBody);


```