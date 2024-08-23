---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AndroidCustomConfiguration deviceConfiguration = new AndroidCustomConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.androidCustomConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
LinkedList<OmaSetting> omaSettings = new LinkedList<OmaSetting>();
OmaSetting omaSetting = new OmaSetting();
omaSetting.setOdataType("microsoft.graph.omaSetting");
omaSetting.setDisplayName("Display Name value");
omaSetting.setDescription("Description value");
omaSetting.setOmaUri("Oma Uri value");
omaSettings.add(omaSetting);
deviceConfiguration.setOmaSettings(omaSettings);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```