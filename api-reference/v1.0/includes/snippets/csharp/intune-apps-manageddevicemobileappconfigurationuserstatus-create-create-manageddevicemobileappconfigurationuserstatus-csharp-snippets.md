---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedDeviceMobileAppConfigurationUserStatus
{
	OdataType = "#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus",
	UserDisplayName = "User Display Name value",
	DevicesCount = 12,
	Status = ComplianceStatus.NotApplicable,
	LastReportedDateTime = DateTimeOffset.Parse("2017-01-01T00:00:17.7769392-08:00"),
	UserPrincipalName = "User Principal Name value",
};
var result = await graphClient.DeviceAppManagement.MobileAppConfigurations["{managedDeviceMobileAppConfiguration-id}"].UserStatuses.PostAsync(requestBody);


```