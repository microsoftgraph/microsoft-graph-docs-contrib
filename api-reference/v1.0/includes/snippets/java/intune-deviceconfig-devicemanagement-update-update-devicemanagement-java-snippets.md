---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagement deviceManagement = new DeviceManagement();
DeviceManagementSettings settings = new DeviceManagementSettings();
settings.deviceComplianceCheckinThresholdDays = 4;
settings.isScheduledActionEnabled = true;
settings.secureByDefault = true;
deviceManagement.settings = settings;
deviceManagement.intuneAccountId = UUID.fromString("cf1549a1-49a1-cf15-a149-15cfa14915cf");

graphClient.deviceManagement()
	.buildRequest()
	.patch(deviceManagement);

```