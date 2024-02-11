---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceCompliancePolicySettingStateSummary deviceCompliancePolicySettingStateSummary = new DeviceCompliancePolicySettingStateSummary();
deviceCompliancePolicySettingStateSummary.setOdataType("#microsoft.graph.deviceCompliancePolicySettingStateSummary");
deviceCompliancePolicySettingStateSummary.setSetting("Setting value");
deviceCompliancePolicySettingStateSummary.setSettingName("Setting Name value");
deviceCompliancePolicySettingStateSummary.setPlatformType(PolicyPlatformType.IOS);
deviceCompliancePolicySettingStateSummary.setUnknownDeviceCount(2);
deviceCompliancePolicySettingStateSummary.setNotApplicableDeviceCount(8);
deviceCompliancePolicySettingStateSummary.setCompliantDeviceCount(4);
deviceCompliancePolicySettingStateSummary.setRemediatedDeviceCount(5);
deviceCompliancePolicySettingStateSummary.setNonCompliantDeviceCount(7);
deviceCompliancePolicySettingStateSummary.setErrorDeviceCount(0);
deviceCompliancePolicySettingStateSummary.setConflictDeviceCount(3);
DeviceCompliancePolicySettingStateSummary result = graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries().post(deviceCompliancePolicySettingStateSummary);


```