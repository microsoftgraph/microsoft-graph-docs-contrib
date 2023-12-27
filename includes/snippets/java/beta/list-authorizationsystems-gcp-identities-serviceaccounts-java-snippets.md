---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GcpServiceAccountCollectionWithReferencesPage serviceAccounts = graphClient.external().authorizationSystems("{id}").microsoft.graph.gcpAuthorizationSystem().serviceAccounts()
	.buildRequest()
	.get();

```