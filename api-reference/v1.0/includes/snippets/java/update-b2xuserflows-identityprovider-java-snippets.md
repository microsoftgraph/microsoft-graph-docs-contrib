---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProvider identityProviders = new IdentityProvider();
identityProviders.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/identityProviders/Facebook-OAUTH"));

graphClient.identity().b2xUserFlows("B2X_1_Partner").identityProviders().references()
	.buildRequest()
	.patch(identityProviders);

```