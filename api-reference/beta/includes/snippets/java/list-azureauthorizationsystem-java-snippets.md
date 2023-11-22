---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemCollectionPage azureAuthorizationSystem = graphClient.external().authorizationSystems().microsoft.graph.azureAuthorizationSystem()
	.buildRequest()
	.get();

```