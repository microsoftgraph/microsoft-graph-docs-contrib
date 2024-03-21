---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.UserSource userSource = new com.microsoft.graph.models.security.UserSource();
userSource.setEmail("admin@contoso.com");
userSource.setIncludedSources(EnumSet.of(com.microsoft.graph.models.security.SourceType.Mailbox, com.microsoft.graph.models.security.SourceType.Site));
com.microsoft.graph.models.security.UserSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").custodians().byEdiscoveryCustodianId("{ediscoveryCustodian-id}").userSources().post(userSource);


```