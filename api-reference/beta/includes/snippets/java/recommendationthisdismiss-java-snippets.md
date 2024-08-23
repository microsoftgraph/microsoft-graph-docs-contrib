---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directory.recommendations.item.dismiss.DismissPostRequestBody dismissPostRequestBody = new com.microsoft.graph.beta.directory.recommendations.item.dismiss.DismissPostRequestBody();
dismissPostRequestBody.setDismissReason("Recommendations is not relevant for my organization because...");
var result = graphClient.directory().recommendations().byRecommendationId("{recommendation-id}").dismiss().post(dismissPostRequestBody);


```