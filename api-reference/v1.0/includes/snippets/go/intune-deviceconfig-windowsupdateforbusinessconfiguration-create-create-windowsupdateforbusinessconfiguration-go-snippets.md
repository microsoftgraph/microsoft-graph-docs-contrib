---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
deliveryOptimizationMode := graphmodels.HTTPONLY_WINDOWSDELIVERYOPTIMIZATIONMODE 
requestBody.SetDeliveryOptimizationMode(&deliveryOptimizationMode) 
prereleaseFeatures := graphmodels.SETTINGSONLY_PRERELEASEFEATURES 
requestBody.SetPrereleaseFeatures(&prereleaseFeatures) 
automaticUpdateMode := graphmodels.NOTIFYDOWNLOAD_AUTOMATICUPDATEMODE 
requestBody.SetAutomaticUpdateMode(&automaticUpdateMode) 
microsoftUpdateServiceAllowed := true
requestBody.SetMicrosoftUpdateServiceAllowed(&microsoftUpdateServiceAllowed) 
driversExcluded := true
requestBody.SetDriversExcluded(&driversExcluded) 
installationSchedule := graphmodels.NewWindowsUpdateScheduledInstall()
scheduledInstallDay := graphmodels.EVERYDAY_WEEKLYSCHEDULE 
installationSchedule.SetScheduledInstallDay(&scheduledInstallDay) 
scheduledInstallTime := 11:59:31.3170000
installationSchedule.SetScheduledInstallTime(&scheduledInstallTime) 
requestBody.SetInstallationSchedule(installationSchedule)
qualityUpdatesDeferralPeriodInDays := int32(2)
requestBody.SetQualityUpdatesDeferralPeriodInDays(&qualityUpdatesDeferralPeriodInDays) 
featureUpdatesDeferralPeriodInDays := int32(2)
requestBody.SetFeatureUpdatesDeferralPeriodInDays(&featureUpdatesDeferralPeriodInDays) 
qualityUpdatesPaused := true
requestBody.SetQualityUpdatesPaused(&qualityUpdatesPaused) 
featureUpdatesPaused := true
requestBody.SetFeatureUpdatesPaused(&featureUpdatesPaused) 
qualityUpdatesPauseExpiryDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:22.9594683-08:00")
requestBody.SetQualityUpdatesPauseExpiryDateTime(&qualityUpdatesPauseExpiryDateTime) 
featureUpdatesPauseExpiryDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:08.068669-08:00")
requestBody.SetFeatureUpdatesPauseExpiryDateTime(&featureUpdatesPauseExpiryDateTime) 
businessReadyUpdatesOnly := graphmodels.ALL_WINDOWSUPDATETYPE 
requestBody.SetBusinessReadyUpdatesOnly(&businessReadyUpdatesOnly) 
skipChecksBeforeRestart := true
requestBody.SetSkipChecksBeforeRestart(&skipChecksBeforeRestart) 
updateWeeks := graphmodels.FIRSTWEEK_WINDOWSUPDATEFORBUSINESSUPDATEWEEKS 
requestBody.SetUpdateWeeks(&updateWeeks) 
qualityUpdatesPauseStartDate := 2016-12-31
requestBody.SetQualityUpdatesPauseStartDate(&qualityUpdatesPauseStartDate) 
featureUpdatesPauseStartDate := 2016-12-31
requestBody.SetFeatureUpdatesPauseStartDate(&featureUpdatesPauseStartDate) 
featureUpdatesRollbackWindowInDays := int32(2)
requestBody.SetFeatureUpdatesRollbackWindowInDays(&featureUpdatesRollbackWindowInDays) 
qualityUpdatesWillBeRolledBack := true
requestBody.SetQualityUpdatesWillBeRolledBack(&qualityUpdatesWillBeRolledBack) 
featureUpdatesWillBeRolledBack := true
requestBody.SetFeatureUpdatesWillBeRolledBack(&featureUpdatesWillBeRolledBack) 
qualityUpdatesRollbackStartDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:01.05526-08:00")
requestBody.SetQualityUpdatesRollbackStartDateTime(&qualityUpdatesRollbackStartDateTime) 
featureUpdatesRollbackStartDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:03:21.6080517-08:00")
requestBody.SetFeatureUpdatesRollbackStartDateTime(&featureUpdatesRollbackStartDateTime) 
engagedRestartDeadlineInDays := int32(12)
requestBody.SetEngagedRestartDeadlineInDays(&engagedRestartDeadlineInDays) 
engagedRestartSnoozeScheduleInDays := int32(2)
requestBody.SetEngagedRestartSnoozeScheduleInDays(&engagedRestartSnoozeScheduleInDays) 
engagedRestartTransitionScheduleInDays := int32(6)
requestBody.SetEngagedRestartTransitionScheduleInDays(&engagedRestartTransitionScheduleInDays) 
deadlineForFeatureUpdatesInDays := int32(15)
requestBody.SetDeadlineForFeatureUpdatesInDays(&deadlineForFeatureUpdatesInDays) 
deadlineForQualityUpdatesInDays := int32(15)
requestBody.SetDeadlineForQualityUpdatesInDays(&deadlineForQualityUpdatesInDays) 
deadlineGracePeriodInDays := int32(9)
requestBody.SetDeadlineGracePeriodInDays(&deadlineGracePeriodInDays) 
postponeRebootUntilAfterDeadline := true
requestBody.SetPostponeRebootUntilAfterDeadline(&postponeRebootUntilAfterDeadline) 
autoRestartNotificationDismissal := graphmodels.AUTOMATIC_AUTORESTARTNOTIFICATIONDISMISSALMETHOD 
requestBody.SetAutoRestartNotificationDismissal(&autoRestartNotificationDismissal) 
scheduleRestartWarningInHours := int32(13)
requestBody.SetScheduleRestartWarningInHours(&scheduleRestartWarningInHours) 
scheduleImminentRestartWarningInMinutes := int32(7)
requestBody.SetScheduleImminentRestartWarningInMinutes(&scheduleImminentRestartWarningInMinutes) 
userPauseAccess := graphmodels.ENABLED_ENABLEMENT 
requestBody.SetUserPauseAccess(&userPauseAccess) 
userWindowsUpdateScanAccess := graphmodels.ENABLED_ENABLEMENT 
requestBody.SetUserWindowsUpdateScanAccess(&userWindowsUpdateScanAccess) 
updateNotificationLevel := graphmodels.DEFAULTNOTIFICATIONS_WINDOWSUPDATENOTIFICATIONDISPLAYOPTION 
requestBody.SetUpdateNotificationLevel(&updateNotificationLevel) 
allowWindows11Upgrade := true
requestBody.SetAllowWindows11Upgrade(&allowWindows11Upgrade) 

deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```