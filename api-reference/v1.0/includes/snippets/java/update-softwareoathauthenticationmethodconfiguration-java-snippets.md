---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SoftwareOathAuthenticationMethodConfiguration authenticationMethodConfiguration = new SoftwareOathAuthenticationMethodConfiguration();
authenticationMethodConfiguration.state = AuthenticationMethodState.DISABLED;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("softwareOath")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```