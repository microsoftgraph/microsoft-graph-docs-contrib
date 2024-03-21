---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceCompliancePolicyDeviceStateSummary deviceCompliancePolicyDeviceStateSummary = new DeviceCompliancePolicyDeviceStateSummary();
deviceCompliancePolicyDeviceStateSummary.setOdataType("#microsoft.graph.deviceCompliancePolicyDeviceStateSummary");
deviceCompliancePolicyDeviceStateSummary.setInGracePeriodCount(2);
deviceCompliancePolicyDeviceStateSummary.setConfigManagerCount(2);
deviceCompliancePolicyDeviceStateSummary.setUnknownDeviceCount(2);
deviceCompliancePolicyDeviceStateSummary.setNotApplicableDeviceCount(8);
deviceCompliancePolicyDeviceStateSummary.setCompliantDeviceCount(4);
deviceCompliancePolicyDeviceStateSummary.setRemediatedDeviceCount(5);
deviceCompliancePolicyDeviceStateSummary.setNonCompliantDeviceCount(7);
deviceCompliancePolicyDeviceStateSummary.setErrorDeviceCount(0);
deviceCompliancePolicyDeviceStateSummary.setConflictDeviceCount(3);
DeviceCompliancePolicyDeviceStateSummary result = graphClient.deviceManagement().deviceCompliancePolicyDeviceStateSummary().patch(deviceCompliancePolicyDeviceStateSummary);


```