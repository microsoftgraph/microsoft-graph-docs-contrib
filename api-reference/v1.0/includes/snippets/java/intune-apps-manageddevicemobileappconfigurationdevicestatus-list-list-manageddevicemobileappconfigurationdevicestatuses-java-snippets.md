---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationDeviceStatusCollectionPage deviceStatuses = graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").deviceStatuses()
	.buildRequest()
	.get();

```