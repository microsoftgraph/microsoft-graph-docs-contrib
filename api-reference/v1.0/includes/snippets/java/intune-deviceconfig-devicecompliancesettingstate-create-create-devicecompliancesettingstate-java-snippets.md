---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceSettingState deviceComplianceSettingState = new DeviceComplianceSettingState();
deviceComplianceSettingState.setting = "Setting value";
deviceComplianceSettingState.settingName = "Setting Name value";
deviceComplianceSettingState.deviceId = "Device Id value";
deviceComplianceSettingState.deviceName = "Device Name value";
deviceComplianceSettingState.userId = "User Id value";
deviceComplianceSettingState.userEmail = "User Email value";
deviceComplianceSettingState.userName = "User Name value";
deviceComplianceSettingState.userPrincipalName = "User Principal Name value";
deviceComplianceSettingState.deviceModel = "Device Model value";
deviceComplianceSettingState.state = ComplianceStatus.NOT_APPLICABLE;
deviceComplianceSettingState.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");

graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries("{deviceCompliancePolicySettingStateSummaryId}").deviceComplianceSettingStates()
	.buildRequest()
	.post(deviceComplianceSettingState);

```