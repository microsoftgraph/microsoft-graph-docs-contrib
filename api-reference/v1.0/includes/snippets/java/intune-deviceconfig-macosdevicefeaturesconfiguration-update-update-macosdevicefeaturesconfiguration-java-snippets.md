---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MacOSDeviceFeaturesConfiguration deviceConfiguration = new MacOSDeviceFeaturesConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.macOSDeviceFeaturesConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```