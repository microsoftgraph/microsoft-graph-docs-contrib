---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcUserSetting cloudPcUserSetting = new CloudPcUserSetting();
cloudPcUserSetting.setOdataType("#microsoft.graph.cloudPcUserSetting");
cloudPcUserSetting.setDisplayName("Example");
CloudPcRestorePointSetting restorePointSetting = new CloudPcRestorePointSetting();
restorePointSetting.setFrequencyType(CloudPcRestorePointFrequencyType.SixteenHours);
restorePointSetting.setUserRestoreEnabled(true);
cloudPcUserSetting.setRestorePointSetting(restorePointSetting);
cloudPcUserSetting.setLocalAdminEnabled(false);
cloudPcUserSetting.setResetEnabled(true);
CloudPcUserSetting result = graphClient.deviceManagement().virtualEndpoint().userSettings().byCloudPcUserSettingId("{cloudPcUserSetting-id}").patch(cloudPcUserSetting);


```