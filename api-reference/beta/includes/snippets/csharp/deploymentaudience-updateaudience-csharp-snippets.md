---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.DeploymentAudiences.Item.WindowsUpdatesUpdateAudience.UpdateAudiencePostRequestBody
{
	AddMembers = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatableAsset>
	{
		new Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatableAsset
		{
			OdataType = "#microsoft.graph.windowsUpdates.azureADDevice",
			Id = "String (identifier)",
		},
	},
};
await graphClient.Admin.Windows.Updates.DeploymentAudiences["{deploymentAudience-id}"].WindowsUpdatesUpdateAudience.PostAsync(requestBody);


```