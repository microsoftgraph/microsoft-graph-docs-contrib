---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsUpdateForBusinessConfiguration deviceConfiguration = new WindowsUpdateForBusinessConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windowsUpdateForBusinessConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setDeliveryOptimizationMode(WindowsDeliveryOptimizationMode.HttpOnly);
deviceConfiguration.setPrereleaseFeatures(PrereleaseFeatures.SettingsOnly);
deviceConfiguration.setAutomaticUpdateMode(AutomaticUpdateMode.NotifyDownload);
deviceConfiguration.setMicrosoftUpdateServiceAllowed(true);
deviceConfiguration.setDriversExcluded(true);
WindowsUpdateScheduledInstall installationSchedule = new WindowsUpdateScheduledInstall();
installationSchedule.setOdataType("microsoft.graph.windowsUpdateScheduledInstall");
installationSchedule.setScheduledInstallDay(WeeklySchedule.Everyday);
LocalTime scheduledInstallTime = LocalTime.parse("11:59:31.3170000");
installationSchedule.setScheduledInstallTime(scheduledInstallTime);
deviceConfiguration.setInstallationSchedule(installationSchedule);
deviceConfiguration.setQualityUpdatesDeferralPeriodInDays(2);
deviceConfiguration.setFeatureUpdatesDeferralPeriodInDays(2);
deviceConfiguration.setQualityUpdatesPaused(true);
deviceConfiguration.setFeatureUpdatesPaused(true);
OffsetDateTime qualityUpdatesPauseExpiryDateTime = OffsetDateTime.parse("2017-01-01T00:00:22.9594683-08:00");
deviceConfiguration.setQualityUpdatesPauseExpiryDateTime(qualityUpdatesPauseExpiryDateTime);
OffsetDateTime featureUpdatesPauseExpiryDateTime = OffsetDateTime.parse("2016-12-31T23:58:08.068669-08:00");
deviceConfiguration.setFeatureUpdatesPauseExpiryDateTime(featureUpdatesPauseExpiryDateTime);
deviceConfiguration.setBusinessReadyUpdatesOnly(WindowsUpdateType.All);
deviceConfiguration.setSkipChecksBeforeRestart(true);
deviceConfiguration.setUpdateWeeks(EnumSet.of(WindowsUpdateForBusinessUpdateWeeks.FirstWeek));
LocalDate qualityUpdatesPauseStartDate = LocalDate.parse("2016-12-31");
deviceConfiguration.setQualityUpdatesPauseStartDate(qualityUpdatesPauseStartDate);
LocalDate featureUpdatesPauseStartDate = LocalDate.parse("2016-12-31");
deviceConfiguration.setFeatureUpdatesPauseStartDate(featureUpdatesPauseStartDate);
deviceConfiguration.setFeatureUpdatesRollbackWindowInDays(2);
deviceConfiguration.setQualityUpdatesWillBeRolledBack(true);
deviceConfiguration.setFeatureUpdatesWillBeRolledBack(true);
OffsetDateTime qualityUpdatesRollbackStartDateTime = OffsetDateTime.parse("2016-12-31T23:57:01.05526-08:00");
deviceConfiguration.setQualityUpdatesRollbackStartDateTime(qualityUpdatesRollbackStartDateTime);
OffsetDateTime featureUpdatesRollbackStartDateTime = OffsetDateTime.parse("2017-01-01T00:03:21.6080517-08:00");
deviceConfiguration.setFeatureUpdatesRollbackStartDateTime(featureUpdatesRollbackStartDateTime);
deviceConfiguration.setEngagedRestartDeadlineInDays(12);
deviceConfiguration.setEngagedRestartSnoozeScheduleInDays(2);
deviceConfiguration.setEngagedRestartTransitionScheduleInDays(6);
deviceConfiguration.setDeadlineForFeatureUpdatesInDays(15);
deviceConfiguration.setDeadlineForQualityUpdatesInDays(15);
deviceConfiguration.setDeadlineGracePeriodInDays(9);
deviceConfiguration.setPostponeRebootUntilAfterDeadline(true);
deviceConfiguration.setAutoRestartNotificationDismissal(AutoRestartNotificationDismissalMethod.Automatic);
deviceConfiguration.setScheduleRestartWarningInHours(13);
deviceConfiguration.setScheduleImminentRestartWarningInMinutes(7);
deviceConfiguration.setUserPauseAccess(Enablement.Enabled);
deviceConfiguration.setUserWindowsUpdateScanAccess(Enablement.Enabled);
deviceConfiguration.setUpdateNotificationLevel(WindowsUpdateNotificationDisplayOption.DefaultNotifications);
deviceConfiguration.setAllowWindows11Upgrade(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```