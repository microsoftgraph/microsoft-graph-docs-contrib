---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationDeviceSummary managedDeviceMobileAppConfigurationDeviceSummary = new ManagedDeviceMobileAppConfigurationDeviceSummary();
managedDeviceMobileAppConfigurationDeviceSummary.pendingCount = 12;
managedDeviceMobileAppConfigurationDeviceSummary.notApplicableCount = 2;
managedDeviceMobileAppConfigurationDeviceSummary.successCount = 12;
managedDeviceMobileAppConfigurationDeviceSummary.errorCount = 10;
managedDeviceMobileAppConfigurationDeviceSummary.failedCount = 11;
managedDeviceMobileAppConfigurationDeviceSummary.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
managedDeviceMobileAppConfigurationDeviceSummary.configurationVersion = 4;

graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").deviceStatusSummary()
	.buildRequest()
	.patch(managedDeviceMobileAppConfigurationDeviceSummary);

```