---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceMobileAppConfigurationAssignment managedDeviceMobileAppConfigurationAssignment = graphClient.deviceAppManagement().mobileAppConfigurations("{managedDeviceMobileAppConfigurationId}").assignments("{managedDeviceMobileAppConfigurationAssignmentId}")
	.buildRequest()
	.get();

```