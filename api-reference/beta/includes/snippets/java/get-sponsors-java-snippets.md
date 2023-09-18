---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage sponsors = graphClient.users("025e5e3e-e5b7-4eb4-ba1f-4e5b0579f1a2").sponsors()
	.buildRequest()
	.get();

```