---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcUserSetting cloudPcUserSetting = new CloudPcUserSetting();
cloudPcUserSetting.setOdataType("#microsoft.graph.cloudPcUserSetting");
cloudPcUserSetting.setDisplayName("Example");
cloudPcUserSetting.setSelfServiceEnabled(false);
cloudPcUserSetting.setLocalAdminEnabled(true);
CloudPcCrossRegionDisasterRecoverySetting crossRegionDisasterRecoverySetting = new CloudPcCrossRegionDisasterRecoverySetting();
crossRegionDisasterRecoverySetting.setCrossRegionDisasterRecoveryEnabled(false);
crossRegionDisasterRecoverySetting.setMaintainCrossRegionRestorePointEnabled(true);
CloudPcDisasterRecoveryNetworkSetting disasterRecoveryNetworkSetting = new CloudPcDisasterRecoveryNetworkSetting();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("regionName", "westus");
additionalData.put("regionGroup", "usEast");
disasterRecoveryNetworkSetting.setAdditionalData(additionalData);
crossRegionDisasterRecoverySetting.setDisasterRecoveryNetworkSetting(disasterRecoveryNetworkSetting);
crossRegionDisasterRecoverySetting.setDisasterRecoveryType(CloudPcDisasterRecoveryType.Premium);
crossRegionDisasterRecoverySetting.setUserInitiatedDisasterRecoveryAllowed(true);
cloudPcUserSetting.setCrossRegionDisasterRecoverySetting(crossRegionDisasterRecoverySetting);
cloudPcUserSetting.setProvisioningSourceType(CloudPcProvisioningSourceType.Image);
CloudPcRestorePointSetting restorePointSetting = new CloudPcRestorePointSetting();
restorePointSetting.setFrequencyInHours(16);
restorePointSetting.setFrequencyType(CloudPcRestorePointFrequencyType.SixteenHours);
restorePointSetting.setUserRestoreEnabled(true);
cloudPcUserSetting.setRestorePointSetting(restorePointSetting);
CloudPcUserSetting result = graphClient.deviceManagement().virtualEndpoint().userSettings().post(cloudPcUserSetting);


```