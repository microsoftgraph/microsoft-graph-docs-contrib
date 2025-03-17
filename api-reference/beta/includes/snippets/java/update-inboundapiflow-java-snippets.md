---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.InboundApiFlow inboundFlow = new com.microsoft.graph.beta.models.industrydata.InboundApiFlow();
inboundFlow.setOdataType("#microsoft.graph.industryData.inboundApiFlow");
inboundFlow.setDisplayName("Updated flow name");
com.microsoft.graph.models.industrydata.InboundFlow result = graphClient.external().industryData().inboundFlows().byInboundFlowId("{inboundFlow-id}").patch(inboundFlow);


```