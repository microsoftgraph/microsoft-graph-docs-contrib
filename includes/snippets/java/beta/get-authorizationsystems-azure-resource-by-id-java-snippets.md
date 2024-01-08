---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemResource azureAuthorizationSystemResource = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().resources("{id}")
	.buildRequest()
	.get();

```