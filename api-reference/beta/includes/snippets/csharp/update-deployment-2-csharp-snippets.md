---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.Deployment
{
	OdataType = "#microsoft.graph.windowsUpdates.deployment",
	Settings = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Monitoring = new Microsoft.Graph.Beta.Models.WindowsUpdates.MonitoringSettings
		{
			MonitoringRules = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.MonitoringRule>
			{
				new Microsoft.Graph.Beta.Models.WindowsUpdates.MonitoringRule
				{
					Signal = Microsoft.Graph.Beta.Models.WindowsUpdates.MonitoringSignal.Rollback,
					Threshold = 5,
					Action = Microsoft.Graph.Beta.Models.WindowsUpdates.MonitoringAction.PauseDeployment,
				},
			},
		},
	},
};
var result = await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].PatchAsync(requestBody);


```