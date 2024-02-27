---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDeviceMobileAppConfigurationDeviceStatus managedDeviceMobileAppConfigurationDeviceStatus = new ManagedDeviceMobileAppConfigurationDeviceStatus();
managedDeviceMobileAppConfigurationDeviceStatus.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus");
managedDeviceMobileAppConfigurationDeviceStatus.setDeviceDisplayName("Device Display Name value");
managedDeviceMobileAppConfigurationDeviceStatus.setUserName("User Name value");
managedDeviceMobileAppConfigurationDeviceStatus.setDeviceModel("Device Model value");
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
managedDeviceMobileAppConfigurationDeviceStatus.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
managedDeviceMobileAppConfigurationDeviceStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
managedDeviceMobileAppConfigurationDeviceStatus.setLastReportedDateTime(lastReportedDateTime);
managedDeviceMobileAppConfigurationDeviceStatus.setUserPrincipalName("User Principal Name value");
ManagedDeviceMobileAppConfigurationDeviceStatus result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").deviceStatuses().byManagedDeviceMobileAppConfigurationDeviceStatusId("{managedDeviceMobileAppConfigurationDeviceStatus-id}").patch(managedDeviceMobileAppConfigurationDeviceStatus);


```