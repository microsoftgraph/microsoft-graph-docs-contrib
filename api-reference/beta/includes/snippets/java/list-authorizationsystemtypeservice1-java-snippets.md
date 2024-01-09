---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationSystemTypeServiceCollectionPage services = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().services()
	.buildRequest()
	.get();

```