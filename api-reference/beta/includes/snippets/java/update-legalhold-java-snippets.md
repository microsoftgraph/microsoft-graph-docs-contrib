---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.LegalHold legalHold = new com.microsoft.graph.beta.models.ediscovery.LegalHold();
legalHold.setDescription("This is a description for a legalHold");
com.microsoft.graph.models.ediscovery.LegalHold result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").legalHolds().byLegalHoldId("{legalHold-id}").patch(legalHold);


```