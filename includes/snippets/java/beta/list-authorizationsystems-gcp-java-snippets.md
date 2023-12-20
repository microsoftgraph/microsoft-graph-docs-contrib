---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpAuthorizationSystemCollectionPage gcpAuthorizationSystem = graphClient.external().authorizationSystems().microsoft.graph.gcpAuthorizationSystem()
	.buildRequest()
	.get();

```