---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

QrCodePinAuthenticationMethodConfiguration authenticationMethodConfiguration = new QrCodePinAuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.qrCodePinAuthenticationMethodConfiguration");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Enabled);
authenticationMethodConfiguration.setStandardQRCodeLifetimeInDays(180);
authenticationMethodConfiguration.setPinLength(10);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```