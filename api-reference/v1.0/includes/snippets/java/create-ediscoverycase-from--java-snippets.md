---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryCase ediscoveryCase = new com.microsoft.graph.models.security.EdiscoveryCase();
ediscoveryCase.setDisplayName("CONTOSO LITIGATION-005");
ediscoveryCase.setDescription("Project Bazooka");
ediscoveryCase.setExternalId("324516");
com.microsoft.graph.models.security.EdiscoveryCase result = graphClient.security().cases().ediscoveryCases().post(ediscoveryCase);


```