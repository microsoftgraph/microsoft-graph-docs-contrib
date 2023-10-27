---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsUpdateForBusinessConfiguration deviceConfiguration = new WindowsUpdateForBusinessConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.deliveryOptimizationMode = WindowsDeliveryOptimizationMode.HTTP_ONLY;
deviceConfiguration.prereleaseFeatures = PrereleaseFeatures.SETTINGS_ONLY;
deviceConfiguration.automaticUpdateMode = AutomaticUpdateMode.NOTIFY_DOWNLOAD;
deviceConfiguration.microsoftUpdateServiceAllowed = true;
deviceConfiguration.driversExcluded = true;
WindowsUpdateScheduledInstall installationSchedule = new WindowsUpdateScheduledInstall();
installationSchedule.scheduledInstallDay = WeeklySchedule.EVERYDAY;
installationSchedule.scheduledInstallTime = new TimeOfDay(0, 0, 0);
deviceConfiguration.installationSchedule = installationSchedule;
deviceConfiguration.qualityUpdatesDeferralPeriodInDays = 2;
deviceConfiguration.featureUpdatesDeferralPeriodInDays = 2;
deviceConfiguration.qualityUpdatesPaused = true;
deviceConfiguration.featureUpdatesPaused = true;
deviceConfiguration.qualityUpdatesPauseExpiryDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:22.9594683+00:00");
deviceConfiguration.featureUpdatesPauseExpiryDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:08.068669+00:00");
deviceConfiguration.businessReadyUpdatesOnly = WindowsUpdateType.ALL;
deviceConfiguration.skipChecksBeforeRestart = true;
deviceConfiguration.updateWeeks = EnumSet.of(WindowsUpdateForBusinessUpdateWeeks.FIRST_WEEK);
deviceConfiguration.qualityUpdatesPauseStartDate = new DateOnly(1900,1,1);
deviceConfiguration.featureUpdatesPauseStartDate = new DateOnly(1900,1,1);
deviceConfiguration.featureUpdatesRollbackWindowInDays = 2;
deviceConfiguration.qualityUpdatesWillBeRolledBack = true;
deviceConfiguration.featureUpdatesWillBeRolledBack = true;
deviceConfiguration.qualityUpdatesRollbackStartDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:01.05526+00:00");
deviceConfiguration.featureUpdatesRollbackStartDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:03:21.6080517+00:00");
deviceConfiguration.engagedRestartDeadlineInDays = 12;
deviceConfiguration.engagedRestartSnoozeScheduleInDays = 2;
deviceConfiguration.engagedRestartTransitionScheduleInDays = 6;
deviceConfiguration.deadlineForFeatureUpdatesInDays = 15;
deviceConfiguration.deadlineForQualityUpdatesInDays = 15;
deviceConfiguration.deadlineGracePeriodInDays = 9;
deviceConfiguration.postponeRebootUntilAfterDeadline = true;
deviceConfiguration.autoRestartNotificationDismissal = AutoRestartNotificationDismissalMethod.AUTOMATIC;
deviceConfiguration.scheduleRestartWarningInHours = 13;
deviceConfiguration.scheduleImminentRestartWarningInMinutes = 7;
deviceConfiguration.userPauseAccess = Enablement.ENABLED;
deviceConfiguration.userWindowsUpdateScanAccess = Enablement.ENABLED;
deviceConfiguration.updateNotificationLevel = WindowsUpdateNotificationDisplayOption.DEFAULT_NOTIFICATIONS;
deviceConfiguration.allowWindows11Upgrade = true;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```