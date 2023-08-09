---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationEventsFlow authenticationEventsFlow = graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e")
	.buildRequest()
	.get();

```