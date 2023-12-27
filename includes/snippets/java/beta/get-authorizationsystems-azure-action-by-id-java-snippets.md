---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemTypeAction azureAuthorizationSystemTypeAction = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().actions("{id}")
	.buildRequest()
	.get();

```