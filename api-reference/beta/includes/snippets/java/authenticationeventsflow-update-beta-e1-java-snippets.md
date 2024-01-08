---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
authenticationEventsFlow.displayName = "New user flow description";
authenticationEventsFlow.priority = 200;

graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e")
	.buildRequest()
	.patch(authenticationEventsFlow);

```