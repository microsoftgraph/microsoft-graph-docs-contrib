---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceStatus deviceConfigurationDeviceStatus = new DeviceConfigurationDeviceStatus();
deviceConfigurationDeviceStatus.deviceDisplayName = "Device Display Name value";
deviceConfigurationDeviceStatus.userName = "User Name value";
deviceConfigurationDeviceStatus.deviceModel = "Device Model value";
deviceConfigurationDeviceStatus.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");
deviceConfigurationDeviceStatus.status = ComplianceStatus.NOT_APPLICABLE;
deviceConfigurationDeviceStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
deviceConfigurationDeviceStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceStatuses()
	.buildRequest()
	.post(deviceConfigurationDeviceStatus);

```