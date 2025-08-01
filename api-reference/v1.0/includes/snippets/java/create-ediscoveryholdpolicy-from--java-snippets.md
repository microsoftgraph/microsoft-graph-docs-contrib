---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryHoldPolicy ediscoveryHoldPolicy = new com.microsoft.graph.beta.models.security.EdiscoveryHoldPolicy();
ediscoveryHoldPolicy.setDisplayName("My legalHold with sources");
ediscoveryHoldPolicy.setDescription("Created from Graph API");
ediscoveryHoldPolicy.setContentQuery("KQL content query");
com.microsoft.graph.models.security.EdiscoveryHoldPolicy result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").legalHolds().post(ediscoveryHoldPolicy);


```