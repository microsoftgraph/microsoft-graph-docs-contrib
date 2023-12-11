---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureRoleDefinitionCollectionPage roleDefinitions = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().roleDefinitions()
	.buildRequest()
	.get();

```