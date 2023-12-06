---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpRole gcpRole = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().roles("{id}")
	.buildRequest()
	.get();

```