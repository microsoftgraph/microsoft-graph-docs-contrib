---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.Custodian custodian = new com.microsoft.graph.beta.models.ediscovery.Custodian();
custodian.setApplyHoldToSources(false);
com.microsoft.graph.models.ediscovery.Custodian result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").custodians().byCustodianId("{custodian-id}").patch(custodian);


```