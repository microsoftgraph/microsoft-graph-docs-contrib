---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InboundFileFlow inboundFlow = new InboundFileFlow();
inboundFlow.displayName = "Updated flow name";

graphClient.external().industryData().inboundFlows("7bd62d17-8c37-4494-f68d-08daddab2911")
	.buildRequest()
	.patch(inboundFlow);

```