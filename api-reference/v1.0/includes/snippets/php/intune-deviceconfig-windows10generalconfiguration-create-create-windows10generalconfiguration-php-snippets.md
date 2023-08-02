---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Windows10GeneralConfiguration();
$requestBody->setOdataType('#microsoft.graph.windows10GeneralConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setEnterpriseCloudPrintDiscoveryEndPoint('Enterprise Cloud Print Discovery End Point value');

$requestBody->setEnterpriseCloudPrintOAuthAuthority('Enterprise Cloud Print OAuth Authority value');

$requestBody->setEnterpriseCloudPrintOAuthClientIdentifier('Enterprise Cloud Print OAuth Client Identifier value');

$requestBody->setEnterpriseCloudPrintResourceIdentifier('Enterprise Cloud Print Resource Identifier value');

$requestBody->setEnterpriseCloudPrintDiscoveryMaxLimit(5);

$requestBody->setEnterpriseCloudPrintMopriaDiscoveryResourceIdentifier('Enterprise Cloud Print Mopria Discovery Resource Identifier value');

$requestBody->setSearchBlockDiacritics(true);

$requestBody->setSearchDisableAutoLanguageDetection(true);

$requestBody->setSearchDisableIndexingEncryptedItems(true);

$requestBody->setSearchEnableRemoteQueries(true);

$requestBody->setSearchDisableIndexerBackoff(true);

$requestBody->setSearchDisableIndexingRemovableDrive(true);

$requestBody->setSearchEnableAutomaticIndexSizeManangement(true);

$requestBody->setDiagnosticsDataSubmissionMode(new DiagnosticDataSubmissionMode('none'));

$requestBody->setOneDriveDisableFileSync(true);

$requestBody->setSmartScreenEnableAppInstallControl(true);

$requestBody->setPersonalizationDesktopImageUrl('https://example.com/personalizationDesktopImageUrl/');

$requestBody->setPersonalizationLockScreenImageUrl('https://example.com/personalizationLockScreenImageUrl/');

$requestBody->setBluetoothAllowedServices(['Bluetooth Allowed Services value', 	]);

$requestBody->setBluetoothBlockAdvertising(true);

$requestBody->setBluetoothBlockDiscoverableMode(true);

$requestBody->setBluetoothBlockPrePairing(true);

$requestBody->setEdgeBlockAutofill(true);

$requestBody->setEdgeBlocked(true);

$requestBody->setEdgeCookiePolicy(new EdgeCookiePolicy('allow'));

$requestBody->setEdgeBlockDeveloperTools(true);

$requestBody->setEdgeBlockSendingDoNotTrackHeader(true);

$requestBody->setEdgeBlockExtensions(true);

$requestBody->setEdgeBlockInPrivateBrowsing(true);

$requestBody->setEdgeBlockJavaScript(true);

$requestBody->setEdgeBlockPasswordManager(true);

$requestBody->setEdgeBlockAddressBarDropdown(true);

$requestBody->setEdgeBlockCompatibilityList(true);

$requestBody->setEdgeClearBrowsingDataOnExit(true);

$requestBody->setEdgeAllowStartPagesModification(true);

$requestBody->setEdgeDisableFirstRunPage(true);

$requestBody->setEdgeBlockLiveTileDataCollection(true);

$requestBody->setEdgeSyncFavoritesWithInternetExplorer(true);

$requestBody->setCellularBlockDataWhenRoaming(true);

$requestBody->setCellularBlockVpn(true);

$requestBody->setCellularBlockVpnWhenRoaming(true);

$requestBody->setDefenderRequireRealTimeMonitoring(true);

$requestBody->setDefenderRequireBehaviorMonitoring(true);

$requestBody->setDefenderRequireNetworkInspectionSystem(true);

$requestBody->setDefenderScanDownloads(true);

$requestBody->setDefenderScanScriptsLoadedInInternetExplorer(true);

$requestBody->setDefenderBlockEndUserAccess(true);

$requestBody->setDefenderSignatureUpdateIntervalInHours(6);

$requestBody->setDefenderMonitorFileActivity(new DefenderMonitorFileActivity('disable'));

$requestBody->setDefenderDaysBeforeDeletingQuarantinedMalware(12);

$requestBody->setDefenderScanMaxCpu(2);

$requestBody->setDefenderScanArchiveFiles(true);

$requestBody->setDefenderScanIncomingMail(true);

$requestBody->setDefenderScanRemovableDrivesDuringFullScan(true);

$requestBody->setDefenderScanMappedNetworkDrivesDuringFullScan(true);

$requestBody->setDefenderScanNetworkFiles(true);

$requestBody->setDefenderRequireCloudProtection(true);

$requestBody->setDefenderCloudBlockLevel(new DefenderCloudBlockLevelType('high'));

$requestBody->setDefenderPromptForSampleSubmission(new DefenderPromptForSampleSubmission('alwaysPrompt'));

$requestBody->setDefenderScheduledQuickScanTime(new Time('11:58:49.3840000'));

$requestBody->setDefenderScanType(new DefenderScanType('disabled'));

$requestBody->setDefenderSystemScanSchedule(new WeeklySchedule('everyday'));

$requestBody->setDefenderScheduledScanTime(new Time('11:59:10.9990000'));

$defenderDetectedMalwareActions = new DefenderDetectedMalwareActions();
$defenderDetectedMalwareActions->setOdataType('microsoft.graph.defenderDetectedMalwareActions');

$defenderDetectedMalwareActions->setLowSeverity(new DefenderThreatAction('clean'));

$defenderDetectedMalwareActions->setModerateSeverity(new DefenderThreatAction('clean'));

$defenderDetectedMalwareActions->setHighSeverity(new DefenderThreatAction('clean'));

$defenderDetectedMalwareActions->setSevereSeverity(new DefenderThreatAction('clean'));


$requestBody->setDefenderDetectedMalwareActions($defenderDetectedMalwareActions);
$requestBody->setDefenderFileExtensionsToExclude(['Defender File Extensions To Exclude value', 	]);

$requestBody->setDefenderFilesAndFoldersToExclude(['Defender Files And Folders To Exclude value', 	]);

$requestBody->setDefenderProcessesToExclude(['Defender Processes To Exclude value', 	]);

$requestBody->setLockScreenAllowTimeoutConfiguration(true);

$requestBody->setLockScreenBlockActionCenterNotifications(true);

$requestBody->setLockScreenBlockCortana(true);

$requestBody->setLockScreenBlockToastNotifications(true);

$requestBody->setLockScreenTimeoutInSeconds(10);

$requestBody->setPasswordBlockSimple(true);

$requestBody->setPasswordExpirationDays(6);

$requestBody->setPasswordMinimumLength(5);

$requestBody->setPasswordMinutesOfInactivityBeforeScreenTimeout(14);

$requestBody->setPasswordMinimumCharacterSetCount(0);

$requestBody->setPasswordPreviousPasswordBlockCount(2);

$requestBody->setPasswordRequired(true);

$requestBody->setPasswordRequireWhenResumeFromIdleState(true);

$requestBody->setPasswordRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasswordSignInFailureCountBeforeFactoryReset(12);

$requestBody->setPrivacyAdvertisingId(new StateManagementSetting('blocked'));

$requestBody->setPrivacyAutoAcceptPairingAndConsentPrompts(true);

$requestBody->setPrivacyBlockInputPersonalization(true);

$requestBody->setStartBlockUnpinningAppsFromTaskbar(true);

$requestBody->setStartMenuAppListVisibility(new WindowsStartMenuAppListVisibilityType('collapse'));

$requestBody->setStartMenuHideChangeAccountSettings(true);

$requestBody->setStartMenuHideFrequentlyUsedApps(true);

$requestBody->setStartMenuHideHibernate(true);

$requestBody->setStartMenuHideLock(true);

$requestBody->setStartMenuHidePowerButton(true);

$requestBody->setStartMenuHideRecentJumpLists(true);

$requestBody->setStartMenuHideRecentlyAddedApps(true);

$requestBody->setStartMenuHideRestartOptions(true);

$requestBody->setStartMenuHideShutDown(true);

$requestBody->setStartMenuHideSignOut(true);

$requestBody->setStartMenuHideSleep(true);

$requestBody->setStartMenuHideSwitchAccount(true);

$requestBody->setStartMenuHideUserTile(true);

$requestBody->setStartMenuLayoutEdgeAssetsXml(base64_decode('c3RhcnRNZW51TGF5b3V0RWRnZUFzc2V0c1htbA=='));

$requestBody->setStartMenuLayoutXml(base64_decode('c3RhcnRNZW51TGF5b3V0WG1s'));

$requestBody->setStartMenuMode(new WindowsStartMenuModeType('fullScreen'));

$requestBody->setStartMenuPinnedFolderDocuments(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderDownloads(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderFileExplorer(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderHomeGroup(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderMusic(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderNetwork(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderPersonalFolder(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderPictures(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderSettings(new VisibilitySetting('hide'));

$requestBody->setStartMenuPinnedFolderVideos(new VisibilitySetting('hide'));

$requestBody->setSettingsBlockSettingsApp(true);

$requestBody->setSettingsBlockSystemPage(true);

$requestBody->setSettingsBlockDevicesPage(true);

$requestBody->setSettingsBlockNetworkInternetPage(true);

$requestBody->setSettingsBlockPersonalizationPage(true);

$requestBody->setSettingsBlockAccountsPage(true);

$requestBody->setSettingsBlockTimeLanguagePage(true);

$requestBody->setSettingsBlockEaseOfAccessPage(true);

$requestBody->setSettingsBlockPrivacyPage(true);

$requestBody->setSettingsBlockUpdateSecurityPage(true);

$requestBody->setSettingsBlockAppsPage(true);

$requestBody->setSettingsBlockGamingPage(true);

$requestBody->setWindowsSpotlightBlockConsumerSpecificFeatures(true);

$requestBody->setWindowsSpotlightBlocked(true);

$requestBody->setWindowsSpotlightBlockOnActionCenter(true);

$requestBody->setWindowsSpotlightBlockTailoredExperiences(true);

$requestBody->setWindowsSpotlightBlockThirdPartyNotifications(true);

$requestBody->setWindowsSpotlightBlockWelcomeExperience(true);

$requestBody->setWindowsSpotlightBlockWindowsTips(true);

$requestBody->setWindowsSpotlightConfigureOnLockScreen(new WindowsSpotlightEnablementSettings('disabled'));

$requestBody->setNetworkProxyApplySettingsDeviceWide(true);

$requestBody->setNetworkProxyDisableAutoDetect(true);

$requestBody->setNetworkProxyAutomaticConfigurationUrl('https://example.com/networkProxyAutomaticConfigurationUrl/');

$networkProxyServer = new Windows10NetworkProxyServer();
$networkProxyServer->setOdataType('microsoft.graph.windows10NetworkProxyServer');

$networkProxyServer->setAddress('Address value');

$networkProxyServer->setExceptions(['Exceptions value', 	]);

$networkProxyServer->setUseForLocalAddresses(true);


$requestBody->setNetworkProxyServer($networkProxyServer);
$requestBody->setAccountsBlockAddingNonMicrosoftAccountEmail(true);

$requestBody->setAntiTheftModeBlocked(true);

$requestBody->setBluetoothBlocked(true);

$requestBody->setCameraBlocked(true);

$requestBody->setConnectedDevicesServiceBlocked(true);

$requestBody->setCertificatesBlockManualRootCertificateInstallation(true);

$requestBody->setCopyPasteBlocked(true);

$requestBody->setCortanaBlocked(true);

$requestBody->setDeviceManagementBlockFactoryResetOnMobile(true);

$requestBody->setDeviceManagementBlockManualUnenroll(true);

$requestBody->setSafeSearchFilter(new SafeSearchFilterType('strict'));

$requestBody->setEdgeBlockPopups(true);

$requestBody->setEdgeBlockSearchSuggestions(true);

$requestBody->setEdgeBlockSendingIntranetTrafficToInternetExplorer(true);

$requestBody->setEdgeSendIntranetTrafficToInternetExplorer(true);

$requestBody->setEdgeRequireSmartScreen(true);

$requestBody->setEdgeEnterpriseModeSiteListLocation('Edge Enterprise Mode Site List Location value');

$requestBody->setEdgeFirstRunUrl('https://example.com/edgeFirstRunUrl/');

$edgeSearchEngine = new EdgeSearchEngineBase();
$edgeSearchEngine->setOdataType('microsoft.graph.edgeSearchEngineBase');


$requestBody->setEdgeSearchEngine($edgeSearchEngine);
$requestBody->setEdgeHomepageUrls(['Edge Homepage Urls value', 	]);

$requestBody->setEdgeBlockAccessToAboutFlags(true);

$requestBody->setSmartScreenBlockPromptOverride(true);

$requestBody->setSmartScreenBlockPromptOverrideForFiles(true);

$requestBody->setWebRtcBlockLocalhostIpAddress(true);

$requestBody->setInternetSharingBlocked(true);

$requestBody->setSettingsBlockAddProvisioningPackage(true);

$requestBody->setSettingsBlockRemoveProvisioningPackage(true);

$requestBody->setSettingsBlockChangeSystemTime(true);

$requestBody->setSettingsBlockEditDeviceName(true);

$requestBody->setSettingsBlockChangeRegion(true);

$requestBody->setSettingsBlockChangeLanguage(true);

$requestBody->setSettingsBlockChangePowerSleep(true);

$requestBody->setLocationServicesBlocked(true);

$requestBody->setMicrosoftAccountBlocked(true);

$requestBody->setMicrosoftAccountBlockSettingsSync(true);

$requestBody->setNfcBlocked(true);

$requestBody->setResetProtectionModeBlocked(true);

$requestBody->setScreenCaptureBlocked(true);

$requestBody->setStorageBlockRemovableStorage(true);

$requestBody->setStorageRequireMobileDeviceEncryption(true);

$requestBody->setUsbBlocked(true);

$requestBody->setVoiceRecordingBlocked(true);

$requestBody->setWiFiBlockAutomaticConnectHotspots(true);

$requestBody->setWiFiBlocked(true);

$requestBody->setWiFiBlockManualConfiguration(true);

$requestBody->setWiFiScanInterval(0);

$requestBody->setWirelessDisplayBlockProjectionToThisDevice(true);

$requestBody->setWirelessDisplayBlockUserInputFromReceiver(true);

$requestBody->setWirelessDisplayRequirePinForPairing(true);

$requestBody->setWindowsStoreBlocked(true);

$requestBody->setAppsAllowTrustedAppsSideloading(new StateManagementSetting('blocked'));

$requestBody->setWindowsStoreBlockAutoUpdate(true);

$requestBody->setDeveloperUnlockSetting(new StateManagementSetting('blocked'));

$requestBody->setSharedUserAppDataAllowed(true);

$requestBody->setAppsBlockWindowsStoreOriginatedApps(true);

$requestBody->setWindowsStoreEnablePrivateStoreOnly(true);

$requestBody->setStorageRestrictAppDataToSystemVolume(true);

$requestBody->setStorageRestrictAppInstallToSystemVolume(true);

$requestBody->setGameDvrBlocked(true);

$requestBody->setExperienceBlockDeviceDiscovery(true);

$requestBody->setExperienceBlockErrorDialogWhenNoSIM(true);

$requestBody->setExperienceBlockTaskSwitcher(true);

$requestBody->setLogonBlockFastUserSwitching(true);

$requestBody->setTenantLockdownRequireNetworkDuringOutOfBoxExperience(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```