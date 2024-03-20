---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.custodians.microsoftgraphsecurityapplyhold.ApplyHoldPostRequestBody applyHoldPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.custodians.microsoftgraphsecurityapplyhold.ApplyHoldPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("7f697316-43ed-48e1-977f-261be050db93");
ids.add("b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8");
applyHoldPostRequestBody.setIds(ids);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").custodians().microsoftGraphSecurityApplyHold().post(applyHoldPostRequestBody);


```