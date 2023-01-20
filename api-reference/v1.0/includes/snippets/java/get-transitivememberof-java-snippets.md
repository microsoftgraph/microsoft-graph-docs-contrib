---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage transitiveMemberOf = graphClient.users("6e7b768e-07e2-4810-8459-485f84f8f204").transitiveMemberOf()
	.buildRequest()
	.get();

```