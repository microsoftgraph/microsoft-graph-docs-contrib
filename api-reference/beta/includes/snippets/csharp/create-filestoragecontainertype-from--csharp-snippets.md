---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

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
		AdditionalData = new Dictionary<string, object>
		{
			{
				"agent" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"chatEmbedAllowedHosts", new UntypedArray(new List<UntypedNode>
						{
							new UntypedString("https://localhost:3000"),
						})
					},
				})
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.ContainerTypes.PostAsync(requestBody);


```