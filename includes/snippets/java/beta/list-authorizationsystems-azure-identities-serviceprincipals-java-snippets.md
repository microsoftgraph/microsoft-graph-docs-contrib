---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureServicePrincipalCollectionWithReferencesPage servicePrincipals = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().servicePrincipals()
	.buildRequest()
	.get();

```