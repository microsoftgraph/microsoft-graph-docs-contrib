---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsUpdateForBusinessConfiguration
{
	OdataType = "#microsoft.graph.windowsUpdateForBusinessConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	DeliveryOptimizationMode = WindowsDeliveryOptimizationMode.HttpOnly,
	PrereleaseFeatures = PrereleaseFeatures.SettingsOnly,
	AutomaticUpdateMode = AutomaticUpdateMode.NotifyDownload,
	MicrosoftUpdateServiceAllowed = true,
	DriversExcluded = true,
	InstallationSchedule = new WindowsUpdateScheduledInstall
	{
		OdataType = "microsoft.graph.windowsUpdateScheduledInstall",
		ScheduledInstallDay = WeeklySchedule.Everyday,
		ScheduledInstallTime = new Time(DateTime.Parse("11:59:31.3170000")),
	},
	QualityUpdatesDeferralPeriodInDays = 2,
	FeatureUpdatesDeferralPeriodInDays = 2,
	QualityUpdatesPaused = true,
	FeatureUpdatesPaused = true,
	QualityUpdatesPauseExpiryDateTime = DateTimeOffset.Parse("2017-01-01T00:00:22.9594683-08:00"),
	FeatureUpdatesPauseExpiryDateTime = DateTimeOffset.Parse("2016-12-31T23:58:08.068669-08:00"),
	BusinessReadyUpdatesOnly = WindowsUpdateType.All,
	SkipChecksBeforeRestart = true,
	UpdateWeeks = WindowsUpdateForBusinessUpdateWeeks.FirstWeek,
	QualityUpdatesPauseStartDate = new Date(DateTime.Parse("2016-12-31")),
	FeatureUpdatesPauseStartDate = new Date(DateTime.Parse("2016-12-31")),
	FeatureUpdatesRollbackWindowInDays = 2,
	QualityUpdatesWillBeRolledBack = true,
	FeatureUpdatesWillBeRolledBack = true,
	QualityUpdatesRollbackStartDateTime = DateTimeOffset.Parse("2016-12-31T23:57:01.05526-08:00"),
	FeatureUpdatesRollbackStartDateTime = DateTimeOffset.Parse("2017-01-01T00:03:21.6080517-08:00"),
	EngagedRestartDeadlineInDays = 12,
	EngagedRestartSnoozeScheduleInDays = 2,
	EngagedRestartTransitionScheduleInDays = 6,
	DeadlineForFeatureUpdatesInDays = 15,
	DeadlineForQualityUpdatesInDays = 15,
	DeadlineGracePeriodInDays = 9,
	PostponeRebootUntilAfterDeadline = true,
	AutoRestartNotificationDismissal = AutoRestartNotificationDismissalMethod.Automatic,
	ScheduleRestartWarningInHours = 13,
	ScheduleImminentRestartWarningInMinutes = 7,
	UserPauseAccess = Enablement.Enabled,
	UserWindowsUpdateScanAccess = Enablement.Enabled,
	UpdateNotificationLevel = WindowsUpdateNotificationDisplayOption.DefaultNotifications,
	AllowWindows11Upgrade = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```