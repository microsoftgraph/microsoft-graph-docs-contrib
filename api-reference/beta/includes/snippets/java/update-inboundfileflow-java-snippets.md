---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InboundFlow inboundFlow = new InboundFlow();
inboundFlow.displayName = "My Inbound Flow";
inboundFlow.effectiveDateTime = OffsetDateTimeSerializer.deserialize("2022-03-12T11:10:46.924769+00:00");
inboundFlow.expirationDateTime = OffsetDateTimeSerializer.deserialize("2023-03-12T11:10:46.924769+00:00");

graphClient.external().industryData().inboundFlows("7bd62d17-8c37-4494-f68d-08daddab2911")
	.buildRequest()
	.patch(inboundFlow);

```