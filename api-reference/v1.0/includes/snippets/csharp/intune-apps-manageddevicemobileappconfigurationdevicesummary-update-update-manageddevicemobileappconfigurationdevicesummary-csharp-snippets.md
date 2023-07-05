---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedDeviceMobileAppConfigurationDeviceSummary
{
	OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationDeviceSummary",
	PendingCount = 12,
	NotApplicableCount = 2,
	SuccessCount = 12,
	ErrorCount = 10,
	FailedCount = 11,
	LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
	ConfigurationVersion = 4,
};
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].DeviceStatusSummary.PatchAsync(requestBody);


```