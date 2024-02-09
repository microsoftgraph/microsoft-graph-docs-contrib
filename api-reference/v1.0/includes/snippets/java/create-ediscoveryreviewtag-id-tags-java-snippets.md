---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryReviewTag ediscoveryReviewTag = new com.microsoft.graph.models.security.EdiscoveryReviewTag();
ediscoveryReviewTag.setDisplayName("My tag API");
ediscoveryReviewTag.setDescription("Use Graph API to create tags");
ediscoveryReviewTag.setChildSelectability(com.microsoft.graph.models.security.ChildSelectability.Many);
com.microsoft.graph.models.security.EdiscoveryReviewTag result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").tags().post(ediscoveryReviewTag);


```