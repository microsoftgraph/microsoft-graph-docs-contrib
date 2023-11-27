---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpAuthorizationSystemTypeAction gcpAuthorizationSystemTypeAction = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().actions("Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl")
	.buildRequest()
	.get();

```