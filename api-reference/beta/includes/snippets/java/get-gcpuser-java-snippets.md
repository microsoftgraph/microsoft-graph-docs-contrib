---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpUser gcpUser = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().users("dXNlcjFAZ3N1aXRlMS5jb20")
	.buildRequest()
	.get();

```