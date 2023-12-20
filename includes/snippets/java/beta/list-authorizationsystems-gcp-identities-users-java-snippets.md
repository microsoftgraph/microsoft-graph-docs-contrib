---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpUserCollectionWithReferencesPage users = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().users()
	.buildRequest()
	.get();

```