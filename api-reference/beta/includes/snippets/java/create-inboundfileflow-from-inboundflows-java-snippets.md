---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.InboundFileFlow inboundFlow = new com.microsoft.graph.beta.models.industrydata.InboundFileFlow();
inboundFlow.setOdataType("#microsoft.graph.industryData.inboundFileFlow");
inboundFlow.setDataDomain(com.microsoft.graph.beta.models.industrydata.InboundDomain.EducationRostering);
inboundFlow.setDisplayName("Inbound rostering flow");
OffsetDateTime effectiveDateTime = OffsetDateTime.parse("2023-03-12T16:40:46.924769+05:30");
inboundFlow.setEffectiveDateTime(effectiveDateTime);
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2023-03-13T16:40:46.924769+05:30");
inboundFlow.setExpirationDateTime(expirationDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("dataConnector@odata.bind", "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271");
additionalData.put("year@odata.bind", "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb");
inboundFlow.setAdditionalData(additionalData);
com.microsoft.graph.models.industrydata.InboundFlow result = graphClient.external().industryData().inboundFlows().post(inboundFlow);


```