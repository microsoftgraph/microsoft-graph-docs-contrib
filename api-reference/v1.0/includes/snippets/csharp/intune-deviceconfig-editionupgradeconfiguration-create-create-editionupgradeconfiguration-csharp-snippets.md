---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```