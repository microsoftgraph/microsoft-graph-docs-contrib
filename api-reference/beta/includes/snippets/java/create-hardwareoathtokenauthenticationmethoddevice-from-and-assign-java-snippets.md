---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HardwareOathTokenAuthenticationMethodDevice hardwareOathTokenAuthenticationMethodDevice = new HardwareOathTokenAuthenticationMethodDevice();
hardwareOathTokenAuthenticationMethodDevice.setDisplayName("Token 1");
hardwareOathTokenAuthenticationMethodDevice.setSerialNumber("TOTP123456");
hardwareOathTokenAuthenticationMethodDevice.setManufacturer("Contoso");
hardwareOathTokenAuthenticationMethodDevice.setModel("Hardware Token 1000");
hardwareOathTokenAuthenticationMethodDevice.setSecretKey("6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB");
hardwareOathTokenAuthenticationMethodDevice.setTimeIntervalInSeconds(30);
hardwareOathTokenAuthenticationMethodDevice.setHashFunction(HardwareOathTokenHashFunction.Hmacsha1);
User assignTo = new User();
assignTo.setId("0cadbf92-####-####-####-############");
hardwareOathTokenAuthenticationMethodDevice.setAssignTo(assignTo);
HardwareOathTokenAuthenticationMethodDevice result = graphClient.directory().authenticationMethodDevices().hardwareOathDevices().post(hardwareOathTokenAuthenticationMethodDevice);


```