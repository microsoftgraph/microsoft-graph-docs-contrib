---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssets;
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new EnrollAssetsPostRequestBody
{
	UpdateCategory = UpdateCategory.Feature,
	Assets = new List<UpdatableAsset>
	{
		new AzureADDevice
		{
			OdataType = "#microsoft.graph.windowsUpdates.azureADDevice",
			Id = "String (identifier)",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssets.PostAsync(requestBody);


```