---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserSetting cloudPcUserSetting = new CloudPcUserSetting();
cloudPcUserSetting.displayName = "Example";
cloudPcUserSetting.selfServiceEnabled = true;
CloudPcRestorePointSetting restorePointSetting = new CloudPcRestorePointSetting();
restorePointSetting.frequencyInHours = 16;
restorePointSetting.userRestoreEnabled = true;
cloudPcUserSetting.restorePointSetting = restorePointSetting;
cloudPcUserSetting.localAdminEnabled = false;

graphClient.deviceManagement().virtualEndpoint().userSettings("b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff")
	.buildRequest()
	.patch(cloudPcUserSetting);

```