---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DetectedApp
{
	OdataType = "#microsoft.graph.detectedApp",
	DisplayName = "Display Name value",
	Version = "Version value",
	SizeInByte = 10L,
	DeviceCount = 11,
	Publisher = "Publisher value",
	Platform = DetectedAppPlatformType.Windows,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DetectedApps.PostAsync(requestBody);


```