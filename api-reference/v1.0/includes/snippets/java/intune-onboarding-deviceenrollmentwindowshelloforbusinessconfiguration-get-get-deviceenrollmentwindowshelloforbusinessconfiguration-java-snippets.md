---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceEnrollmentConfiguration deviceEnrollmentConfiguration = graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}")
	.buildRequest()
	.get();

```