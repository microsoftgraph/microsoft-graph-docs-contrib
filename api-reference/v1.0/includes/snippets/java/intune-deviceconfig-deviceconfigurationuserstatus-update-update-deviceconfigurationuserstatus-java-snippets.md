---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationUserStatus deviceConfigurationUserStatus = new DeviceConfigurationUserStatus();
deviceConfigurationUserStatus.userDisplayName = "User Display Name value";
deviceConfigurationUserStatus.devicesCount = 12;
deviceConfigurationUserStatus.status = ComplianceStatus.NOT_APPLICABLE;
deviceConfigurationUserStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
deviceConfigurationUserStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").userStatuses("{deviceConfigurationUserStatusId}")
	.buildRequest()
	.patch(deviceConfigurationUserStatus);

```