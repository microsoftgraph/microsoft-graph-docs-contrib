---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SmsAuthenticationMethodConfiguration authenticationMethodConfiguration = new SmsAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.smsAuthenticationMethodConfiguration");
authenticationMethodConfiguration.setId("Sms");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Enabled);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```