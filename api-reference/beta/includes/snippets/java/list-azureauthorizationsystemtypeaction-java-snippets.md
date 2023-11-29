---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemTypeActionCollectionPage actions = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().actions()
	.buildRequest()
	.get();

```