---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.EdiscoveryCustodian ediscoveryCustodian = new com.microsoft.graph.models.security.EdiscoveryCustodian();
ediscoveryCustodian.setEmail("AdeleV@contoso.com");
com.microsoft.graph.models.security.EdiscoveryCustodian result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").custodians().post(ediscoveryCustodian);


```