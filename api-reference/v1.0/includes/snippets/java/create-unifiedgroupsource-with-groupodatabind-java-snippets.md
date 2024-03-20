---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.UnifiedGroupSource unifiedGroupSource = new com.microsoft.graph.models.security.UnifiedGroupSource();
unifiedGroupSource.setIncludedSources(EnumSet.of(com.microsoft.graph.models.security.SourceType.Mailbox));
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("group@odata.bind", "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610");
unifiedGroupSource.setAdditionalData(additionalData);
com.microsoft.graph.models.security.UnifiedGroupSource result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").custodians().byEdiscoveryCustodianId("{ediscoveryCustodian-id}").unifiedGroupSources().post(unifiedGroupSource);


```