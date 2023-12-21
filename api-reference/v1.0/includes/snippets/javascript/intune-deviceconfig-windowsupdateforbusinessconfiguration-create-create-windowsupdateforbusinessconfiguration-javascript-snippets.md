---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.windowsUpdateForBusinessConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  deliveryOptimizationMode: 'httpOnly',
  prereleaseFeatures: 'settingsOnly',
  automaticUpdateMode: 'notifyDownload',
  microsoftUpdateServiceAllowed: true,
  driversExcluded: true,
  installationSchedule: {
    '@odata.type': 'microsoft.graph.windowsUpdateScheduledInstall',
    scheduledInstallDay: 'everyday',
    scheduledInstallTime: '11:59:31.3170000'
  },
  qualityUpdatesDeferralPeriodInDays: 2,
  featureUpdatesDeferralPeriodInDays: 2,
  qualityUpdatesPaused: true,
  featureUpdatesPaused: true,
  qualityUpdatesPauseExpiryDateTime: '2017-01-01T00:00:22.9594683-08:00',
  featureUpdatesPauseExpiryDateTime: '2016-12-31T23:58:08.068669-08:00',
  businessReadyUpdatesOnly: 'all',
  skipChecksBeforeRestart: true,
  updateWeeks: 'firstWeek',
  qualityUpdatesPauseStartDate: '2016-12-31',
  featureUpdatesPauseStartDate: '2016-12-31',
  featureUpdatesRollbackWindowInDays: 2,
  qualityUpdatesWillBeRolledBack: true,
  featureUpdatesWillBeRolledBack: true,
  qualityUpdatesRollbackStartDateTime: '2016-12-31T23:57:01.05526-08:00',
  featureUpdatesRollbackStartDateTime: '2017-01-01T00:03:21.6080517-08:00',
  engagedRestartDeadlineInDays: 12,
  engagedRestartSnoozeScheduleInDays: 2,
  engagedRestartTransitionScheduleInDays: 6,
  deadlineForFeatureUpdatesInDays: 15,
  deadlineForQualityUpdatesInDays: 15,
  deadlineGracePeriodInDays: 9,
  postponeRebootUntilAfterDeadline: true,
  autoRestartNotificationDismissal: 'automatic',
  scheduleRestartWarningInHours: 13,
  scheduleImminentRestartWarningInMinutes: 7,
  userPauseAccess: 'enabled',
  userWindowsUpdateScanAccess: 'enabled',
  updateNotificationLevel: 'defaultNotifications',
  allowWindows11Upgrade: true
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```