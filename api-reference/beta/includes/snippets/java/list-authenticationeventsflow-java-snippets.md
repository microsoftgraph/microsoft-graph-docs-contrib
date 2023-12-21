---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationEventsFlowCollectionPage authenticationEventsFlows = graphClient.identity().authenticationEventsFlows()
	.buildRequest()
	.get();

```