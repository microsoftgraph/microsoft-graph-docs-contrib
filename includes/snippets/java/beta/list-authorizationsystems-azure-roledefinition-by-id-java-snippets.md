---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureRoleDefinition azureRoleDefinition = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().roleDefinitions("{id}")
	.buildRequest()
	.get();

```