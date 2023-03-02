---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.WindowsUpdatesEnrollAssetsById.EnrollAssetsByIdPostRequestBody
{
	UpdateCategory = Microsoft.Graph.Beta.Models.WindowsUpdates.UpdateCategory.Feature,
	MemberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice",
	Ids = new List<string>
	{
		"String",
		"String",
		"String",
	},
};
await graphClient.Admin.Windows.Updates.UpdatableAssets.WindowsUpdatesEnrollAssetsById.PostAsync(requestBody);


```