---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceStateSummary deviceConfigurationDeviceStateSummary = new DeviceConfigurationDeviceStateSummary();
deviceConfigurationDeviceStateSummary.unknownDeviceCount = 2;
deviceConfigurationDeviceStateSummary.notApplicableDeviceCount = 8;
deviceConfigurationDeviceStateSummary.compliantDeviceCount = 4;
deviceConfigurationDeviceStateSummary.remediatedDeviceCount = 5;
deviceConfigurationDeviceStateSummary.nonCompliantDeviceCount = 7;
deviceConfigurationDeviceStateSummary.errorDeviceCount = 0;
deviceConfigurationDeviceStateSummary.conflictDeviceCount = 3;

graphClient.deviceManagement().deviceConfigurationDeviceStateSummaries()
	.buildRequest()
	.patch(deviceConfigurationDeviceStateSummary);

```