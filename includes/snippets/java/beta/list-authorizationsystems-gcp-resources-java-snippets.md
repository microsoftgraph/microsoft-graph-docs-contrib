---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpAuthorizationSystemResourceCollectionPage resources = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().resources()
	.buildRequest()
	.get();

```