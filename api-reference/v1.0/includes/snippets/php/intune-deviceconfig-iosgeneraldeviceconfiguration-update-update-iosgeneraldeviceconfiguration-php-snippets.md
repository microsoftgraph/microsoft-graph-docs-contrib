---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IosGeneralDeviceConfiguration();
$requestBody->set@odatatype('#microsoft.graph.iosGeneralDeviceConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAccountBlockModification(true);

$requestBody->setActivationLockAllowWhenSupervised(true);

$requestBody->setAirDropBlocked(true);

$requestBody->setAirDropForceUnmanagedDropTarget(true);

$requestBody->setAirPlayForcePairingPasswordForOutgoingRequests(true);

$requestBody->setAppleWatchBlockPairing(true);

$requestBody->setAppleWatchForceWristDetection(true);

$requestBody->setAppleNewsBlocked(true);

$appsSingleAppModeListAppListItem1 = new AppListItem();
$appsSingleAppModeListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$appsSingleAppModeListAppListItem1->setName('Name value');

$appsSingleAppModeListAppListItem1->setPublisher('Publisher value');

$appsSingleAppModeListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsSingleAppModeListAppListItem1->setAppId('App Id value');


$appsSingleAppModeListArray []= $appsSingleAppModeListAppListItem1;
$requestBody->setAppsSingleAppModeList($appsSingleAppModeListArray);


$appsVisibilityListAppListItem1 = new AppListItem();
$appsVisibilityListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$appsVisibilityListAppListItem1->setName('Name value');

$appsVisibilityListAppListItem1->setPublisher('Publisher value');

$appsVisibilityListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsVisibilityListAppListItem1->setAppId('App Id value');


$appsVisibilityListArray []= $appsVisibilityListAppListItem1;
$requestBody->setAppsVisibilityList($appsVisibilityListArray);


$requestBody->setAppsVisibilityListType(new AppListType('appsinlistcompliant'));

$requestBody->setAppStoreBlockAutomaticDownloads(true);

$requestBody->setAppStoreBlocked(true);

$requestBody->setAppStoreBlockInAppPurchases(true);

$requestBody->setAppStoreBlockUIAppInstallation(true);

$requestBody->setAppStoreRequirePassword(true);

$requestBody->setBluetoothBlockModification(true);

$requestBody->setCameraBlocked(true);

$requestBody->setCellularBlockDataRoaming(true);

$requestBody->setCellularBlockGlobalBackgroundFetchWhileRoaming(true);

$requestBody->setCellularBlockPerAppDataModification(true);

$requestBody->setCellularBlockPersonalHotspot(true);

$requestBody->setCellularBlockVoiceRoaming(true);

$requestBody->setCertificatesBlockUntrustedTlsCertificates(true);

$requestBody->setClassroomAppBlockRemoteScreenObservation(true);

$requestBody->setClassroomAppForceUnpromptedScreenObservation(true);

$compliantAppsListAppListItem1 = new AppListItem();
$compliantAppsListAppListItem1->set@odatatype('microsoft.graph.appListItem');

$compliantAppsListAppListItem1->setName('Name value');

$compliantAppsListAppListItem1->setPublisher('Publisher value');

$compliantAppsListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$compliantAppsListAppListItem1->setAppId('App Id value');


$compliantAppsListArray []= $compliantAppsListAppListItem1;
$requestBody->setCompliantAppsList($compliantAppsListArray);


$requestBody->setCompliantAppListType(new AppListType('appsinlistcompliant'));

$requestBody->setConfigurationProfileBlockChanges(true);

$requestBody->setDefinitionLookupBlocked(true);

$requestBody->setDeviceBlockEnableRestrictions(true);

$requestBody->setDeviceBlockEraseContentAndSettings(true);

$requestBody->setDeviceBlockNameModification(true);

$requestBody->setDiagnosticDataBlockSubmission(true);

$requestBody->setDiagnosticDataBlockSubmissionModification(true);

$requestBody->setDocumentsBlockManagedDocumentsInUnmanagedApps(true);

$requestBody->setDocumentsBlockUnmanagedDocumentsInManagedApps(true);

$requestBody->setEmailInDomainSuffixes(['Email In Domain Suffixes value', ]);

$requestBody->setEnterpriseAppBlockTrust(true);

$requestBody->setEnterpriseAppBlockTrustModification(true);

$requestBody->setFaceTimeBlocked(true);

$requestBody->setFindMyFriendsBlocked(true);

$requestBody->setGamingBlockGameCenterFriends(true);

$requestBody->setGamingBlockMultiplayer(true);

$requestBody->setGameCenterBlocked(true);

$requestBody->setHostPairingBlocked(true);

$requestBody->setIBooksStoreBlocked(true);

$requestBody->setIBooksStoreBlockErotica(true);

$requestBody->setICloudBlockActivityContinuation(true);

$requestBody->setICloudBlockBackup(true);

$requestBody->setICloudBlockDocumentSync(true);

$requestBody->setICloudBlockManagedAppsSync(true);

$requestBody->setICloudBlockPhotoLibrary(true);

$requestBody->setICloudBlockPhotoStreamSync(true);

$requestBody->setICloudBlockSharedPhotoStream(true);

$requestBody->setICloudRequireEncryptedBackup(true);

$requestBody->setITunesBlockExplicitContent(true);

$requestBody->setITunesBlockMusicService(true);

$requestBody->setITunesBlockRadio(true);

$requestBody->setKeyboardBlockAutoCorrect(true);

$requestBody->setKeyboardBlockDictation(true);

$requestBody->setKeyboardBlockPredictive(true);

$requestBody->setKeyboardBlockShortcuts(true);

$requestBody->setKeyboardBlockSpellCheck(true);

$requestBody->setKioskModeAllowAssistiveSpeak(true);

$requestBody->setKioskModeAllowAssistiveTouchSettings(true);

$requestBody->setKioskModeAllowAutoLock(true);

$requestBody->setKioskModeAllowColorInversionSettings(true);

$requestBody->setKioskModeAllowRingerSwitch(true);

$requestBody->setKioskModeAllowScreenRotation(true);

$requestBody->setKioskModeAllowSleepButton(true);

$requestBody->setKioskModeAllowTouchscreen(true);

$requestBody->setKioskModeAllowVoiceOverSettings(true);

$requestBody->setKioskModeAllowVolumeButtons(true);

$requestBody->setKioskModeAllowZoomSettings(true);

$requestBody->setKioskModeAppStoreUrl('https://example.com/kioskModeAppStoreUrl/');

$requestBody->setKioskModeBuiltInAppId('Kiosk Mode Built In App Id value');

$requestBody->setKioskModeRequireAssistiveTouch(true);

$requestBody->setKioskModeRequireColorInversion(true);

$requestBody->setKioskModeRequireMonoAudio(true);

$requestBody->setKioskModeRequireVoiceOver(true);

$requestBody->setKioskModeRequireZoom(true);

$requestBody->setKioskModeManagedAppId('Kiosk Mode Managed App Id value');

$requestBody->setLockScreenBlockControlCenter(true);

$requestBody->setLockScreenBlockNotificationView(true);

$requestBody->setLockScreenBlockPassbook(true);

$requestBody->setLockScreenBlockTodayView(true);

$mediaContentRatingAustralia = new MediaContentRatingAustralia();
$mediaContentRatingAustralia->set@odatatype('microsoft.graph.mediaContentRatingAustralia');

$mediaContentRatingAustralia->setMovieRating(new RatingAustraliaMoviesType('allblocked'));

$mediaContentRatingAustralia->setTvRating(new RatingAustraliaTelevisionType('allblocked'));


$requestBody->setMediaContentRatingAustralia($mediaContentRatingAustralia);
$mediaContentRatingCanada = new MediaContentRatingCanada();
$mediaContentRatingCanada->set@odatatype('microsoft.graph.mediaContentRatingCanada');

$mediaContentRatingCanada->setMovieRating(new RatingCanadaMoviesType('allblocked'));

$mediaContentRatingCanada->setTvRating(new RatingCanadaTelevisionType('allblocked'));


$requestBody->setMediaContentRatingCanada($mediaContentRatingCanada);
$mediaContentRatingFrance = new MediaContentRatingFrance();
$mediaContentRatingFrance->set@odatatype('microsoft.graph.mediaContentRatingFrance');

$mediaContentRatingFrance->setMovieRating(new RatingFranceMoviesType('allblocked'));

$mediaContentRatingFrance->setTvRating(new RatingFranceTelevisionType('allblocked'));


$requestBody->setMediaContentRatingFrance($mediaContentRatingFrance);
$mediaContentRatingGermany = new MediaContentRatingGermany();
$mediaContentRatingGermany->set@odatatype('microsoft.graph.mediaContentRatingGermany');

$mediaContentRatingGermany->setMovieRating(new RatingGermanyMoviesType('allblocked'));

$mediaContentRatingGermany->setTvRating(new RatingGermanyTelevisionType('allblocked'));


$requestBody->setMediaContentRatingGermany($mediaContentRatingGermany);
$mediaContentRatingIreland = new MediaContentRatingIreland();
$mediaContentRatingIreland->set@odatatype('microsoft.graph.mediaContentRatingIreland');

$mediaContentRatingIreland->setMovieRating(new RatingIrelandMoviesType('allblocked'));

$mediaContentRatingIreland->setTvRating(new RatingIrelandTelevisionType('allblocked'));


$requestBody->setMediaContentRatingIreland($mediaContentRatingIreland);
$mediaContentRatingJapan = new MediaContentRatingJapan();
$mediaContentRatingJapan->set@odatatype('microsoft.graph.mediaContentRatingJapan');

$mediaContentRatingJapan->setMovieRating(new RatingJapanMoviesType('allblocked'));

$mediaContentRatingJapan->setTvRating(new RatingJapanTelevisionType('allblocked'));


$requestBody->setMediaContentRatingJapan($mediaContentRatingJapan);
$mediaContentRatingNewZealand = new MediaContentRatingNewZealand();
$mediaContentRatingNewZealand->set@odatatype('microsoft.graph.mediaContentRatingNewZealand');

$mediaContentRatingNewZealand->setMovieRating(new RatingNewZealandMoviesType('allblocked'));

$mediaContentRatingNewZealand->setTvRating(new RatingNewZealandTelevisionType('allblocked'));


$requestBody->setMediaContentRatingNewZealand($mediaContentRatingNewZealand);
$mediaContentRatingUnitedKingdom = new MediaContentRatingUnitedKingdom();
$mediaContentRatingUnitedKingdom->set@odatatype('microsoft.graph.mediaContentRatingUnitedKingdom');

$mediaContentRatingUnitedKingdom->setMovieRating(new RatingUnitedKingdomMoviesType('allblocked'));

$mediaContentRatingUnitedKingdom->setTvRating(new RatingUnitedKingdomTelevisionType('allblocked'));


$requestBody->setMediaContentRatingUnitedKingdom($mediaContentRatingUnitedKingdom);
$mediaContentRatingUnitedStates = new MediaContentRatingUnitedStates();
$mediaContentRatingUnitedStates->set@odatatype('microsoft.graph.mediaContentRatingUnitedStates');

$mediaContentRatingUnitedStates->setMovieRating(new RatingUnitedStatesMoviesType('allblocked'));

$mediaContentRatingUnitedStates->setTvRating(new RatingUnitedStatesTelevisionType('allblocked'));


$requestBody->setMediaContentRatingUnitedStates($mediaContentRatingUnitedStates);
$networkUsageRulesIosNetworkUsageRule1 = new IosNetworkUsageRule();
$networkUsageRulesIosNetworkUsageRule1->set@odatatype('microsoft.graph.iosNetworkUsageRule');

$managedAppsAppListItem1 = new AppListItem();
$managedAppsAppListItem1->set@odatatype('microsoft.graph.appListItem');

$managedAppsAppListItem1->setName('Name value');

$managedAppsAppListItem1->setPublisher('Publisher value');

$managedAppsAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$managedAppsAppListItem1->setAppId('App Id value');


$managedAppsArray []= $managedAppsAppListItem1;
$networkUsageRulesIosNetworkUsageRule1->setManagedApps($managedAppsArray);


$networkUsageRulesIosNetworkUsageRule1->setCellularDataBlockWhenRoaming(true);

$networkUsageRulesIosNetworkUsageRule1->setCellularDataBlocked(true);


$networkUsageRulesArray []= $networkUsageRulesIosNetworkUsageRule1;
$requestBody->setNetworkUsageRules($networkUsageRulesArray);


$requestBody->setMediaContentRatingApps(new RatingAppsType('allblocked'));

$requestBody->setMessagesBlocked(true);

$requestBody->setNotificationsBlockSettingsModification(true);

$requestBody->setPasscodeBlockFingerprintUnlock(true);

$requestBody->setPasscodeBlockFingerprintModification(true);

$requestBody->setPasscodeBlockModification(true);

$requestBody->setPasscodeBlockSimple(true);

$requestBody->setPasscodeExpirationDays(6);

$requestBody->setPasscodeMinimumLength(5);

$requestBody->setPasscodeMinutesOfInactivityBeforeLock(5);

$requestBody->setPasscodeMinutesOfInactivityBeforeScreenTimeout(14);

$requestBody->setPasscodeMinimumCharacterSetCount(0);

$requestBody->setPasscodePreviousPasscodeBlockCount(2);

$requestBody->setPasscodeSignInFailureCountBeforeWipe(4);

$requestBody->setPasscodeRequiredType(new RequiredPasswordType('alphanumeric'));

$requestBody->setPasscodeRequired(true);

$requestBody->setPodcastsBlocked(true);

$requestBody->setSafariBlockAutofill(true);

$requestBody->setSafariBlockJavaScript(true);

$requestBody->setSafariBlockPopups(true);

$requestBody->setSafariBlocked(true);

$requestBody->setSafariCookieSettings(new WebBrowserCookieSettings('blockalways'));

$requestBody->setSafariManagedDomains(['Safari Managed Domains value', ]);

$requestBody->setSafariPasswordAutoFillDomains(['Safari Password Auto Fill Domains value', ]);

$requestBody->setSafariRequireFraudWarning(true);

$requestBody->setScreenCaptureBlocked(true);

$requestBody->setSiriBlocked(true);

$requestBody->setSiriBlockedWhenLocked(true);

$requestBody->setSiriBlockUserGeneratedContent(true);

$requestBody->setSiriRequireProfanityFilter(true);

$requestBody->setSpotlightBlockInternetResults(true);

$requestBody->setVoiceDialingBlocked(true);

$requestBody->setWallpaperBlockModification(true);

$requestBody->setWiFiConnectOnlyToConfiguredNetworks(true);



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->byDeviceConfigurationId('deviceConfiguration-id')->patch($requestBody);


```