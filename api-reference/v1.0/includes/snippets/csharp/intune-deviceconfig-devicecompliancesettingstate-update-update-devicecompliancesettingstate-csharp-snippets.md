---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceComplianceSettingState
{
	OdataType = "#microsoft.graph.deviceComplianceSettingState",
	Setting = "Setting value",
	SettingName = "Setting Name value",
	DeviceId = "Device Id value",
	DeviceName = "Device Name value",
	UserId = "User Id value",
	UserEmail = "User Email value",
	UserName = "User Name value",
	UserPrincipalName = "User Principal Name value",
	DeviceModel = "Device Model value",
	State = ComplianceStatus.NotApplicable,
	ComplianceGracePeriodExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:56:44.951111-08:00"),
};
var result = await graphClient.DeviceManagement.DeviceCompliancePolicySettingStateSummaries["{deviceCompliancePolicySettingStateSummary-id}"].DeviceComplianceSettingStates["{deviceComplianceSettingState-id}"].PatchAsync(requestBody);


```