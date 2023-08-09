---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationDeviceStateSummary deviceConfigurationDeviceStateSummary = graphClient.deviceManagement().deviceConfigurationDeviceStateSummaries()
	.buildRequest()
	.get();

```