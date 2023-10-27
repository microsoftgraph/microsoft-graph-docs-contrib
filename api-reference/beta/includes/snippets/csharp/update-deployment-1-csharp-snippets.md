---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.Deployment
{
	OdataType = "#microsoft.graph.windowsUpdates.deployment",
	State = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentState
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentState",
		RequestedValue = Microsoft.Graph.Beta.Models.WindowsUpdates.RequestedDeploymentStateValue.Paused,
	},
};
var result = await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].PatchAsync(requestBody);


```