---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssetsById.EnrollAssetsByIdPostRequestBody
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
await graphClient.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssetsById.PostAsync(requestBody);


```