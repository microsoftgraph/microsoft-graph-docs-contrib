---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.noncustodialdatasources.microsoftgraphsecurityapplyhold.ApplyHoldPostRequestBody applyHoldPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.noncustodialdatasources.microsoftgraphsecurityapplyhold.ApplyHoldPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("39333641443238353535383731453339");
ids.add("46333131344239353834433430454335");
applyHoldPostRequestBody.setIds(ids);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").noncustodialDataSources().microsoftGraphSecurityApplyHold().post(applyHoldPostRequestBody);


```