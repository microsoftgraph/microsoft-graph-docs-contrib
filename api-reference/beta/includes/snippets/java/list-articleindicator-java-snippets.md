---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ArticleIndicatorCollectionWithReferencesPage indicators = graphClient.security().threatIntelligence().articles("a272d5ab").indicators()
	.buildRequest()
	.get();

```