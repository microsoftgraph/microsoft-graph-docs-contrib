---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationDeviceStateSummary deviceConfigurationDeviceStateSummary = new DeviceConfigurationDeviceStateSummary();
deviceConfigurationDeviceStateSummary.setOdataType("#microsoft.graph.deviceConfigurationDeviceStateSummary");
deviceConfigurationDeviceStateSummary.setUnknownDeviceCount(2);
deviceConfigurationDeviceStateSummary.setNotApplicableDeviceCount(8);
deviceConfigurationDeviceStateSummary.setCompliantDeviceCount(4);
deviceConfigurationDeviceStateSummary.setRemediatedDeviceCount(5);
deviceConfigurationDeviceStateSummary.setNonCompliantDeviceCount(7);
deviceConfigurationDeviceStateSummary.setErrorDeviceCount(0);
deviceConfigurationDeviceStateSummary.setConflictDeviceCount(3);
DeviceConfigurationDeviceStateSummary result = graphClient.deviceManagement().deviceConfigurationDeviceStateSummaries().patch(deviceConfigurationDeviceStateSummary);


```