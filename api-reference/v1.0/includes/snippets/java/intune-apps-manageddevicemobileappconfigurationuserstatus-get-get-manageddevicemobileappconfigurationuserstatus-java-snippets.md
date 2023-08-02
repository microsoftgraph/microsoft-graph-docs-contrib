---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationUserStatus managedDeviceMobileAppConfigurationUserStatus = graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").userStatuses("{managedDeviceMobileAppConfigurationUserStatusId}")
	.buildRequest()
	.get();

```