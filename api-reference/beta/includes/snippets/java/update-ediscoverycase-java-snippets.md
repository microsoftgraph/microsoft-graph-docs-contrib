---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryCase ediscoveryCase = new com.microsoft.graph.beta.models.security.EdiscoveryCase();
ediscoveryCase.setDisplayName("My Case 1 - Renamed");
ediscoveryCase.setDescription("Updated description");
com.microsoft.graph.models.security.EdiscoveryCase result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").patch(ediscoveryCase);


```