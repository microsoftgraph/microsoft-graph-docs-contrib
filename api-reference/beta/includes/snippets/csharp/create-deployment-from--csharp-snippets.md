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
	Content = new CatalogContent
	{
		OdataType = "#microsoft.graph.windowsUpdates.catalogContent",
		CatalogEntry = new FeatureUpdateCatalogEntry
		{
			OdataType = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
			Id = "f341705b-0b15-4ce3-aaf2-6a1681d78606",
		},
	},
	Settings = new DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Schedule = new ScheduleSettings
		{
			GradualRollout = new RateDrivenRolloutSettings
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
var result = await graphClient.Admin.Windows.Updates.Deployments.PostAsync(requestBody);


```