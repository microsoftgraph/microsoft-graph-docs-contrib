---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryReviewSetQuery ediscoveryReviewSetQuery = new com.microsoft.graph.models.security.EdiscoveryReviewSetQuery();
ediscoveryReviewSetQuery.setDisplayName("My Query 1");
ediscoveryReviewSetQuery.setContentQuery("(Author=\"edison\")");
com.microsoft.graph.models.security.EdiscoveryReviewSetQuery result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").queries().post(ediscoveryReviewSetQuery);


```