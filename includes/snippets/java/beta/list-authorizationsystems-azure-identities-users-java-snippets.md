---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureUserCollectionWithReferencesPage users = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().users()
	.buildRequest()
	.get();

```