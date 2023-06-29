---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationUserOverview deviceConfigurationUserOverview = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").userStatusOverview()
	.buildRequest()
	.get();

```