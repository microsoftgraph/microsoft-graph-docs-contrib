---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows10TeamGeneralConfiguration deviceConfiguration = new Windows10TeamGeneralConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.azureOperationalInsightsBlockTelemetry = true;
deviceConfiguration.azureOperationalInsightsWorkspaceId = "Azure Operational Insights Workspace Id value";
deviceConfiguration.azureOperationalInsightsWorkspaceKey = "Azure Operational Insights Workspace Key value";
deviceConfiguration.connectAppBlockAutoLaunch = true;
deviceConfiguration.maintenanceWindowBlocked = true;
deviceConfiguration.maintenanceWindowDurationInHours = 0;
deviceConfiguration.maintenanceWindowStartTime = new TimeOfDay(0, 0, 0);
deviceConfiguration.miracastChannel = MiracastChannel.ONE;
deviceConfiguration.miracastBlocked = true;
deviceConfiguration.miracastRequirePin = true;
deviceConfiguration.settingsBlockMyMeetingsAndFiles = true;
deviceConfiguration.settingsBlockSessionResume = true;
deviceConfiguration.settingsBlockSigninSuggestions = true;
deviceConfiguration.settingsDefaultVolume = 5;
deviceConfiguration.settingsScreenTimeoutInMinutes = 14;
deviceConfiguration.settingsSessionTimeoutInMinutes = 15;
deviceConfiguration.settingsSleepTimeoutInMinutes = 13;
deviceConfiguration.welcomeScreenBlockAutomaticWakeUp = true;
deviceConfiguration.welcomeScreenBackgroundImageUrl = "https://example.com/welcomeScreenBackgroundImageUrl/";
deviceConfiguration.welcomeScreenMeetingInformation = WelcomeScreenMeetingInformation.SHOW_ORGANIZER_AND_TIME_ONLY;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```