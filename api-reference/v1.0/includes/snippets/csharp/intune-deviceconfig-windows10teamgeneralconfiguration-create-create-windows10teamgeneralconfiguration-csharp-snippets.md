---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows10TeamGeneralConfiguration
{
	OdataType = "#microsoft.graph.windows10TeamGeneralConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AzureOperationalInsightsBlockTelemetry = true,
	AzureOperationalInsightsWorkspaceId = "Azure Operational Insights Workspace Id value",
	AzureOperationalInsightsWorkspaceKey = "Azure Operational Insights Workspace Key value",
	ConnectAppBlockAutoLaunch = true,
	MaintenanceWindowBlocked = true,
	MaintenanceWindowDurationInHours = 0,
	MaintenanceWindowStartTime = new Time(DateTime.Parse("11:59:09.3130000")),
	MiracastChannel = MiracastChannel.One,
	MiracastBlocked = true,
	MiracastRequirePin = true,
	SettingsBlockMyMeetingsAndFiles = true,
	SettingsBlockSessionResume = true,
	SettingsBlockSigninSuggestions = true,
	SettingsDefaultVolume = 5,
	SettingsScreenTimeoutInMinutes = 14,
	SettingsSessionTimeoutInMinutes = 15,
	SettingsSleepTimeoutInMinutes = 13,
	WelcomeScreenBlockAutomaticWakeUp = true,
	WelcomeScreenBackgroundImageUrl = "https://example.com/welcomeScreenBackgroundImageUrl/",
	WelcomeScreenMeetingInformation = WelcomeScreenMeetingInformation.ShowOrganizerAndTimeOnly,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```