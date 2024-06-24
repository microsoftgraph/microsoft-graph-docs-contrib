---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.UnifiedGroupSource unifiedGroupSource = new com.microsoft.graph.beta.models.ediscovery.UnifiedGroupSource();
Group group = new Group();
group.setMail("SecretGroup@contoso.com");
unifiedGroupSource.setGroup(group);
unifiedGroupSource.setIncludedSources(EnumSet.of(com.microsoft.graph.beta.models.ediscovery.SourceType.Mailbox, com.microsoft.graph.beta.models.ediscovery.SourceType.Site));
com.microsoft.graph.models.ediscovery.UnifiedGroupSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").custodians().byCustodianId("{custodian-id}").unifiedGroupSources().post(unifiedGroupSource);


```