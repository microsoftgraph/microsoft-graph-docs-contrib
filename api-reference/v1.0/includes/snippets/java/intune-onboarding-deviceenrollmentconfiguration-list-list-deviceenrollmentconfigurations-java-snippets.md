---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceEnrollmentConfigurationCollectionPage deviceEnrollmentConfigurations = graphClient.deviceManagement().deviceEnrollmentConfigurations()
	.buildRequest()
	.get();

```