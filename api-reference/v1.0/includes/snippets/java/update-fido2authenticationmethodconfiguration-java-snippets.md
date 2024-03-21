---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Fido2AuthenticationMethodConfiguration authenticationMethodConfiguration = new Fido2AuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.fido2AuthenticationMethodConfiguration");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Enabled);
authenticationMethodConfiguration.setIsAttestationEnforced(true);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```