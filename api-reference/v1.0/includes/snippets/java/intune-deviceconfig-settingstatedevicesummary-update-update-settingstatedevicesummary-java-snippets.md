---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SettingStateDeviceSummary settingStateDeviceSummary = new SettingStateDeviceSummary();
settingStateDeviceSummary.setOdataType("#microsoft.graph.settingStateDeviceSummary");
settingStateDeviceSummary.setSettingName("Setting Name value");
settingStateDeviceSummary.setInstancePath("Instance Path value");
settingStateDeviceSummary.setUnknownDeviceCount(2);
settingStateDeviceSummary.setNotApplicableDeviceCount(8);
settingStateDeviceSummary.setCompliantDeviceCount(4);
settingStateDeviceSummary.setRemediatedDeviceCount(5);
settingStateDeviceSummary.setNonCompliantDeviceCount(7);
settingStateDeviceSummary.setErrorDeviceCount(0);
settingStateDeviceSummary.setConflictDeviceCount(3);
SettingStateDeviceSummary result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").deviceSettingStateSummaries().bySettingStateDeviceSummaryId("{settingStateDeviceSummary-id}").patch(settingStateDeviceSummary);


```