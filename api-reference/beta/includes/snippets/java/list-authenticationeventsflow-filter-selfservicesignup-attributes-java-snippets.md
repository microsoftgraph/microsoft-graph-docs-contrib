---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationEventsFlowCollectionPage authenticationEventsFlows = graphClient.identity().authenticationEventsFlows()
	.buildRequest()
	.filter("microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq 'city')")
	.get();

```