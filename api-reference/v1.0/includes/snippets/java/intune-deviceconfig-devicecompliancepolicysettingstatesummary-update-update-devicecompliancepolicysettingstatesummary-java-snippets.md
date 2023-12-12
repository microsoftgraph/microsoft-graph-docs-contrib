---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicySettingStateSummary deviceCompliancePolicySettingStateSummary = new DeviceCompliancePolicySettingStateSummary();
deviceCompliancePolicySettingStateSummary.setting = "Setting value";
deviceCompliancePolicySettingStateSummary.settingName = "Setting Name value";
deviceCompliancePolicySettingStateSummary.platformType = PolicyPlatformType.I_O_S;
deviceCompliancePolicySettingStateSummary.unknownDeviceCount = 2;
deviceCompliancePolicySettingStateSummary.notApplicableDeviceCount = 8;
deviceCompliancePolicySettingStateSummary.compliantDeviceCount = 4;
deviceCompliancePolicySettingStateSummary.remediatedDeviceCount = 5;
deviceCompliancePolicySettingStateSummary.nonCompliantDeviceCount = 7;
deviceCompliancePolicySettingStateSummary.errorDeviceCount = 0;
deviceCompliancePolicySettingStateSummary.conflictDeviceCount = 3;

graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries("{deviceCompliancePolicySettingStateSummaryId}")
	.buildRequest()
	.patch(deviceCompliancePolicySettingStateSummary);

```