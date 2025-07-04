---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.assignandactivate.AssignAndActivatePostRequestBody assignAndActivatePostRequestBody = new com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.assignandactivate.AssignAndActivatePostRequestBody();
HardwareOathTokenAuthenticationMethodDevice device = new HardwareOathTokenAuthenticationMethodDevice();
device.setId("aad49556-####-####-####-############");
assignAndActivatePostRequestBody.setDevice(device);
assignAndActivatePostRequestBody.setVerificationCode("588651");
assignAndActivatePostRequestBody.setDisplayName("Amy Masters Token");
graphClient.me().authentication().hardwareOathMethods().assignAndActivate().post(assignAndActivatePostRequestBody);


```