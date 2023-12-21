---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SettingStateDeviceSummary settingStateDeviceSummary = new SettingStateDeviceSummary();
settingStateDeviceSummary.settingName = "Setting Name value";
settingStateDeviceSummary.instancePath = "Instance Path value";
settingStateDeviceSummary.unknownDeviceCount = 2;
settingStateDeviceSummary.notApplicableDeviceCount = 8;
settingStateDeviceSummary.compliantDeviceCount = 4;
settingStateDeviceSummary.remediatedDeviceCount = 5;
settingStateDeviceSummary.nonCompliantDeviceCount = 7;
settingStateDeviceSummary.errorDeviceCount = 0;
settingStateDeviceSummary.conflictDeviceCount = 3;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceSettingStateSummaries("{settingStateDeviceSummaryId}")
	.buildRequest()
	.patch(settingStateDeviceSummary);

```