---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase identityProviderBase = new IdentityProviderBase();
identityProviderBase.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identityProviders/Google-OAUTH"));

graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e").microsoft.graph.externalUsersSelfServiceSignUpEventsFlow().microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp().identityProviders().references()
	.buildRequest()
	.post(identityProviderBase);

```