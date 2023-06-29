---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosUpdateConfiguration deviceConfiguration = new IosUpdateConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.activeHoursStart = new TimeOfDay(0, 0, 0);
deviceConfiguration.activeHoursEnd = new TimeOfDay(0, 0, 0);
LinkedList<DayOfWeek> scheduledInstallDaysList = new LinkedList<DayOfWeek>();
scheduledInstallDaysList.add(DayOfWeek.MONDAY);
deviceConfiguration.scheduledInstallDays = scheduledInstallDaysList;
deviceConfiguration.utcTimeOffsetInMinutes = 6;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```