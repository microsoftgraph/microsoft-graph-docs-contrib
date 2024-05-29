---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryReviewSet ediscoveryReviewSet = new com.microsoft.graph.models.security.EdiscoveryReviewSet();
ediscoveryReviewSet.setDisplayName("My review set 2");
com.microsoft.graph.models.security.EdiscoveryReviewSet result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().post(ediscoveryReviewSet);


```