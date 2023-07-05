---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationDeviceStatus managedDeviceMobileAppConfigurationDeviceStatus = new ManagedDeviceMobileAppConfigurationDeviceStatus();
managedDeviceMobileAppConfigurationDeviceStatus.deviceDisplayName = "Device Display Name value";
managedDeviceMobileAppConfigurationDeviceStatus.userName = "User Name value";
managedDeviceMobileAppConfigurationDeviceStatus.deviceModel = "Device Model value";
managedDeviceMobileAppConfigurationDeviceStatus.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");
managedDeviceMobileAppConfigurationDeviceStatus.status = ComplianceStatus.NOT_APPLICABLE;
managedDeviceMobileAppConfigurationDeviceStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
managedDeviceMobileAppConfigurationDeviceStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").deviceStatuses()
	.buildRequest()
	.post(managedDeviceMobileAppConfigurationDeviceStatus);

```