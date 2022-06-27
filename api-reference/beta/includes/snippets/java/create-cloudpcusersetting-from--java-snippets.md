---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserSetting cloudPcUserSetting = new CloudPcUserSetting();
cloudPcUserSetting.displayName = "Example";
cloudPcUserSetting.selfServiceEnabled = false;
cloudPcUserSetting.localAdminEnabled = true;
CloudPcRestorePointSetting restorePointSetting = new CloudPcRestorePointSetting();
restorePointSetting.frequencyInHours = 16;
restorePointSetting.userRestoreEnabled = true;
cloudPcUserSetting.restorePointSetting = restorePointSetting;

graphClient.deviceManagement().virtualEndpoint().userSettings()
	.buildRequest()
	.post(cloudPcUserSetting);

```