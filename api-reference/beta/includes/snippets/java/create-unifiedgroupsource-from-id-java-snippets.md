---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.UnifiedGroupSource unifiedGroupSource = new com.microsoft.graph.beta.models.ediscovery.UnifiedGroupSource();
unifiedGroupSource.setIncludedSources(EnumSet.of(com.microsoft.graph.beta.models.ediscovery.SourceType.Mailbox, com.microsoft.graph.beta.models.ediscovery.SourceType.Site));
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("group@odata.bind", "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84");
unifiedGroupSource.setAdditionalData(additionalData);
com.microsoft.graph.models.ediscovery.UnifiedGroupSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").custodians().byCustodianId("{custodian-id}").unifiedGroupSources().post(unifiedGroupSource);


```