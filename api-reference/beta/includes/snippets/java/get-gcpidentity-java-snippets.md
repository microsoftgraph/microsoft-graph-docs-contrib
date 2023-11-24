---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpIdentity gcpIdentity = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().all("dXNlcjFAZ3N1aXRlMS5jb20")
	.buildRequest()
	.get();

```