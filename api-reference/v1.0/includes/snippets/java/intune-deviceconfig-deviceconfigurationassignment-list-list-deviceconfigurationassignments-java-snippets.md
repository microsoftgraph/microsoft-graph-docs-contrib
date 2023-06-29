---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationAssignmentCollectionPage assignments = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").assignments()
	.buildRequest()
	.get();

```