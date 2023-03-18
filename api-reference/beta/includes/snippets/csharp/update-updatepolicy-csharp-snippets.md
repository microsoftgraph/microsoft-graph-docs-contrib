---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatePolicy
{
	OdataType = "#microsoft.graph.windowsUpdates.updatePolicy",
	DeploymentSettings = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentSettings
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentSettings",
		Schedule = new Microsoft.Graph.Beta.Models.WindowsUpdates.ScheduleSettings
		{
			GradualRollout = new Microsoft.Graph.Beta.Models.WindowsUpdates.GradualRolloutSettings
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
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies["{updatePolicy-id}"].PatchAsync(requestBody);


```