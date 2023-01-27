---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VoiceAuthenticationMethodConfiguration authenticationMethodConfiguration = new VoiceAuthenticationMethodConfiguration();
authenticationMethodConfiguration.isOfficePhoneAllowed = false;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("voice")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```