---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SocialIdentityProvider identityProviderBase = new SocialIdentityProvider();
identityProviderBase.clientSecret = "1111111111111";

graphClient.identity().identityProviders("Amazon-OAUTH")
	.buildRequest()
	.patch(identityProviderBase);

```