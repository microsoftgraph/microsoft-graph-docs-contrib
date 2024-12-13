---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HardwareOathTokenAuthenticationMethodDevice hardwareOathTokenAuthenticationMethodDevice = new HardwareOathTokenAuthenticationMethodDevice();
hardwareOathTokenAuthenticationMethodDevice.setHashFunction(HardwareOathTokenHashFunction.Hmacsha256);
HardwareOathTokenAuthenticationMethodDevice result = graphClient.directory().authenticationMethodDevices().hardwareOathDevices().byHardwareOathTokenAuthenticationMethodDeviceId("{hardwareOathTokenAuthenticationMethodDevice-id}").patch(hardwareOathTokenAuthenticationMethodDevice);


```