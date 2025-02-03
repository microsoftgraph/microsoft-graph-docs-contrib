---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDeviceMobileAppConfigurationUserSummary managedDeviceMobileAppConfigurationUserSummary = new ManagedDeviceMobileAppConfigurationUserSummary();
managedDeviceMobileAppConfigurationUserSummary.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationUserSummary");
managedDeviceMobileAppConfigurationUserSummary.setPendingCount(12);
managedDeviceMobileAppConfigurationUserSummary.setNotApplicableCount(2);
managedDeviceMobileAppConfigurationUserSummary.setSuccessCount(12);
managedDeviceMobileAppConfigurationUserSummary.setErrorCount(10);
managedDeviceMobileAppConfigurationUserSummary.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
managedDeviceMobileAppConfigurationUserSummary.setLastUpdateDateTime(lastUpdateDateTime);
managedDeviceMobileAppConfigurationUserSummary.setConfigurationVersion(4);
ManagedDeviceMobileAppConfigurationUserSummary result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").userStatusSummary().patch(managedDeviceMobileAppConfigurationUserSummary);


```