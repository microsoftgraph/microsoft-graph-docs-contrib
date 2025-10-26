---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new FileStorageContainerTypeRegistration
{
	Settings = new FileStorageContainerTypeRegistrationSettings
	{
		SharingCapability = SharingCapabilities.ExternalUserAndGuestSharing,
		IsSearchEnabled = false,
	},
	ApplicationPermissionGrants = new List<FileStorageContainerTypeAppPermissionGrant>
	{
		new FileStorageContainerTypeAppPermissionGrant
		{
			AppId = "33225700-9a00-4c00-84dd-0c210f203f01",
			DelegatedPermissions = new List<FileStorageContainerTypeAppPermission?>
			{
				FileStorageContainerTypeAppPermission.Full,
			},
			ApplicationPermissions = new List<FileStorageContainerTypeAppPermission?>
			{
				FileStorageContainerTypeAppPermission.None,
			},
		},
	},
	Etag = "RVRhZw==",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.ContainerTypeRegistrations["{fileStorageContainerTypeRegistration-id}"].PatchAsync(requestBody);


```