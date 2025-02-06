---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.item.activate.ActivatePostRequestBody activatePostRequestBody = new com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.item.activate.ActivatePostRequestBody();
activatePostRequestBody.setVerificationCode("588651");
activatePostRequestBody.setDisplayName("Amy Masters Token");
graphClient.me().authentication().hardwareOathMethods().byHardwareOathAuthenticationMethodId("{hardwareOathAuthenticationMethod-id}").activate().post(activatePostRequestBody);


```