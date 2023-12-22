---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureIdentityCollectionPage all = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().all()
	.buildRequest()
	.get();

```