---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDeviceMobileAppConfigurationDeviceSummary managedDeviceMobileAppConfigurationDeviceSummary = new ManagedDeviceMobileAppConfigurationDeviceSummary();
managedDeviceMobileAppConfigurationDeviceSummary.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationDeviceSummary");
managedDeviceMobileAppConfigurationDeviceSummary.setPendingCount(12);
managedDeviceMobileAppConfigurationDeviceSummary.setNotApplicableCount(2);
managedDeviceMobileAppConfigurationDeviceSummary.setSuccessCount(12);
managedDeviceMobileAppConfigurationDeviceSummary.setErrorCount(10);
managedDeviceMobileAppConfigurationDeviceSummary.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
managedDeviceMobileAppConfigurationDeviceSummary.setLastUpdateDateTime(lastUpdateDateTime);
managedDeviceMobileAppConfigurationDeviceSummary.setConfigurationVersion(4);
ManagedDeviceMobileAppConfigurationDeviceSummary result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").deviceStatusSummary().patch(managedDeviceMobileAppConfigurationDeviceSummary);


```