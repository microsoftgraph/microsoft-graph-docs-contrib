---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InboundFlowCollectionPage inboundFlows = graphClient.external().industryData().inboundFlows()
	.buildRequest()
	.get();

```