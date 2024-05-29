---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.InboundFlow inboundFlow = new com.microsoft.graph.beta.models.industrydata.InboundFlow();
inboundFlow.setOdataType("#microsoft.graph.industryData.inboundFlow");
inboundFlow.setDisplayName("My Inbound Flow");
OffsetDateTime effectiveDateTime = OffsetDateTime.parse("2022-03-12T16:40:46.924769+05:30");
inboundFlow.setEffectiveDateTime(effectiveDateTime);
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2023-03-12T16:40:46.924769+05:30");
inboundFlow.setExpirationDateTime(expirationDateTime);
com.microsoft.graph.models.industrydata.InboundFlow result = graphClient.external().industryData().inboundFlows().byInboundFlowId("{inboundFlow-id}").patch(inboundFlow);


```