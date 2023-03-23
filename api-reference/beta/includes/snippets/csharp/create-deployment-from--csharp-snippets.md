---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.Deployment
{
	OdataType = "#microsoft.graph.windowsUpdates.deployment",
	Content = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeployableContent
	{
		OdataType = "#microsoft.graph.windowsUpdates.catalogContent",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"catalogEntry" , new 
				{
					OdataType = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
					Id = "f341705b-0b15-4ce3-aaf2-6a1681d78606",
				}
			},
		},
	},
	Settings = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Schedule = new Microsoft.Graph.Beta.Models.WindowsUpdates.ScheduleSettings
		{
			GradualRollout = new Microsoft.Graph.Beta.Models.WindowsUpdates.GradualRolloutSettings
			{
				OdataType = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
				DurationBetweenOffers = TimeSpan.Parse("P7D"),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"devicePerOffer" , 100
					},
				},
			},
		},
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
var result = await graphClient.Admin.Windows.Updates.Deployments.PostAsync(requestBody);


```