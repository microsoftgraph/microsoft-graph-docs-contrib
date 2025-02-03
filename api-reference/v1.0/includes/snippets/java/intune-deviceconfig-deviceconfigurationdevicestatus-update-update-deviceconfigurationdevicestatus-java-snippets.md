---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationDeviceStatus deviceConfigurationDeviceStatus = new DeviceConfigurationDeviceStatus();
deviceConfigurationDeviceStatus.setOdataType("#microsoft.graph.deviceConfigurationDeviceStatus");
deviceConfigurationDeviceStatus.setDeviceDisplayName("Device Display Name value");
deviceConfigurationDeviceStatus.setUserName("User Name value");
deviceConfigurationDeviceStatus.setDeviceModel("Device Model value");
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
deviceConfigurationDeviceStatus.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
deviceConfigurationDeviceStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
deviceConfigurationDeviceStatus.setLastReportedDateTime(lastReportedDateTime);
deviceConfigurationDeviceStatus.setUserPrincipalName("User Principal Name value");
DeviceConfigurationDeviceStatus result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").deviceStatuses().byDeviceConfigurationDeviceStatusId("{deviceConfigurationDeviceStatus-id}").patch(deviceConfigurationDeviceStatus);


```