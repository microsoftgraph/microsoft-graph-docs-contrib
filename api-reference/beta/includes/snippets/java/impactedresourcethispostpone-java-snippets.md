---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directory.recommendations.item.impactedresources.item.postpone.PostponePostRequestBody postponePostRequestBody = new com.microsoft.graph.beta.directory.recommendations.item.impactedresources.item.postpone.PostponePostRequestBody();
OffsetDateTime postponeUntilDateTime = OffsetDateTime.parse("2023-03-01T09:40:39.0420371Z");
postponePostRequestBody.setPostponeUntilDateTime(postponeUntilDateTime);
var result = graphClient.directory().recommendations().byRecommendationId("{recommendation-id}").impactedResources().byImpactedResourceId("{impactedResource-id}").postpone().post(postponePostRequestBody);


```