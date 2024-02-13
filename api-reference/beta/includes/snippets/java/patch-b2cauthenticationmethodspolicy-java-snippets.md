---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2cAuthenticationMethodsPolicy b2cAuthenticationMethodsPolicy = new B2cAuthenticationMethodsPolicy();
b2cAuthenticationMethodsPolicy.setIsEmailPasswordAuthenticationEnabled(false);
b2cAuthenticationMethodsPolicy.setIsUserNameAuthenticationEnabled(true);
b2cAuthenticationMethodsPolicy.setIsPhoneOneTimePasswordAuthenticationEnabled(true);
B2cAuthenticationMethodsPolicy result = graphClient.policies().b2cAuthenticationMethodsPolicy().patch(b2cAuthenticationMethodsPolicy);


```