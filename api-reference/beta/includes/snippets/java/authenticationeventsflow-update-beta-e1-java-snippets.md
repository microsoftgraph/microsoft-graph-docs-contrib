---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
authenticationEventsFlow.setOdataType("#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow");
authenticationEventsFlow.setDisplayName("New user flow description");
authenticationEventsFlow.setPriority(200);
AuthenticationEventsFlow result = graphClient.identity().authenticationEventsFlows().byAuthenticationEventsFlowId("{authenticationEventsFlow-id}").patch(authenticationEventsFlow);


```