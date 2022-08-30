---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagement deviceManagement = new DeviceManagement();
deviceManagement.setOdataType("#microsoft.graph.deviceManagement");
DeviceManagementSettings settings = new DeviceManagementSettings();
settings.setOdataType("microsoft.graph.deviceManagementSettings");
settings.setDeviceComplianceCheckinThresholdDays(4);
settings.setIsScheduledActionEnabled(true);
settings.setSecureByDefault(true);
deviceManagement.setSettings(settings);
deviceManagement.setIntuneAccountId(UUID.fromString("cf1549a1-49a1-cf15-a149-15cfa14915cf"));
DeviceManagement result = graphClient.deviceManagement().patch(deviceManagement);


```