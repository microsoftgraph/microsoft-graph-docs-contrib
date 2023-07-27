---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceStatusCollectionPage deviceStatuses = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceStatuses()
	.buildRequest()
	.get();

```