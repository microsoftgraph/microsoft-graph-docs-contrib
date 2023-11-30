---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemResourceCollectionPage resources = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().resources()
	.buildRequest()
	.get();

```