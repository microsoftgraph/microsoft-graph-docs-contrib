---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.UnifiedGroupSource unifiedGroupSource = new com.microsoft.graph.beta.models.security.UnifiedGroupSource();
Group group = new Group();
group.setMail("SOCTeam@contoso.com");
unifiedGroupSource.setGroup(group);
unifiedGroupSource.setIncludedSources(EnumSet.of(com.microsoft.graph.beta.models.security.SourceType.Mailbox, com.microsoft.graph.beta.models.security.SourceType.Site));
com.microsoft.graph.models.security.UnifiedGroupSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").custodians().byEdiscoveryCustodianId("{ediscoveryCustodian-id}").unifiedGroupSources().post(unifiedGroupSource);


```