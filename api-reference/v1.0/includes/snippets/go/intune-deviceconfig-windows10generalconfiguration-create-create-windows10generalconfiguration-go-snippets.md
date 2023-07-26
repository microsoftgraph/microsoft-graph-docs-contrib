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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
enterpriseCloudPrintDiscoveryEndPoint := "Enterprise Cloud Print Discovery End Point value"
requestBody.SetEnterpriseCloudPrintDiscoveryEndPoint(&enterpriseCloudPrintDiscoveryEndPoint) 
enterpriseCloudPrintOAuthAuthority := "Enterprise Cloud Print OAuth Authority value"
requestBody.SetEnterpriseCloudPrintOAuthAuthority(&enterpriseCloudPrintOAuthAuthority) 
enterpriseCloudPrintOAuthClientIdentifier := "Enterprise Cloud Print OAuth Client Identifier value"
requestBody.SetEnterpriseCloudPrintOAuthClientIdentifier(&enterpriseCloudPrintOAuthClientIdentifier) 
enterpriseCloudPrintResourceIdentifier := "Enterprise Cloud Print Resource Identifier value"
requestBody.SetEnterpriseCloudPrintResourceIdentifier(&enterpriseCloudPrintResourceIdentifier) 
enterpriseCloudPrintDiscoveryMaxLimit := int32(5)
requestBody.SetEnterpriseCloudPrintDiscoveryMaxLimit(&enterpriseCloudPrintDiscoveryMaxLimit) 
enterpriseCloudPrintMopriaDiscoveryResourceIdentifier := "Enterprise Cloud Print Mopria Discovery Resource Identifier value"
requestBody.SetEnterpriseCloudPrintMopriaDiscoveryResourceIdentifier(&enterpriseCloudPrintMopriaDiscoveryResourceIdentifier) 
searchBlockDiacritics := true
requestBody.SetSearchBlockDiacritics(&searchBlockDiacritics) 
searchDisableAutoLanguageDetection := true
requestBody.SetSearchDisableAutoLanguageDetection(&searchDisableAutoLanguageDetection) 
searchDisableIndexingEncryptedItems := true
requestBody.SetSearchDisableIndexingEncryptedItems(&searchDisableIndexingEncryptedItems) 
searchEnableRemoteQueries := true
requestBody.SetSearchEnableRemoteQueries(&searchEnableRemoteQueries) 
searchDisableIndexerBackoff := true
requestBody.SetSearchDisableIndexerBackoff(&searchDisableIndexerBackoff) 
searchDisableIndexingRemovableDrive := true
requestBody.SetSearchDisableIndexingRemovableDrive(&searchDisableIndexingRemovableDrive) 
searchEnableAutomaticIndexSizeManangement := true
requestBody.SetSearchEnableAutomaticIndexSizeManangement(&searchEnableAutomaticIndexSizeManangement) 
diagnosticsDataSubmissionMode := graphmodels.NONE_DIAGNOSTICDATASUBMISSIONMODE 
requestBody.SetDiagnosticsDataSubmissionMode(&diagnosticsDataSubmissionMode) 
oneDriveDisableFileSync := true
requestBody.SetOneDriveDisableFileSync(&oneDriveDisableFileSync) 
smartScreenEnableAppInstallControl := true
requestBody.SetSmartScreenEnableAppInstallControl(&smartScreenEnableAppInstallControl) 
personalizationDesktopImageUrl := "https://example.com/personalizationDesktopImageUrl/"
requestBody.SetPersonalizationDesktopImageUrl(&personalizationDesktopImageUrl) 
personalizationLockScreenImageUrl := "https://example.com/personalizationLockScreenImageUrl/"
requestBody.SetPersonalizationLockScreenImageUrl(&personalizationLockScreenImageUrl) 
bluetoothAllowedServices := []string {
	"Bluetooth Allowed Services value",
}
requestBody.SetBluetoothAllowedServices(bluetoothAllowedServices)
bluetoothBlockAdvertising := true
requestBody.SetBluetoothBlockAdvertising(&bluetoothBlockAdvertising) 
bluetoothBlockDiscoverableMode := true
requestBody.SetBluetoothBlockDiscoverableMode(&bluetoothBlockDiscoverableMode) 
bluetoothBlockPrePairing := true
requestBody.SetBluetoothBlockPrePairing(&bluetoothBlockPrePairing) 
edgeBlockAutofill := true
requestBody.SetEdgeBlockAutofill(&edgeBlockAutofill) 
edgeBlocked := true
requestBody.SetEdgeBlocked(&edgeBlocked) 
edgeCookiePolicy := graphmodels.ALLOW_EDGECOOKIEPOLICY 
requestBody.SetEdgeCookiePolicy(&edgeCookiePolicy) 
edgeBlockDeveloperTools := true
requestBody.SetEdgeBlockDeveloperTools(&edgeBlockDeveloperTools) 
edgeBlockSendingDoNotTrackHeader := true
requestBody.SetEdgeBlockSendingDoNotTrackHeader(&edgeBlockSendingDoNotTrackHeader) 
edgeBlockExtensions := true
requestBody.SetEdgeBlockExtensions(&edgeBlockExtensions) 
edgeBlockInPrivateBrowsing := true
requestBody.SetEdgeBlockInPrivateBrowsing(&edgeBlockInPrivateBrowsing) 
edgeBlockJavaScript := true
requestBody.SetEdgeBlockJavaScript(&edgeBlockJavaScript) 
edgeBlockPasswordManager := true
requestBody.SetEdgeBlockPasswordManager(&edgeBlockPasswordManager) 
edgeBlockAddressBarDropdown := true
requestBody.SetEdgeBlockAddressBarDropdown(&edgeBlockAddressBarDropdown) 
edgeBlockCompatibilityList := true
requestBody.SetEdgeBlockCompatibilityList(&edgeBlockCompatibilityList) 
edgeClearBrowsingDataOnExit := true
requestBody.SetEdgeClearBrowsingDataOnExit(&edgeClearBrowsingDataOnExit) 
edgeAllowStartPagesModification := true
requestBody.SetEdgeAllowStartPagesModification(&edgeAllowStartPagesModification) 
edgeDisableFirstRunPage := true
requestBody.SetEdgeDisableFirstRunPage(&edgeDisableFirstRunPage) 
edgeBlockLiveTileDataCollection := true
requestBody.SetEdgeBlockLiveTileDataCollection(&edgeBlockLiveTileDataCollection) 
edgeSyncFavoritesWithInternetExplorer := true
requestBody.SetEdgeSyncFavoritesWithInternetExplorer(&edgeSyncFavoritesWithInternetExplorer) 
cellularBlockDataWhenRoaming := true
requestBody.SetCellularBlockDataWhenRoaming(&cellularBlockDataWhenRoaming) 
cellularBlockVpn := true
requestBody.SetCellularBlockVpn(&cellularBlockVpn) 
cellularBlockVpnWhenRoaming := true
requestBody.SetCellularBlockVpnWhenRoaming(&cellularBlockVpnWhenRoaming) 
defenderRequireRealTimeMonitoring := true
requestBody.SetDefenderRequireRealTimeMonitoring(&defenderRequireRealTimeMonitoring) 
defenderRequireBehaviorMonitoring := true
requestBody.SetDefenderRequireBehaviorMonitoring(&defenderRequireBehaviorMonitoring) 
defenderRequireNetworkInspectionSystem := true
requestBody.SetDefenderRequireNetworkInspectionSystem(&defenderRequireNetworkInspectionSystem) 
defenderScanDownloads := true
requestBody.SetDefenderScanDownloads(&defenderScanDownloads) 
defenderScanScriptsLoadedInInternetExplorer := true
requestBody.SetDefenderScanScriptsLoadedInInternetExplorer(&defenderScanScriptsLoadedInInternetExplorer) 
defenderBlockEndUserAccess := true
requestBody.SetDefenderBlockEndUserAccess(&defenderBlockEndUserAccess) 
defenderSignatureUpdateIntervalInHours := int32(6)
requestBody.SetDefenderSignatureUpdateIntervalInHours(&defenderSignatureUpdateIntervalInHours) 
defenderMonitorFileActivity := graphmodels.DISABLE_DEFENDERMONITORFILEACTIVITY 
requestBody.SetDefenderMonitorFileActivity(&defenderMonitorFileActivity) 
defenderDaysBeforeDeletingQuarantinedMalware := int32(12)
requestBody.SetDefenderDaysBeforeDeletingQuarantinedMalware(&defenderDaysBeforeDeletingQuarantinedMalware) 
defenderScanMaxCpu := int32(2)
requestBody.SetDefenderScanMaxCpu(&defenderScanMaxCpu) 
defenderScanArchiveFiles := true
requestBody.SetDefenderScanArchiveFiles(&defenderScanArchiveFiles) 
defenderScanIncomingMail := true
requestBody.SetDefenderScanIncomingMail(&defenderScanIncomingMail) 
defenderScanRemovableDrivesDuringFullScan := true
requestBody.SetDefenderScanRemovableDrivesDuringFullScan(&defenderScanRemovableDrivesDuringFullScan) 
defenderScanMappedNetworkDrivesDuringFullScan := true
requestBody.SetDefenderScanMappedNetworkDrivesDuringFullScan(&defenderScanMappedNetworkDrivesDuringFullScan) 
defenderScanNetworkFiles := true
requestBody.SetDefenderScanNetworkFiles(&defenderScanNetworkFiles) 
defenderRequireCloudProtection := true
requestBody.SetDefenderRequireCloudProtection(&defenderRequireCloudProtection) 
defenderCloudBlockLevel := graphmodels.HIGH_DEFENDERCLOUDBLOCKLEVELTYPE 
requestBody.SetDefenderCloudBlockLevel(&defenderCloudBlockLevel) 
defenderPromptForSampleSubmission := graphmodels.ALWAYSPROMPT_DEFENDERPROMPTFORSAMPLESUBMISSION 
requestBody.SetDefenderPromptForSampleSubmission(&defenderPromptForSampleSubmission) 
defenderScheduledQuickScanTime := 11:58:49.3840000
requestBody.SetDefenderScheduledQuickScanTime(&defenderScheduledQuickScanTime) 
defenderScanType := graphmodels.DISABLED_DEFENDERSCANTYPE 
requestBody.SetDefenderScanType(&defenderScanType) 
defenderSystemScanSchedule := graphmodels.EVERYDAY_WEEKLYSCHEDULE 
requestBody.SetDefenderSystemScanSchedule(&defenderSystemScanSchedule) 
defenderScheduledScanTime := 11:59:10.9990000
requestBody.SetDefenderScheduledScanTime(&defenderScheduledScanTime) 
defenderDetectedMalwareActions := graphmodels.NewDefenderDetectedMalwareActions()
lowSeverity := graphmodels.CLEAN_DEFENDERTHREATACTION 
defenderDetectedMalwareActions.SetLowSeverity(&lowSeverity) 
moderateSeverity := graphmodels.CLEAN_DEFENDERTHREATACTION 
defenderDetectedMalwareActions.SetModerateSeverity(&moderateSeverity) 
highSeverity := graphmodels.CLEAN_DEFENDERTHREATACTION 
defenderDetectedMalwareActions.SetHighSeverity(&highSeverity) 
severeSeverity := graphmodels.CLEAN_DEFENDERTHREATACTION 
defenderDetectedMalwareActions.SetSevereSeverity(&severeSeverity) 
requestBody.SetDefenderDetectedMalwareActions(defenderDetectedMalwareActions)
defenderFileExtensionsToExclude := []string {
	"Defender File Extensions To Exclude value",
}
requestBody.SetDefenderFileExtensionsToExclude(defenderFileExtensionsToExclude)
defenderFilesAndFoldersToExclude := []string {
	"Defender Files And Folders To Exclude value",
}
requestBody.SetDefenderFilesAndFoldersToExclude(defenderFilesAndFoldersToExclude)
defenderProcessesToExclude := []string {
	"Defender Processes To Exclude value",
}
requestBody.SetDefenderProcessesToExclude(defenderProcessesToExclude)
lockScreenAllowTimeoutConfiguration := true
requestBody.SetLockScreenAllowTimeoutConfiguration(&lockScreenAllowTimeoutConfiguration) 
lockScreenBlockActionCenterNotifications := true
requestBody.SetLockScreenBlockActionCenterNotifications(&lockScreenBlockActionCenterNotifications) 
lockScreenBlockCortana := true
requestBody.SetLockScreenBlockCortana(&lockScreenBlockCortana) 
lockScreenBlockToastNotifications := true
requestBody.SetLockScreenBlockToastNotifications(&lockScreenBlockToastNotifications) 
lockScreenTimeoutInSeconds := int32(10)
requestBody.SetLockScreenTimeoutInSeconds(&lockScreenTimeoutInSeconds) 
passwordBlockSimple := true
requestBody.SetPasswordBlockSimple(&passwordBlockSimple) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasswordMinutesOfInactivityBeforeScreenTimeout(&passwordMinutesOfInactivityBeforeScreenTimeout) 
passwordMinimumCharacterSetCount := int32(0)
requestBody.SetPasswordMinimumCharacterSetCount(&passwordMinimumCharacterSetCount) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordRequired := true
requestBody.SetPasswordRequired(&passwordRequired) 
passwordRequireWhenResumeFromIdleState := true
requestBody.SetPasswordRequireWhenResumeFromIdleState(&passwordRequireWhenResumeFromIdleState) 
passwordRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordSignInFailureCountBeforeFactoryReset := int32(12)
requestBody.SetPasswordSignInFailureCountBeforeFactoryReset(&passwordSignInFailureCountBeforeFactoryReset) 
privacyAdvertisingId := graphmodels.BLOCKED_STATEMANAGEMENTSETTING 
requestBody.SetPrivacyAdvertisingId(&privacyAdvertisingId) 
privacyAutoAcceptPairingAndConsentPrompts := true
requestBody.SetPrivacyAutoAcceptPairingAndConsentPrompts(&privacyAutoAcceptPairingAndConsentPrompts) 
privacyBlockInputPersonalization := true
requestBody.SetPrivacyBlockInputPersonalization(&privacyBlockInputPersonalization) 
startBlockUnpinningAppsFromTaskbar := true
requestBody.SetStartBlockUnpinningAppsFromTaskbar(&startBlockUnpinningAppsFromTaskbar) 
startMenuAppListVisibility := graphmodels.COLLAPSE_WINDOWSSTARTMENUAPPLISTVISIBILITYTYPE 
requestBody.SetStartMenuAppListVisibility(&startMenuAppListVisibility) 
startMenuHideChangeAccountSettings := true
requestBody.SetStartMenuHideChangeAccountSettings(&startMenuHideChangeAccountSettings) 
startMenuHideFrequentlyUsedApps := true
requestBody.SetStartMenuHideFrequentlyUsedApps(&startMenuHideFrequentlyUsedApps) 
startMenuHideHibernate := true
requestBody.SetStartMenuHideHibernate(&startMenuHideHibernate) 
startMenuHideLock := true
requestBody.SetStartMenuHideLock(&startMenuHideLock) 
startMenuHidePowerButton := true
requestBody.SetStartMenuHidePowerButton(&startMenuHidePowerButton) 
startMenuHideRecentJumpLists := true
requestBody.SetStartMenuHideRecentJumpLists(&startMenuHideRecentJumpLists) 
startMenuHideRecentlyAddedApps := true
requestBody.SetStartMenuHideRecentlyAddedApps(&startMenuHideRecentlyAddedApps) 
startMenuHideRestartOptions := true
requestBody.SetStartMenuHideRestartOptions(&startMenuHideRestartOptions) 
startMenuHideShutDown := true
requestBody.SetStartMenuHideShutDown(&startMenuHideShutDown) 
startMenuHideSignOut := true
requestBody.SetStartMenuHideSignOut(&startMenuHideSignOut) 
startMenuHideSleep := true
requestBody.SetStartMenuHideSleep(&startMenuHideSleep) 
startMenuHideSwitchAccount := true
requestBody.SetStartMenuHideSwitchAccount(&startMenuHideSwitchAccount) 
startMenuHideUserTile := true
requestBody.SetStartMenuHideUserTile(&startMenuHideUserTile) 
startMenuLayoutEdgeAssetsXml := []byte("c3RhcnRNZW51TGF5b3V0RWRnZUFzc2V0c1htbA==")
requestBody.SetStartMenuLayoutEdgeAssetsXml(&startMenuLayoutEdgeAssetsXml) 
startMenuLayoutXml := []byte("c3RhcnRNZW51TGF5b3V0WG1s")
requestBody.SetStartMenuLayoutXml(&startMenuLayoutXml) 
startMenuMode := graphmodels.FULLSCREEN_WINDOWSSTARTMENUMODETYPE 
requestBody.SetStartMenuMode(&startMenuMode) 
startMenuPinnedFolderDocuments := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderDocuments(&startMenuPinnedFolderDocuments) 
startMenuPinnedFolderDownloads := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderDownloads(&startMenuPinnedFolderDownloads) 
startMenuPinnedFolderFileExplorer := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderFileExplorer(&startMenuPinnedFolderFileExplorer) 
startMenuPinnedFolderHomeGroup := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderHomeGroup(&startMenuPinnedFolderHomeGroup) 
startMenuPinnedFolderMusic := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderMusic(&startMenuPinnedFolderMusic) 
startMenuPinnedFolderNetwork := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderNetwork(&startMenuPinnedFolderNetwork) 
startMenuPinnedFolderPersonalFolder := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderPersonalFolder(&startMenuPinnedFolderPersonalFolder) 
startMenuPinnedFolderPictures := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderPictures(&startMenuPinnedFolderPictures) 
startMenuPinnedFolderSettings := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderSettings(&startMenuPinnedFolderSettings) 
startMenuPinnedFolderVideos := graphmodels.HIDE_VISIBILITYSETTING 
requestBody.SetStartMenuPinnedFolderVideos(&startMenuPinnedFolderVideos) 
settingsBlockSettingsApp := true
requestBody.SetSettingsBlockSettingsApp(&settingsBlockSettingsApp) 
settingsBlockSystemPage := true
requestBody.SetSettingsBlockSystemPage(&settingsBlockSystemPage) 
settingsBlockDevicesPage := true
requestBody.SetSettingsBlockDevicesPage(&settingsBlockDevicesPage) 
settingsBlockNetworkInternetPage := true
requestBody.SetSettingsBlockNetworkInternetPage(&settingsBlockNetworkInternetPage) 
settingsBlockPersonalizationPage := true
requestBody.SetSettingsBlockPersonalizationPage(&settingsBlockPersonalizationPage) 
settingsBlockAccountsPage := true
requestBody.SetSettingsBlockAccountsPage(&settingsBlockAccountsPage) 
settingsBlockTimeLanguagePage := true
requestBody.SetSettingsBlockTimeLanguagePage(&settingsBlockTimeLanguagePage) 
settingsBlockEaseOfAccessPage := true
requestBody.SetSettingsBlockEaseOfAccessPage(&settingsBlockEaseOfAccessPage) 
settingsBlockPrivacyPage := true
requestBody.SetSettingsBlockPrivacyPage(&settingsBlockPrivacyPage) 
settingsBlockUpdateSecurityPage := true
requestBody.SetSettingsBlockUpdateSecurityPage(&settingsBlockUpdateSecurityPage) 
settingsBlockAppsPage := true
requestBody.SetSettingsBlockAppsPage(&settingsBlockAppsPage) 
settingsBlockGamingPage := true
requestBody.SetSettingsBlockGamingPage(&settingsBlockGamingPage) 
windowsSpotlightBlockConsumerSpecificFeatures := true
requestBody.SetWindowsSpotlightBlockConsumerSpecificFeatures(&windowsSpotlightBlockConsumerSpecificFeatures) 
windowsSpotlightBlocked := true
requestBody.SetWindowsSpotlightBlocked(&windowsSpotlightBlocked) 
windowsSpotlightBlockOnActionCenter := true
requestBody.SetWindowsSpotlightBlockOnActionCenter(&windowsSpotlightBlockOnActionCenter) 
windowsSpotlightBlockTailoredExperiences := true
requestBody.SetWindowsSpotlightBlockTailoredExperiences(&windowsSpotlightBlockTailoredExperiences) 
windowsSpotlightBlockThirdPartyNotifications := true
requestBody.SetWindowsSpotlightBlockThirdPartyNotifications(&windowsSpotlightBlockThirdPartyNotifications) 
windowsSpotlightBlockWelcomeExperience := true
requestBody.SetWindowsSpotlightBlockWelcomeExperience(&windowsSpotlightBlockWelcomeExperience) 
windowsSpotlightBlockWindowsTips := true
requestBody.SetWindowsSpotlightBlockWindowsTips(&windowsSpotlightBlockWindowsTips) 
windowsSpotlightConfigureOnLockScreen := graphmodels.DISABLED_WINDOWSSPOTLIGHTENABLEMENTSETTINGS 
requestBody.SetWindowsSpotlightConfigureOnLockScreen(&windowsSpotlightConfigureOnLockScreen) 
networkProxyApplySettingsDeviceWide := true
requestBody.SetNetworkProxyApplySettingsDeviceWide(&networkProxyApplySettingsDeviceWide) 
networkProxyDisableAutoDetect := true
requestBody.SetNetworkProxyDisableAutoDetect(&networkProxyDisableAutoDetect) 
networkProxyAutomaticConfigurationUrl := "https://example.com/networkProxyAutomaticConfigurationUrl/"
requestBody.SetNetworkProxyAutomaticConfigurationUrl(&networkProxyAutomaticConfigurationUrl) 
networkProxyServer := graphmodels.NewWindows10NetworkProxyServer()
address := "Address value"
networkProxyServer.SetAddress(&address) 
exceptions := []string {
	"Exceptions value",
}
networkProxyServer.SetExceptions(exceptions)
useForLocalAddresses := true
networkProxyServer.SetUseForLocalAddresses(&useForLocalAddresses) 
requestBody.SetNetworkProxyServer(networkProxyServer)
accountsBlockAddingNonMicrosoftAccountEmail := true
requestBody.SetAccountsBlockAddingNonMicrosoftAccountEmail(&accountsBlockAddingNonMicrosoftAccountEmail) 
antiTheftModeBlocked := true
requestBody.SetAntiTheftModeBlocked(&antiTheftModeBlocked) 
bluetoothBlocked := true
requestBody.SetBluetoothBlocked(&bluetoothBlocked) 
cameraBlocked := true
requestBody.SetCameraBlocked(&cameraBlocked) 
connectedDevicesServiceBlocked := true
requestBody.SetConnectedDevicesServiceBlocked(&connectedDevicesServiceBlocked) 
certificatesBlockManualRootCertificateInstallation := true
requestBody.SetCertificatesBlockManualRootCertificateInstallation(&certificatesBlockManualRootCertificateInstallation) 
copyPasteBlocked := true
requestBody.SetCopyPasteBlocked(&copyPasteBlocked) 
cortanaBlocked := true
requestBody.SetCortanaBlocked(&cortanaBlocked) 
deviceManagementBlockFactoryResetOnMobile := true
requestBody.SetDeviceManagementBlockFactoryResetOnMobile(&deviceManagementBlockFactoryResetOnMobile) 
deviceManagementBlockManualUnenroll := true
requestBody.SetDeviceManagementBlockManualUnenroll(&deviceManagementBlockManualUnenroll) 
safeSearchFilter := graphmodels.STRICT_SAFESEARCHFILTERTYPE 
requestBody.SetSafeSearchFilter(&safeSearchFilter) 
edgeBlockPopups := true
requestBody.SetEdgeBlockPopups(&edgeBlockPopups) 
edgeBlockSearchSuggestions := true
requestBody.SetEdgeBlockSearchSuggestions(&edgeBlockSearchSuggestions) 
edgeBlockSendingIntranetTrafficToInternetExplorer := true
requestBody.SetEdgeBlockSendingIntranetTrafficToInternetExplorer(&edgeBlockSendingIntranetTrafficToInternetExplorer) 
edgeSendIntranetTrafficToInternetExplorer := true
requestBody.SetEdgeSendIntranetTrafficToInternetExplorer(&edgeSendIntranetTrafficToInternetExplorer) 
edgeRequireSmartScreen := true
requestBody.SetEdgeRequireSmartScreen(&edgeRequireSmartScreen) 
edgeEnterpriseModeSiteListLocation := "Edge Enterprise Mode Site List Location value"
requestBody.SetEdgeEnterpriseModeSiteListLocation(&edgeEnterpriseModeSiteListLocation) 
edgeFirstRunUrl := "https://example.com/edgeFirstRunUrl/"
requestBody.SetEdgeFirstRunUrl(&edgeFirstRunUrl) 
edgeSearchEngine := graphmodels.NewEdgeSearchEngineBase()
requestBody.SetEdgeSearchEngine(edgeSearchEngine)
edgeHomepageUrls := []string {
	"Edge Homepage Urls value",
}
requestBody.SetEdgeHomepageUrls(edgeHomepageUrls)
edgeBlockAccessToAboutFlags := true
requestBody.SetEdgeBlockAccessToAboutFlags(&edgeBlockAccessToAboutFlags) 
smartScreenBlockPromptOverride := true
requestBody.SetSmartScreenBlockPromptOverride(&smartScreenBlockPromptOverride) 
smartScreenBlockPromptOverrideForFiles := true
requestBody.SetSmartScreenBlockPromptOverrideForFiles(&smartScreenBlockPromptOverrideForFiles) 
webRtcBlockLocalhostIpAddress := true
requestBody.SetWebRtcBlockLocalhostIpAddress(&webRtcBlockLocalhostIpAddress) 
internetSharingBlocked := true
requestBody.SetInternetSharingBlocked(&internetSharingBlocked) 
settingsBlockAddProvisioningPackage := true
requestBody.SetSettingsBlockAddProvisioningPackage(&settingsBlockAddProvisioningPackage) 
settingsBlockRemoveProvisioningPackage := true
requestBody.SetSettingsBlockRemoveProvisioningPackage(&settingsBlockRemoveProvisioningPackage) 
settingsBlockChangeSystemTime := true
requestBody.SetSettingsBlockChangeSystemTime(&settingsBlockChangeSystemTime) 
settingsBlockEditDeviceName := true
requestBody.SetSettingsBlockEditDeviceName(&settingsBlockEditDeviceName) 
settingsBlockChangeRegion := true
requestBody.SetSettingsBlockChangeRegion(&settingsBlockChangeRegion) 
settingsBlockChangeLanguage := true
requestBody.SetSettingsBlockChangeLanguage(&settingsBlockChangeLanguage) 
settingsBlockChangePowerSleep := true
requestBody.SetSettingsBlockChangePowerSleep(&settingsBlockChangePowerSleep) 
locationServicesBlocked := true
requestBody.SetLocationServicesBlocked(&locationServicesBlocked) 
microsoftAccountBlocked := true
requestBody.SetMicrosoftAccountBlocked(&microsoftAccountBlocked) 
microsoftAccountBlockSettingsSync := true
requestBody.SetMicrosoftAccountBlockSettingsSync(&microsoftAccountBlockSettingsSync) 
nfcBlocked := true
requestBody.SetNfcBlocked(&nfcBlocked) 
resetProtectionModeBlocked := true
requestBody.SetResetProtectionModeBlocked(&resetProtectionModeBlocked) 
screenCaptureBlocked := true
requestBody.SetScreenCaptureBlocked(&screenCaptureBlocked) 
storageBlockRemovableStorage := true
requestBody.SetStorageBlockRemovableStorage(&storageBlockRemovableStorage) 
storageRequireMobileDeviceEncryption := true
requestBody.SetStorageRequireMobileDeviceEncryption(&storageRequireMobileDeviceEncryption) 
usbBlocked := true
requestBody.SetUsbBlocked(&usbBlocked) 
voiceRecordingBlocked := true
requestBody.SetVoiceRecordingBlocked(&voiceRecordingBlocked) 
wiFiBlockAutomaticConnectHotspots := true
requestBody.SetWiFiBlockAutomaticConnectHotspots(&wiFiBlockAutomaticConnectHotspots) 
wiFiBlocked := true
requestBody.SetWiFiBlocked(&wiFiBlocked) 
wiFiBlockManualConfiguration := true
requestBody.SetWiFiBlockManualConfiguration(&wiFiBlockManualConfiguration) 
wiFiScanInterval := int32(0)
requestBody.SetWiFiScanInterval(&wiFiScanInterval) 
wirelessDisplayBlockProjectionToThisDevice := true
requestBody.SetWirelessDisplayBlockProjectionToThisDevice(&wirelessDisplayBlockProjectionToThisDevice) 
wirelessDisplayBlockUserInputFromReceiver := true
requestBody.SetWirelessDisplayBlockUserInputFromReceiver(&wirelessDisplayBlockUserInputFromReceiver) 
wirelessDisplayRequirePinForPairing := true
requestBody.SetWirelessDisplayRequirePinForPairing(&wirelessDisplayRequirePinForPairing) 
windowsStoreBlocked := true
requestBody.SetWindowsStoreBlocked(&windowsStoreBlocked) 
appsAllowTrustedAppsSideloading := graphmodels.BLOCKED_STATEMANAGEMENTSETTING 
requestBody.SetAppsAllowTrustedAppsSideloading(&appsAllowTrustedAppsSideloading) 
windowsStoreBlockAutoUpdate := true
requestBody.SetWindowsStoreBlockAutoUpdate(&windowsStoreBlockAutoUpdate) 
developerUnlockSetting := graphmodels.BLOCKED_STATEMANAGEMENTSETTING 
requestBody.SetDeveloperUnlockSetting(&developerUnlockSetting) 
sharedUserAppDataAllowed := true
requestBody.SetSharedUserAppDataAllowed(&sharedUserAppDataAllowed) 
appsBlockWindowsStoreOriginatedApps := true
requestBody.SetAppsBlockWindowsStoreOriginatedApps(&appsBlockWindowsStoreOriginatedApps) 
windowsStoreEnablePrivateStoreOnly := true
requestBody.SetWindowsStoreEnablePrivateStoreOnly(&windowsStoreEnablePrivateStoreOnly) 
storageRestrictAppDataToSystemVolume := true
requestBody.SetStorageRestrictAppDataToSystemVolume(&storageRestrictAppDataToSystemVolume) 
storageRestrictAppInstallToSystemVolume := true
requestBody.SetStorageRestrictAppInstallToSystemVolume(&storageRestrictAppInstallToSystemVolume) 
gameDvrBlocked := true
requestBody.SetGameDvrBlocked(&gameDvrBlocked) 
experienceBlockDeviceDiscovery := true
requestBody.SetExperienceBlockDeviceDiscovery(&experienceBlockDeviceDiscovery) 
experienceBlockErrorDialogWhenNoSIM := true
requestBody.SetExperienceBlockErrorDialogWhenNoSIM(&experienceBlockErrorDialogWhenNoSIM) 
experienceBlockTaskSwitcher := true
requestBody.SetExperienceBlockTaskSwitcher(&experienceBlockTaskSwitcher) 
logonBlockFastUserSwitching := true
requestBody.SetLogonBlockFastUserSwitching(&logonBlockFastUserSwitching) 
tenantLockdownRequireNetworkDuringOutOfBoxExperience := true
requestBody.SetTenantLockdownRequireNetworkDuringOutOfBoxExperience(&tenantLockdownRequireNetworkDuringOutOfBoxExperience) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```