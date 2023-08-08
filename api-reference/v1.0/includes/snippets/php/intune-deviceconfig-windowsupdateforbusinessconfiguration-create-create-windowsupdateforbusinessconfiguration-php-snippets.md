---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsUpdateForBusinessConfiguration();
$requestBody->setOdataType('#microsoft.graph.windowsUpdateForBusinessConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setDeliveryOptimizationMode(new WindowsDeliveryOptimizationMode('httpOnly'));

$requestBody->setPrereleaseFeatures(new PrereleaseFeatures('settingsOnly'));

$requestBody->setAutomaticUpdateMode(new AutomaticUpdateMode('notifyDownload'));

$requestBody->setMicrosoftUpdateServiceAllowed(true);

$requestBody->setDriversExcluded(true);

$installationSchedule = new WindowsUpdateScheduledInstall();
$installationSchedule->setOdataType('microsoft.graph.windowsUpdateScheduledInstall');

$installationSchedule->setScheduledInstallDay(new WeeklySchedule('everyday'));

$installationSchedule->setScheduledInstallTime(new Time('11:59:31.3170000'));


$requestBody->setInstallationSchedule($installationSchedule);
$requestBody->setQualityUpdatesDeferralPeriodInDays(2);

$requestBody->setFeatureUpdatesDeferralPeriodInDays(2);

$requestBody->setQualityUpdatesPaused(true);

$requestBody->setFeatureUpdatesPaused(true);

$requestBody->setQualityUpdatesPauseExpiryDateTime(new \DateTime('2017-01-01T00:00:22.9594683-08:00'));

$requestBody->setFeatureUpdatesPauseExpiryDateTime(new \DateTime('2016-12-31T23:58:08.068669-08:00'));

$requestBody->setBusinessReadyUpdatesOnly(new WindowsUpdateType('all'));

$requestBody->setSkipChecksBeforeRestart(true);

$requestBody->setUpdateWeeks(new WindowsUpdateForBusinessUpdateWeeks('firstWeek'));

$requestBody->setQualityUpdatesPauseStartDate(new Date('2016-12-31'));

$requestBody->setFeatureUpdatesPauseStartDate(new Date('2016-12-31'));

$requestBody->setFeatureUpdatesRollbackWindowInDays(2);

$requestBody->setQualityUpdatesWillBeRolledBack(true);

$requestBody->setFeatureUpdatesWillBeRolledBack(true);

$requestBody->setQualityUpdatesRollbackStartDateTime(new \DateTime('2016-12-31T23:57:01.05526-08:00'));

$requestBody->setFeatureUpdatesRollbackStartDateTime(new \DateTime('2017-01-01T00:03:21.6080517-08:00'));

$requestBody->setEngagedRestartDeadlineInDays(12);

$requestBody->setEngagedRestartSnoozeScheduleInDays(2);

$requestBody->setEngagedRestartTransitionScheduleInDays(6);

$requestBody->setDeadlineForFeatureUpdatesInDays(15);

$requestBody->setDeadlineForQualityUpdatesInDays(15);

$requestBody->setDeadlineGracePeriodInDays(9);

$requestBody->setPostponeRebootUntilAfterDeadline(true);

$requestBody->setAutoRestartNotificationDismissal(new AutoRestartNotificationDismissalMethod('automatic'));

$requestBody->setScheduleRestartWarningInHours(13);

$requestBody->setScheduleImminentRestartWarningInMinutes(7);

$requestBody->setUserPauseAccess(new Enablement('enabled'));

$requestBody->setUserWindowsUpdateScanAccess(new Enablement('enabled'));

$requestBody->setUpdateNotificationLevel(new WindowsUpdateNotificationDisplayOption('defaultNotifications'));

$requestBody->setAllowWindows11Upgrade(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```