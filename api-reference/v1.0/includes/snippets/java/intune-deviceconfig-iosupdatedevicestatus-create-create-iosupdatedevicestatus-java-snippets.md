---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosUpdateDeviceStatus iosUpdateDeviceStatus = new IosUpdateDeviceStatus();
iosUpdateDeviceStatus.installStatus = IosUpdatesInstallStatus.AVAILABLE;
iosUpdateDeviceStatus.osVersion = "Os Version value";
iosUpdateDeviceStatus.deviceId = "Device Id value";
iosUpdateDeviceStatus.userId = "User Id value";
iosUpdateDeviceStatus.deviceDisplayName = "Device Display Name value";
iosUpdateDeviceStatus.userName = "User Name value";
iosUpdateDeviceStatus.deviceModel = "Device Model value";
iosUpdateDeviceStatus.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");
iosUpdateDeviceStatus.status = ComplianceStatus.NOT_APPLICABLE;
iosUpdateDeviceStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
iosUpdateDeviceStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().iosUpdateStatuses()
	.buildRequest()
	.post(iosUpdateDeviceStatus);

```