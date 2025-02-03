---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VoiceAuthenticationMethodConfiguration authenticationMethodConfiguration = new VoiceAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.voiceAuthenticationMethodConfiguration");
authenticationMethodConfiguration.setIsOfficePhoneAllowed(false);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```