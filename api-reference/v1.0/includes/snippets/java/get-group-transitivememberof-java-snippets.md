---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage transitiveMemberOf = graphClient.groups("02bd9fd6-8f93-4758-87c3-1fb73740a315").transitiveMemberOf()
	.buildRequest()
	.get();

```