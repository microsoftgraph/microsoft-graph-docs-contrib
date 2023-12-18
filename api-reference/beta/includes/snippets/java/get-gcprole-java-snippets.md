---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpRole gcpRole = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().roles("cm9sZXMvYmFja3VwZHIuY29tcHV0ZUVuZ2luZU9wZXJhdG9y")
	.buildRequest()
	.get();

```