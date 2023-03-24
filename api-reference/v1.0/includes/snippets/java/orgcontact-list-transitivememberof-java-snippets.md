---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage transitiveMemberOf = graphClient.contacts("e63333f5-3d11-4026-8fe3-c0f7b044dd3a").transitiveMemberOf()
	.buildRequest()
	.get();

```