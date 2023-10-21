---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceConfigurationDeviceStatus
{
	OdataType = "#microsoft.graph.deviceConfigurationDeviceStatus",
	DeviceDisplayName = "Device Display Name value",
	UserName = "User Name value",
	DeviceModel = "Device Model value",
	ComplianceGracePeriodExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:56:44.951111-08:00"),
	Status = ComplianceStatus.NotApplicable,
	LastReportedDateTime = DateTimeOffset.Parse("2017-01-01T00:00:17.7769392-08:00"),
	UserPrincipalName = "User Principal Name value",
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].DeviceStatuses.PostAsync(requestBody);


```