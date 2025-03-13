---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.ReviewSetQuery reviewSetQuery = new com.microsoft.graph.beta.models.ediscovery.ReviewSetQuery();
reviewSetQuery.setDisplayName("My Query 1 - Renamed");
com.microsoft.graph.models.ediscovery.ReviewSetQuery result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").reviewSets().byReviewSetId("{reviewSet-id}").queries().byReviewSetQueryId("{reviewSetQuery-id}").patch(reviewSetQuery);


```