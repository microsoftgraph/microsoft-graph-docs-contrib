---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosUpdateConfiguration deviceConfiguration = new IosUpdateConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.iosUpdateConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
LocalTime activeHoursStart = LocalTime.parse("12:00:05.5020000");
deviceConfiguration.setActiveHoursStart(activeHoursStart);
LocalTime activeHoursEnd = LocalTime.parse("11:59:00.8990000");
deviceConfiguration.setActiveHoursEnd(activeHoursEnd);
LinkedList<DayOfWeek> scheduledInstallDays = new LinkedList<DayOfWeek>();
scheduledInstallDays.add(DayOfWeek.Monday);
deviceConfiguration.setScheduledInstallDays(scheduledInstallDays);
deviceConfiguration.setUtcTimeOffsetInMinutes(6);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```