---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directory.recommendations.item.impactedresources.item.dismiss.DismissPostRequestBody dismissPostRequestBody = new com.microsoft.graph.beta.directory.recommendations.item.impactedresources.item.dismiss.DismissPostRequestBody();
dismissPostRequestBody.setDismissReason("Application is no longer needed.");
var result = graphClient.directory().recommendations().byRecommendationId("{recommendation-id}").impactedResources().byImpactedResourceId("{impactedResource-id}").dismiss().post(dismissPostRequestBody);


```