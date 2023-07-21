---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleDefinitionCollectionPage roleDefinitions = graphClient.deviceManagement().roleDefinitions()
	.buildRequest()
	.get();

```