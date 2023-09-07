---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HardwareOathAuthenticationMethodConfiguration authenticationMethodConfiguration = new HardwareOathAuthenticationMethodConfiguration();
authenticationMethodConfiguration.state = AuthenticationMethodState.DISABLED;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("hardwareOath")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```