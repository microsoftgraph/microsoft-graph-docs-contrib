---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceStatus deviceConfigurationDeviceStatus = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceStatuses("{deviceConfigurationDeviceStatusId}")
	.buildRequest()
	.get();

```