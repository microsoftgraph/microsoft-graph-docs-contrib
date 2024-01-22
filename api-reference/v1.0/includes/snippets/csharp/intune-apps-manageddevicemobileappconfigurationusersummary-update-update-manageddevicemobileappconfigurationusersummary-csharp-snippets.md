---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ManagedDeviceMobileAppConfigurationUserSummary
{
	OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationUserSummary",
	PendingCount = 12,
	NotApplicableCount = 2,
	SuccessCount = 12,
	ErrorCount = 10,
	FailedCount = 11,
	LastUpdateDateTime = DateTimeOffset.Parse("2016-12-31T23:58:21.6459442-08:00"),
	ConfigurationVersion = 4,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].UserStatusSummary.PatchAsync(requestBody);


```