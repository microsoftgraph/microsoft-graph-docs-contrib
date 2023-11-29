---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureManagedIdentity azureManagedIdentity = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().managedIdentities("{id}")
	.buildRequest()
	.get();

```