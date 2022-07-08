---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodConfiguration authenticationMethodConfiguration = new AuthenticationMethodConfiguration();
authenticationMethodConfiguration.isUsableOnce = true;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("temporaryAccessPass")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```