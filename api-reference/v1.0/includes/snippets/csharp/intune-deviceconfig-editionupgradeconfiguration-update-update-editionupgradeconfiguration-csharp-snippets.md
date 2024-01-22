---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EditionUpgradeConfiguration
{
	OdataType = "#microsoft.graph.editionUpgradeConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	LicenseType = EditionUpgradeLicenseType.LicenseFile,
	TargetEdition = Windows10EditionType.Windows10EnterpriseN,
	License = "License value",
	ProductKey = "Product Key value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```