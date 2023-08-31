---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationUserOverview deviceConfigurationUserOverview = new DeviceConfigurationUserOverview();
deviceConfigurationUserOverview.pendingCount = 12;
deviceConfigurationUserOverview.notApplicableCount = 2;
deviceConfigurationUserOverview.successCount = 12;
deviceConfigurationUserOverview.errorCount = 10;
deviceConfigurationUserOverview.failedCount = 11;
deviceConfigurationUserOverview.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
deviceConfigurationUserOverview.configurationVersion = 4;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").userStatusOverview()
	.buildRequest()
	.patch(deviceConfigurationUserOverview);

```