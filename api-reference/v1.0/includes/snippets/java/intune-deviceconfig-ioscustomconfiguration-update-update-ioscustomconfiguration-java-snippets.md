---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosCustomConfiguration deviceConfiguration = new IosCustomConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.iosCustomConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setPayloadName("Payload Name value");
deviceConfiguration.setPayloadFileName("Payload File Name value");
byte[] payload = Base64.getDecoder().decode("cGF5bG9hZA==");
deviceConfiguration.setPayload(payload);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```