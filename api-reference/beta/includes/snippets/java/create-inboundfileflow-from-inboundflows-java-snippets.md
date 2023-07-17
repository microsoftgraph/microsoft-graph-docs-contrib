---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InboundFileFlow inboundFlow = new InboundFileFlow();
inboundFlow.additionalDataManager().put("dataConnector@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271"));
inboundFlow.dataDomain = InboundDomain.EDUCATION_ROSTERING;
inboundFlow.displayName = "Inbound rostering flow";
inboundFlow.effectiveDateTime = OffsetDateTimeSerializer.deserialize("2023-03-12T11:10:46.924769+00:00");
inboundFlow.expirationDateTime = OffsetDateTimeSerializer.deserialize("2023-03-13T11:10:46.924769+00:00");
inboundFlow.additionalDataManager().put("year@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb"));

graphClient.external().industryData().inboundFlows()
	.buildRequest()
	.post(inboundFlow);

```