---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.WindowsUpdatesUnenrollAssets.UnenrollAssetsPostRequestBody
{
	UpdateCategory = Microsoft.Graph.Beta.Models.WindowsUpdates.UpdateCategory.Feature,
	Assets = new List<Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatableAsset>
	{
		new Microsoft.Graph.Beta.Models.WindowsUpdates.UpdatableAsset
		{
			OdataType = "#microsoft.graph.windowsUpdates.azureADDevice",
			Id = "String (identifier)",
		},
	},
};
await graphClient.Admin.Windows.Updates.UpdatableAssets.WindowsUpdatesUnenrollAssets.PostAsync(requestBody);


```