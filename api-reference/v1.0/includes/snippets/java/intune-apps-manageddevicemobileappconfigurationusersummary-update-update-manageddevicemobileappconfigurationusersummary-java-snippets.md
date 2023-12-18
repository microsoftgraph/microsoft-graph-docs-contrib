---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationUserSummary managedDeviceMobileAppConfigurationUserSummary = new ManagedDeviceMobileAppConfigurationUserSummary();
managedDeviceMobileAppConfigurationUserSummary.pendingCount = 12;
managedDeviceMobileAppConfigurationUserSummary.notApplicableCount = 2;
managedDeviceMobileAppConfigurationUserSummary.successCount = 12;
managedDeviceMobileAppConfigurationUserSummary.errorCount = 10;
managedDeviceMobileAppConfigurationUserSummary.failedCount = 11;
managedDeviceMobileAppConfigurationUserSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
managedDeviceMobileAppConfigurationUserSummary.configurationVersion = 4;

graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").userStatusSummary()
	.buildRequest()
	.patch(managedDeviceMobileAppConfigurationUserSummary);

```