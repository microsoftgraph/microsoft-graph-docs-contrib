---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceOverview deviceConfigurationDeviceOverview = new DeviceConfigurationDeviceOverview();
deviceConfigurationDeviceOverview.pendingCount = 12;
deviceConfigurationDeviceOverview.notApplicableCount = 2;
deviceConfigurationDeviceOverview.successCount = 12;
deviceConfigurationDeviceOverview.errorCount = 10;
deviceConfigurationDeviceOverview.failedCount = 11;
deviceConfigurationDeviceOverview.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
deviceConfigurationDeviceOverview.configurationVersion = 4;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceStatusOverview()
	.buildRequest()
	.patch(deviceConfigurationDeviceOverview);

```