---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.UserSource userSource = new com.microsoft.graph.beta.models.security.UserSource();
userSource.setEmail("admin@contoso.com");
userSource.setIncludedSources(EnumSet.of(com.microsoft.graph.beta.models.security.SourceType.Mailbox));
com.microsoft.graph.models.security.UserSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").legalHolds().byEdiscoveryHoldPolicyId("{ediscoveryHoldPolicy-id}").userSources().post(userSource);


```