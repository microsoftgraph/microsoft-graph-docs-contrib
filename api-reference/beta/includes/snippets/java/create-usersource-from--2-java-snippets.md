---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.UserSource userSource = new com.microsoft.graph.beta.models.ediscovery.UserSource();
userSource.setEmail("adelev@contoso.com");
userSource.setIncludedSources(EnumSet.of(com.microsoft.graph.beta.models.ediscovery.SourceType.Mailbox));
com.microsoft.graph.models.ediscovery.UserSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").legalHolds().byLegalHoldId("{legalHold-id}").userSources().post(userSource);


```