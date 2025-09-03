---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FileStorageContainerType
{
	Name = "Test Trial Container",
	OwningAppId = Guid.Parse("11335700-9a00-4c00-84dd-0c210f203f00"),
	BillingClassification = FileStorageContainerBillingClassification.Trial,
	Settings = new FileStorageContainerTypeSettings
	{
		IsItemVersioningEnabled = true,
		IsSharingRestricted = false,
		ConsumingTenantOverridables = FileStorageContainerTypeSettingsOverride.IsSearchEnabled | FileStorageContainerTypeSettingsOverride.ItemMajorVersionLimit,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.ContainerTypes.PostAsync(requestBody);


```