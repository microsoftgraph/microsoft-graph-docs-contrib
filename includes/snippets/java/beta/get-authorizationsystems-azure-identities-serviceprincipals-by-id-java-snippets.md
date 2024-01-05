---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureServicePrincipal azureServicePrincipal = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().servicePrincipals("{id}")
	.buildRequest()
	.get();

```