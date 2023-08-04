---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationCollectionPage mobileAppConfigurations = graphClient.deviceAppManagement().mobileAppConfigurations()
	.buildRequest()
	.get();

```