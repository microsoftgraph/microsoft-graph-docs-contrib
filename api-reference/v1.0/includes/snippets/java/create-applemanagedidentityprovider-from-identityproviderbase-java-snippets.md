---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppleManagedIdentityProvider identityProviderBase = new AppleManagedIdentityProvider();
identityProviderBase.displayName = "Sign in with Apple";
identityProviderBase.developerId = "UBF8T346G9";
identityProviderBase.serviceId = "com.microsoft.rts.b2c.test.client";
identityProviderBase.keyId = "99P6D879C4";
identityProviderBase.certificateData = "******";

graphClient.identity().identityProviders()
	.buildRequest()
	.post(identityProviderBase);

```