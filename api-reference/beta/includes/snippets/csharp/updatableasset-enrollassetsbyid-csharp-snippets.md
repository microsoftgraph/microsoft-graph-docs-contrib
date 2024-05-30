---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssetsById;
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new EnrollAssetsByIdPostRequestBody
{
	UpdateCategory = UpdateCategory.Feature,
	MemberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice",
	Ids = new List<string>
	{
		"String",
		"String",
		"String",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Windows.Updates.UpdatableAssets.MicrosoftGraphWindowsUpdatesEnrollAssetsById.PostAsync(requestBody);


```