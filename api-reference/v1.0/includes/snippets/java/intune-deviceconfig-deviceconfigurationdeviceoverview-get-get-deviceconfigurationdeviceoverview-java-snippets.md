---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceOverview deviceConfigurationDeviceOverview = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceStatusOverview()
	.buildRequest()
	.get();

```