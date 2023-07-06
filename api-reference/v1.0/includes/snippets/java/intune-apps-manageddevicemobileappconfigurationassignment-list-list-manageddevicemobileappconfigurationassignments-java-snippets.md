---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationAssignmentCollectionPage assignments = graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").assignments()
	.buildRequest()
	.get();

```