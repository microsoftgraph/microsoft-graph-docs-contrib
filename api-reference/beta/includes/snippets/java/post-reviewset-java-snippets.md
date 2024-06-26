---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.ReviewSet reviewSet = new com.microsoft.graph.beta.models.ediscovery.ReviewSet();
reviewSet.setDisplayName("My Reviewset 3");
com.microsoft.graph.models.ediscovery.ReviewSet result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").reviewSets().post(reviewSet);


```