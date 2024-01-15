---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpRoleCollectionPage roles = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().roles()
	.buildRequest()
	.get();

```