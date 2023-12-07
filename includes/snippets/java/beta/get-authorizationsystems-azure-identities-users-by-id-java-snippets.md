---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureUser azureUser = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().users("{id}")
	.buildRequest()
	.get();

```