---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpServiceAccount gcpServiceAccount = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().serviceAccounts("{id}")
	.buildRequest()
	.get();

```