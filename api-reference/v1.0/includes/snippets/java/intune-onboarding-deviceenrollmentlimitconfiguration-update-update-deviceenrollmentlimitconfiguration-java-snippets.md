---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceEnrollmentLimitConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentLimitConfiguration();
deviceEnrollmentConfiguration.displayName = "Display Name value";
deviceEnrollmentConfiguration.description = "Description value";
deviceEnrollmentConfiguration.priority = 8;
deviceEnrollmentConfiguration.version = 7;
deviceEnrollmentConfiguration.limit = 5;

graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}")
	.buildRequest()
	.patch(deviceEnrollmentConfiguration);

```