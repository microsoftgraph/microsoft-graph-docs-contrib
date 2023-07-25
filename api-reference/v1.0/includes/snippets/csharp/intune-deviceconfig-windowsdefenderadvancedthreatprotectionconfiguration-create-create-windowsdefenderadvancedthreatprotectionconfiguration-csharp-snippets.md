---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsDefenderAdvancedThreatProtectionConfiguration
{
	OdataType = "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AllowSampleSharing = true,
	EnableExpeditedTelemetryReporting = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```