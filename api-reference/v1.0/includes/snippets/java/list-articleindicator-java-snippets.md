---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.ArticleIndicatorCollectionResponse result = graphClient.security().threatIntelligence().articles().byArticleId("{article-id}").indicators().get();


```