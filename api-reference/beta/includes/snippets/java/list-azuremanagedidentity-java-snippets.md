---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureManagedIdentityCollectionWithReferencesPage managedIdentities = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().managedIdentities()
	.buildRequest()
	.get();

```