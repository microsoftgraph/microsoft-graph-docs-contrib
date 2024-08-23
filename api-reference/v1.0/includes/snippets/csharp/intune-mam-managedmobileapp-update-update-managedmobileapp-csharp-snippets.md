---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ManagedMobileApp
{
	OdataType = "#microsoft.graph.managedMobileApp",
	MobileAppIdentifier = new AndroidMobileAppIdentifier
	{
		OdataType = "microsoft.graph.androidMobileAppIdentifier",
		PackageId = "Package Id value",
	},
	Version = "Version value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.IosManagedAppProtections["{iosManagedAppProtection-id}"].Apps["{managedMobileApp-id}"].PatchAsync(requestBody);


```