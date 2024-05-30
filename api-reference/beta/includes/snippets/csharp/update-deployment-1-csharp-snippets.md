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
	State = new DeploymentState
	{
		OdataType = "microsoft.graph.windowsUpdates.deploymentState",
		RequestedValue = RequestedDeploymentStateValue.Paused,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].PatchAsync(requestBody);


```