---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationUserStatus deviceConfigurationUserStatus = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").userStatuses("{deviceConfigurationUserStatusId}")
	.buildRequest()
	.get();

```