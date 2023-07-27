---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
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
accountBlockModification := true
requestBody.SetAccountBlockModification(&accountBlockModification) 
activationLockAllowWhenSupervised := true
requestBody.SetActivationLockAllowWhenSupervised(&activationLockAllowWhenSupervised) 
airDropBlocked := true
requestBody.SetAirDropBlocked(&airDropBlocked) 
airDropForceUnmanagedDropTarget := true
requestBody.SetAirDropForceUnmanagedDropTarget(&airDropForceUnmanagedDropTarget) 
airPlayForcePairingPasswordForOutgoingRequests := true
requestBody.SetAirPlayForcePairingPasswordForOutgoingRequests(&airPlayForcePairingPasswordForOutgoingRequests) 
appleWatchBlockPairing := true
requestBody.SetAppleWatchBlockPairing(&appleWatchBlockPairing) 
appleWatchForceWristDetection := true
requestBody.SetAppleWatchForceWristDetection(&appleWatchForceWristDetection) 
appleNewsBlocked := true
requestBody.SetAppleNewsBlocked(&appleNewsBlocked) 


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

appsSingleAppModeList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetAppsSingleAppModeList(appsSingleAppModeList)


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

appsVisibilityList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetAppsVisibilityList(appsVisibilityList)
appsVisibilityListType := graphmodels.APPSINLISTCOMPLIANT_APPLISTTYPE 
requestBody.SetAppsVisibilityListType(&appsVisibilityListType) 
appStoreBlockAutomaticDownloads := true
requestBody.SetAppStoreBlockAutomaticDownloads(&appStoreBlockAutomaticDownloads) 
appStoreBlocked := true
requestBody.SetAppStoreBlocked(&appStoreBlocked) 
appStoreBlockInAppPurchases := true
requestBody.SetAppStoreBlockInAppPurchases(&appStoreBlockInAppPurchases) 
appStoreBlockUIAppInstallation := true
requestBody.SetAppStoreBlockUIAppInstallation(&appStoreBlockUIAppInstallation) 
appStoreRequirePassword := true
requestBody.SetAppStoreRequirePassword(&appStoreRequirePassword) 
bluetoothBlockModification := true
requestBody.SetBluetoothBlockModification(&bluetoothBlockModification) 
cameraBlocked := true
requestBody.SetCameraBlocked(&cameraBlocked) 
cellularBlockDataRoaming := true
requestBody.SetCellularBlockDataRoaming(&cellularBlockDataRoaming) 
cellularBlockGlobalBackgroundFetchWhileRoaming := true
requestBody.SetCellularBlockGlobalBackgroundFetchWhileRoaming(&cellularBlockGlobalBackgroundFetchWhileRoaming) 
cellularBlockPerAppDataModification := true
requestBody.SetCellularBlockPerAppDataModification(&cellularBlockPerAppDataModification) 
cellularBlockPersonalHotspot := true
requestBody.SetCellularBlockPersonalHotspot(&cellularBlockPersonalHotspot) 
cellularBlockVoiceRoaming := true
requestBody.SetCellularBlockVoiceRoaming(&cellularBlockVoiceRoaming) 
certificatesBlockUntrustedTlsCertificates := true
requestBody.SetCertificatesBlockUntrustedTlsCertificates(&certificatesBlockUntrustedTlsCertificates) 
classroomAppBlockRemoteScreenObservation := true
requestBody.SetClassroomAppBlockRemoteScreenObservation(&classroomAppBlockRemoteScreenObservation) 
classroomAppForceUnpromptedScreenObservation := true
requestBody.SetClassroomAppForceUnpromptedScreenObservation(&classroomAppForceUnpromptedScreenObservation) 


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

compliantAppsList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetCompliantAppsList(compliantAppsList)
compliantAppListType := graphmodels.APPSINLISTCOMPLIANT_APPLISTTYPE 
requestBody.SetCompliantAppListType(&compliantAppListType) 
configurationProfileBlockChanges := true
requestBody.SetConfigurationProfileBlockChanges(&configurationProfileBlockChanges) 
definitionLookupBlocked := true
requestBody.SetDefinitionLookupBlocked(&definitionLookupBlocked) 
deviceBlockEnableRestrictions := true
requestBody.SetDeviceBlockEnableRestrictions(&deviceBlockEnableRestrictions) 
deviceBlockEraseContentAndSettings := true
requestBody.SetDeviceBlockEraseContentAndSettings(&deviceBlockEraseContentAndSettings) 
deviceBlockNameModification := true
requestBody.SetDeviceBlockNameModification(&deviceBlockNameModification) 
diagnosticDataBlockSubmission := true
requestBody.SetDiagnosticDataBlockSubmission(&diagnosticDataBlockSubmission) 
diagnosticDataBlockSubmissionModification := true
requestBody.SetDiagnosticDataBlockSubmissionModification(&diagnosticDataBlockSubmissionModification) 
documentsBlockManagedDocumentsInUnmanagedApps := true
requestBody.SetDocumentsBlockManagedDocumentsInUnmanagedApps(&documentsBlockManagedDocumentsInUnmanagedApps) 
documentsBlockUnmanagedDocumentsInManagedApps := true
requestBody.SetDocumentsBlockUnmanagedDocumentsInManagedApps(&documentsBlockUnmanagedDocumentsInManagedApps) 
emailInDomainSuffixes := []string {
	"Email In Domain Suffixes value",
}
requestBody.SetEmailInDomainSuffixes(emailInDomainSuffixes)
enterpriseAppBlockTrust := true
requestBody.SetEnterpriseAppBlockTrust(&enterpriseAppBlockTrust) 
enterpriseAppBlockTrustModification := true
requestBody.SetEnterpriseAppBlockTrustModification(&enterpriseAppBlockTrustModification) 
faceTimeBlocked := true
requestBody.SetFaceTimeBlocked(&faceTimeBlocked) 
findMyFriendsBlocked := true
requestBody.SetFindMyFriendsBlocked(&findMyFriendsBlocked) 
gamingBlockGameCenterFriends := true
requestBody.SetGamingBlockGameCenterFriends(&gamingBlockGameCenterFriends) 
gamingBlockMultiplayer := true
requestBody.SetGamingBlockMultiplayer(&gamingBlockMultiplayer) 
gameCenterBlocked := true
requestBody.SetGameCenterBlocked(&gameCenterBlocked) 
hostPairingBlocked := true
requestBody.SetHostPairingBlocked(&hostPairingBlocked) 
iBooksStoreBlocked := true
requestBody.SetIBooksStoreBlocked(&iBooksStoreBlocked) 
iBooksStoreBlockErotica := true
requestBody.SetIBooksStoreBlockErotica(&iBooksStoreBlockErotica) 
iCloudBlockActivityContinuation := true
requestBody.SetICloudBlockActivityContinuation(&iCloudBlockActivityContinuation) 
iCloudBlockBackup := true
requestBody.SetICloudBlockBackup(&iCloudBlockBackup) 
iCloudBlockDocumentSync := true
requestBody.SetICloudBlockDocumentSync(&iCloudBlockDocumentSync) 
iCloudBlockManagedAppsSync := true
requestBody.SetICloudBlockManagedAppsSync(&iCloudBlockManagedAppsSync) 
iCloudBlockPhotoLibrary := true
requestBody.SetICloudBlockPhotoLibrary(&iCloudBlockPhotoLibrary) 
iCloudBlockPhotoStreamSync := true
requestBody.SetICloudBlockPhotoStreamSync(&iCloudBlockPhotoStreamSync) 
iCloudBlockSharedPhotoStream := true
requestBody.SetICloudBlockSharedPhotoStream(&iCloudBlockSharedPhotoStream) 
iCloudRequireEncryptedBackup := true
requestBody.SetICloudRequireEncryptedBackup(&iCloudRequireEncryptedBackup) 
iTunesBlockExplicitContent := true
requestBody.SetITunesBlockExplicitContent(&iTunesBlockExplicitContent) 
iTunesBlockMusicService := true
requestBody.SetITunesBlockMusicService(&iTunesBlockMusicService) 
iTunesBlockRadio := true
requestBody.SetITunesBlockRadio(&iTunesBlockRadio) 
keyboardBlockAutoCorrect := true
requestBody.SetKeyboardBlockAutoCorrect(&keyboardBlockAutoCorrect) 
keyboardBlockDictation := true
requestBody.SetKeyboardBlockDictation(&keyboardBlockDictation) 
keyboardBlockPredictive := true
requestBody.SetKeyboardBlockPredictive(&keyboardBlockPredictive) 
keyboardBlockShortcuts := true
requestBody.SetKeyboardBlockShortcuts(&keyboardBlockShortcuts) 
keyboardBlockSpellCheck := true
requestBody.SetKeyboardBlockSpellCheck(&keyboardBlockSpellCheck) 
kioskModeAllowAssistiveSpeak := true
requestBody.SetKioskModeAllowAssistiveSpeak(&kioskModeAllowAssistiveSpeak) 
kioskModeAllowAssistiveTouchSettings := true
requestBody.SetKioskModeAllowAssistiveTouchSettings(&kioskModeAllowAssistiveTouchSettings) 
kioskModeAllowAutoLock := true
requestBody.SetKioskModeAllowAutoLock(&kioskModeAllowAutoLock) 
kioskModeAllowColorInversionSettings := true
requestBody.SetKioskModeAllowColorInversionSettings(&kioskModeAllowColorInversionSettings) 
kioskModeAllowRingerSwitch := true
requestBody.SetKioskModeAllowRingerSwitch(&kioskModeAllowRingerSwitch) 
kioskModeAllowScreenRotation := true
requestBody.SetKioskModeAllowScreenRotation(&kioskModeAllowScreenRotation) 
kioskModeAllowSleepButton := true
requestBody.SetKioskModeAllowSleepButton(&kioskModeAllowSleepButton) 
kioskModeAllowTouchscreen := true
requestBody.SetKioskModeAllowTouchscreen(&kioskModeAllowTouchscreen) 
kioskModeAllowVoiceOverSettings := true
requestBody.SetKioskModeAllowVoiceOverSettings(&kioskModeAllowVoiceOverSettings) 
kioskModeAllowVolumeButtons := true
requestBody.SetKioskModeAllowVolumeButtons(&kioskModeAllowVolumeButtons) 
kioskModeAllowZoomSettings := true
requestBody.SetKioskModeAllowZoomSettings(&kioskModeAllowZoomSettings) 
kioskModeAppStoreUrl := "https://example.com/kioskModeAppStoreUrl/"
requestBody.SetKioskModeAppStoreUrl(&kioskModeAppStoreUrl) 
kioskModeBuiltInAppId := "Kiosk Mode Built In App Id value"
requestBody.SetKioskModeBuiltInAppId(&kioskModeBuiltInAppId) 
kioskModeRequireAssistiveTouch := true
requestBody.SetKioskModeRequireAssistiveTouch(&kioskModeRequireAssistiveTouch) 
kioskModeRequireColorInversion := true
requestBody.SetKioskModeRequireColorInversion(&kioskModeRequireColorInversion) 
kioskModeRequireMonoAudio := true
requestBody.SetKioskModeRequireMonoAudio(&kioskModeRequireMonoAudio) 
kioskModeRequireVoiceOver := true
requestBody.SetKioskModeRequireVoiceOver(&kioskModeRequireVoiceOver) 
kioskModeRequireZoom := true
requestBody.SetKioskModeRequireZoom(&kioskModeRequireZoom) 
kioskModeManagedAppId := "Kiosk Mode Managed App Id value"
requestBody.SetKioskModeManagedAppId(&kioskModeManagedAppId) 
lockScreenBlockControlCenter := true
requestBody.SetLockScreenBlockControlCenter(&lockScreenBlockControlCenter) 
lockScreenBlockNotificationView := true
requestBody.SetLockScreenBlockNotificationView(&lockScreenBlockNotificationView) 
lockScreenBlockPassbook := true
requestBody.SetLockScreenBlockPassbook(&lockScreenBlockPassbook) 
lockScreenBlockTodayView := true
requestBody.SetLockScreenBlockTodayView(&lockScreenBlockTodayView) 
mediaContentRatingAustralia := graphmodels.NewMediaContentRatingAustralia()
movieRating := graphmodels.ALLBLOCKED_RATINGAUSTRALIAMOVIESTYPE 
mediaContentRatingAustralia.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGAUSTRALIATELEVISIONTYPE 
mediaContentRatingAustralia.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingAustralia(mediaContentRatingAustralia)
mediaContentRatingCanada := graphmodels.NewMediaContentRatingCanada()
movieRating := graphmodels.ALLBLOCKED_RATINGCANADAMOVIESTYPE 
mediaContentRatingCanada.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGCANADATELEVISIONTYPE 
mediaContentRatingCanada.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingCanada(mediaContentRatingCanada)
mediaContentRatingFrance := graphmodels.NewMediaContentRatingFrance()
movieRating := graphmodels.ALLBLOCKED_RATINGFRANCEMOVIESTYPE 
mediaContentRatingFrance.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGFRANCETELEVISIONTYPE 
mediaContentRatingFrance.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingFrance(mediaContentRatingFrance)
mediaContentRatingGermany := graphmodels.NewMediaContentRatingGermany()
movieRating := graphmodels.ALLBLOCKED_RATINGGERMANYMOVIESTYPE 
mediaContentRatingGermany.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGGERMANYTELEVISIONTYPE 
mediaContentRatingGermany.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingGermany(mediaContentRatingGermany)
mediaContentRatingIreland := graphmodels.NewMediaContentRatingIreland()
movieRating := graphmodels.ALLBLOCKED_RATINGIRELANDMOVIESTYPE 
mediaContentRatingIreland.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGIRELANDTELEVISIONTYPE 
mediaContentRatingIreland.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingIreland(mediaContentRatingIreland)
mediaContentRatingJapan := graphmodels.NewMediaContentRatingJapan()
movieRating := graphmodels.ALLBLOCKED_RATINGJAPANMOVIESTYPE 
mediaContentRatingJapan.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGJAPANTELEVISIONTYPE 
mediaContentRatingJapan.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingJapan(mediaContentRatingJapan)
mediaContentRatingNewZealand := graphmodels.NewMediaContentRatingNewZealand()
movieRating := graphmodels.ALLBLOCKED_RATINGNEWZEALANDMOVIESTYPE 
mediaContentRatingNewZealand.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGNEWZEALANDTELEVISIONTYPE 
mediaContentRatingNewZealand.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingNewZealand(mediaContentRatingNewZealand)
mediaContentRatingUnitedKingdom := graphmodels.NewMediaContentRatingUnitedKingdom()
movieRating := graphmodels.ALLBLOCKED_RATINGUNITEDKINGDOMMOVIESTYPE 
mediaContentRatingUnitedKingdom.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGUNITEDKINGDOMTELEVISIONTYPE 
mediaContentRatingUnitedKingdom.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingUnitedKingdom(mediaContentRatingUnitedKingdom)
mediaContentRatingUnitedStates := graphmodels.NewMediaContentRatingUnitedStates()
movieRating := graphmodels.ALLBLOCKED_RATINGUNITEDSTATESMOVIESTYPE 
mediaContentRatingUnitedStates.SetMovieRating(&movieRating) 
tvRating := graphmodels.ALLBLOCKED_RATINGUNITEDSTATESTELEVISIONTYPE 
mediaContentRatingUnitedStates.SetTvRating(&tvRating) 
requestBody.SetMediaContentRatingUnitedStates(mediaContentRatingUnitedStates)


iosNetworkUsageRule := graphmodels.NewIosNetworkUsageRule()


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

managedApps := []graphmodels.AppListItemable {
	appListItem,
}
iosNetworkUsageRule.SetManagedApps(managedApps)
cellularDataBlockWhenRoaming := true
iosNetworkUsageRule.SetCellularDataBlockWhenRoaming(&cellularDataBlockWhenRoaming) 
cellularDataBlocked := true
iosNetworkUsageRule.SetCellularDataBlocked(&cellularDataBlocked) 

networkUsageRules := []graphmodels.IosNetworkUsageRuleable {
	iosNetworkUsageRule,
}
requestBody.SetNetworkUsageRules(networkUsageRules)
mediaContentRatingApps := graphmodels.ALLBLOCKED_RATINGAPPSTYPE 
requestBody.SetMediaContentRatingApps(&mediaContentRatingApps) 
messagesBlocked := true
requestBody.SetMessagesBlocked(&messagesBlocked) 
notificationsBlockSettingsModification := true
requestBody.SetNotificationsBlockSettingsModification(&notificationsBlockSettingsModification) 
passcodeBlockFingerprintUnlock := true
requestBody.SetPasscodeBlockFingerprintUnlock(&passcodeBlockFingerprintUnlock) 
passcodeBlockFingerprintModification := true
requestBody.SetPasscodeBlockFingerprintModification(&passcodeBlockFingerprintModification) 
passcodeBlockModification := true
requestBody.SetPasscodeBlockModification(&passcodeBlockModification) 
passcodeBlockSimple := true
requestBody.SetPasscodeBlockSimple(&passcodeBlockSimple) 
passcodeExpirationDays := int32(6)
requestBody.SetPasscodeExpirationDays(&passcodeExpirationDays) 
passcodeMinimumLength := int32(5)
requestBody.SetPasscodeMinimumLength(&passcodeMinimumLength) 
passcodeMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasscodeMinutesOfInactivityBeforeLock(&passcodeMinutesOfInactivityBeforeLock) 
passcodeMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasscodeMinutesOfInactivityBeforeScreenTimeout(&passcodeMinutesOfInactivityBeforeScreenTimeout) 
passcodeMinimumCharacterSetCount := int32(0)
requestBody.SetPasscodeMinimumCharacterSetCount(&passcodeMinimumCharacterSetCount) 
passcodePreviousPasscodeBlockCount := int32(2)
requestBody.SetPasscodePreviousPasscodeBlockCount(&passcodePreviousPasscodeBlockCount) 
passcodeSignInFailureCountBeforeWipe := int32(4)
requestBody.SetPasscodeSignInFailureCountBeforeWipe(&passcodeSignInFailureCountBeforeWipe) 
passcodeRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasscodeRequiredType(&passcodeRequiredType) 
passcodeRequired := true
requestBody.SetPasscodeRequired(&passcodeRequired) 
podcastsBlocked := true
requestBody.SetPodcastsBlocked(&podcastsBlocked) 
safariBlockAutofill := true
requestBody.SetSafariBlockAutofill(&safariBlockAutofill) 
safariBlockJavaScript := true
requestBody.SetSafariBlockJavaScript(&safariBlockJavaScript) 
safariBlockPopups := true
requestBody.SetSafariBlockPopups(&safariBlockPopups) 
safariBlocked := true
requestBody.SetSafariBlocked(&safariBlocked) 
safariCookieSettings := graphmodels.BLOCKALWAYS_WEBBROWSERCOOKIESETTINGS 
requestBody.SetSafariCookieSettings(&safariCookieSettings) 
safariManagedDomains := []string {
	"Safari Managed Domains value",
}
requestBody.SetSafariManagedDomains(safariManagedDomains)
safariPasswordAutoFillDomains := []string {
	"Safari Password Auto Fill Domains value",
}
requestBody.SetSafariPasswordAutoFillDomains(safariPasswordAutoFillDomains)
safariRequireFraudWarning := true
requestBody.SetSafariRequireFraudWarning(&safariRequireFraudWarning) 
screenCaptureBlocked := true
requestBody.SetScreenCaptureBlocked(&screenCaptureBlocked) 
siriBlocked := true
requestBody.SetSiriBlocked(&siriBlocked) 
siriBlockedWhenLocked := true
requestBody.SetSiriBlockedWhenLocked(&siriBlockedWhenLocked) 
siriBlockUserGeneratedContent := true
requestBody.SetSiriBlockUserGeneratedContent(&siriBlockUserGeneratedContent) 
siriRequireProfanityFilter := true
requestBody.SetSiriRequireProfanityFilter(&siriRequireProfanityFilter) 
spotlightBlockInternetResults := true
requestBody.SetSpotlightBlockInternetResults(&spotlightBlockInternetResults) 
voiceDialingBlocked := true
requestBody.SetVoiceDialingBlocked(&voiceDialingBlocked) 
wallpaperBlockModification := true
requestBody.SetWallpaperBlockModification(&wallpaperBlockModification) 
wiFiConnectOnlyToConfiguredNetworks := true
requestBody.SetWiFiConnectOnlyToConfiguredNetworks(&wiFiConnectOnlyToConfiguredNetworks) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```