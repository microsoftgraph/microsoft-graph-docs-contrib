---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpServiceAccount gcpServiceAccount = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().serviceAccounts("dGVzdC1zZXJ2aWNlLTAxQGhlbGxvLXdvcmxkLTIzMTEwNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ")
	.buildRequest()
	.get();

```