---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleDefinition roleDefinition = graphClient.deviceManagement().roleDefinitions("{roleDefinitionId}")
	.buildRequest()
	.get();

```