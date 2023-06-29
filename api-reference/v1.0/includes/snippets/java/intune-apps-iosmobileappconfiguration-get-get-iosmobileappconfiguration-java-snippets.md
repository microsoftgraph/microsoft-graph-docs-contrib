---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfiguration managedDeviceMobileAppConfiguration = graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}")
	.buildRequest()
	.get();

```