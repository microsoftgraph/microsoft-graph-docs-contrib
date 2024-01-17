---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new Deployment
{
	OdataType = "#microsoft.graph.windowsUpdates.deployment",
	Settings = new DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Monitoring = new MonitoringSettings
		{
			MonitoringRules = new List<MonitoringRule>
			{
				new MonitoringRule
				{
					Signal = MonitoringSignal.Rollback,
					Threshold = 5,
					Action = MonitoringAction.PauseDeployment,
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].PatchAsync(requestBody);


```