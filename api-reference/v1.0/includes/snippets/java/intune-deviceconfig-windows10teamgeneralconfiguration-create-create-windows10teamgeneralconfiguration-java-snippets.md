---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows10TeamGeneralConfiguration deviceConfiguration = new Windows10TeamGeneralConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windows10TeamGeneralConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setAzureOperationalInsightsBlockTelemetry(true);
deviceConfiguration.setAzureOperationalInsightsWorkspaceId("Azure Operational Insights Workspace Id value");
deviceConfiguration.setAzureOperationalInsightsWorkspaceKey("Azure Operational Insights Workspace Key value");
deviceConfiguration.setConnectAppBlockAutoLaunch(true);
deviceConfiguration.setMaintenanceWindowBlocked(true);
deviceConfiguration.setMaintenanceWindowDurationInHours(0);
LocalTime maintenanceWindowStartTime = LocalTime.parse("11:59:09.3130000");
deviceConfiguration.setMaintenanceWindowStartTime(maintenanceWindowStartTime);
deviceConfiguration.setMiracastChannel(MiracastChannel.One);
deviceConfiguration.setMiracastBlocked(true);
deviceConfiguration.setMiracastRequirePin(true);
deviceConfiguration.setSettingsBlockMyMeetingsAndFiles(true);
deviceConfiguration.setSettingsBlockSessionResume(true);
deviceConfiguration.setSettingsBlockSigninSuggestions(true);
deviceConfiguration.setSettingsDefaultVolume(5);
deviceConfiguration.setSettingsScreenTimeoutInMinutes(14);
deviceConfiguration.setSettingsSessionTimeoutInMinutes(15);
deviceConfiguration.setSettingsSleepTimeoutInMinutes(13);
deviceConfiguration.setWelcomeScreenBlockAutomaticWakeUp(true);
deviceConfiguration.setWelcomeScreenBackgroundImageUrl("https://example.com/welcomeScreenBackgroundImageUrl/");
deviceConfiguration.setWelcomeScreenMeetingInformation(WelcomeScreenMeetingInformation.ShowOrganizerAndTimeOnly);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```