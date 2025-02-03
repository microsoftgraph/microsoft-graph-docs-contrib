---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceAppManagement.TargetedManagedAppConfigurations.Item.TargetApps;
using Microsoft.Graph.Models;

var requestBody = new TargetAppsPostRequestBody
{
	Apps = new List<ManagedMobileApp>
	{
		new ManagedMobileApp
		{
			OdataType = "#microsoft.graph.managedMobileApp",
			MobileAppIdentifier = new AndroidMobileAppIdentifier
			{
				OdataType = "microsoft.graph.androidMobileAppIdentifier",
				PackageId = "Package Id value",
			},
			Id = "0a129715-9715-0a12-1597-120a1597120a",
			Version = "Version value",
		},
	},
	AppGroupType = TargetedManagedAppGroupType.AllCoreMicrosoftApps,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceAppManagement.TargetedManagedAppConfigurations["{targetedManagedAppConfiguration-id}"].TargetApps.PostAsync(requestBody);


```