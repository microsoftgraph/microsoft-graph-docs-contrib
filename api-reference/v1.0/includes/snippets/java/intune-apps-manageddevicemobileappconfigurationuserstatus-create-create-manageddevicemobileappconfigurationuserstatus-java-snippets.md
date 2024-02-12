---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDeviceMobileAppConfigurationUserStatus managedDeviceMobileAppConfigurationUserStatus = new ManagedDeviceMobileAppConfigurationUserStatus();
managedDeviceMobileAppConfigurationUserStatus.setOdataType("#microsoft.graph.managedDeviceMobileAppConfigurationUserStatus");
managedDeviceMobileAppConfigurationUserStatus.setUserDisplayName("User Display Name value");
managedDeviceMobileAppConfigurationUserStatus.setDevicesCount(12);
managedDeviceMobileAppConfigurationUserStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
managedDeviceMobileAppConfigurationUserStatus.setLastReportedDateTime(lastReportedDateTime);
managedDeviceMobileAppConfigurationUserStatus.setUserPrincipalName("User Principal Name value");
ManagedDeviceMobileAppConfigurationUserStatus result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").userStatuses().post(managedDeviceMobileAppConfigurationUserStatus);


```