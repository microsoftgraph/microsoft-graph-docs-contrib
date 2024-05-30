---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationUserStatus deviceConfigurationUserStatus = new DeviceConfigurationUserStatus();
deviceConfigurationUserStatus.setOdataType("#microsoft.graph.deviceConfigurationUserStatus");
deviceConfigurationUserStatus.setUserDisplayName("User Display Name value");
deviceConfigurationUserStatus.setDevicesCount(12);
deviceConfigurationUserStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
deviceConfigurationUserStatus.setLastReportedDateTime(lastReportedDateTime);
deviceConfigurationUserStatus.setUserPrincipalName("User Principal Name value");
DeviceConfigurationUserStatus result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").userStatuses().byDeviceConfigurationUserStatusId("{deviceConfigurationUserStatus-id}").patch(deviceConfigurationUserStatus);


```