---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttribute identityUserFlowAttribute = new IdentityUserFlowAttribute();
identityUserFlowAttribute.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identity/userFlowAttributes/city"));

graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e").microsoft.graph.externalUsersSelfServiceSignUpEventsFlow().microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp().attributes().references()
	.buildRequest()
	.post(identityUserFlowAttribute);

```