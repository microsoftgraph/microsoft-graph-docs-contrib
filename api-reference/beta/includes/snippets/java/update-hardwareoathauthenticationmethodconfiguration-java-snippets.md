---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HardwareOathAuthenticationMethodConfiguration authenticationMethodConfiguration = new HardwareOathAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.hardwareOathAuthenticationMethodConfiguration");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Disabled);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```