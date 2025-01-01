---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HardwareOathAuthenticationMethod hardwareOathAuthenticationMethod = new HardwareOathAuthenticationMethod();
HardwareOathTokenAuthenticationMethodDevice device = new HardwareOathTokenAuthenticationMethodDevice();
device.setId("aad49556-####-####-####-############");
hardwareOathAuthenticationMethod.setDevice(device);
HardwareOathAuthenticationMethod result = graphClient.me().authentication().hardwareOathMethods().post(hardwareOathAuthenticationMethod);


```