---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AndroidCustomConfiguration deviceConfiguration = new AndroidCustomConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
LinkedList<OmaSetting> omaSettingsList = new LinkedList<OmaSetting>();
OmaSetting omaSettings = new OmaSetting();
omaSettings.displayName = "Display Name value";
omaSettings.description = "Description value";
omaSettings.omaUri = "Oma Uri value";
omaSettingsList.add(omaSettings);
deviceConfiguration.omaSettings = omaSettingsList;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```