---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationUserStatus managedDeviceMobileAppConfigurationUserStatus = new ManagedDeviceMobileAppConfigurationUserStatus();
managedDeviceMobileAppConfigurationUserStatus.userDisplayName = "User Display Name value";
managedDeviceMobileAppConfigurationUserStatus.devicesCount = 12;
managedDeviceMobileAppConfigurationUserStatus.status = ComplianceStatus.NOT_APPLICABLE;
managedDeviceMobileAppConfigurationUserStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
managedDeviceMobileAppConfigurationUserStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").userStatuses()
	.buildRequest()
	.post(managedDeviceMobileAppConfigurationUserStatus);

```