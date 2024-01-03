---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpIdentityCollectionPage all = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().all()
	.buildRequest()
	.get();

```