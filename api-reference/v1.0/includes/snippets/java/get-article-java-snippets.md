---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ArticleCollectionPage articles = graphClient.security().threatIntelligence().articles()
	.buildRequest()
	.get();

```