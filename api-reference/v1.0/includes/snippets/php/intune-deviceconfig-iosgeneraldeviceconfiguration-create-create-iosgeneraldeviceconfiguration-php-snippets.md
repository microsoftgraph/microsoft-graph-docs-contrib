---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosGeneralDeviceConfiguration();
$requestBody->setOdataType('#microsoft.graph.iosGeneralDeviceConfiguration');

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
$appsSingleAppModeListAppListItem1->setOdataType('microsoft.graph.appListItem');

$appsSingleAppModeListAppListItem1->setName('Name value');

$appsSingleAppModeListAppListItem1->setPublisher('Publisher value');

$appsSingleAppModeListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsSingleAppModeListAppListItem1->setAppId('App Id value');


$appsSingleAppModeListArray []= $appsSingleAppModeListAppListItem1;
$requestBody->setAppsSingleAppModeList($appsSingleAppModeListArray);


$appsVisibilityListAppListItem1 = new AppListItem();
$appsVisibilityListAppListItem1->setOdataType('microsoft.graph.appListItem');

$appsVisibilityListAppListItem1->setName('Name value');

$appsVisibilityListAppListItem1->setPublisher('Publisher value');

$appsVisibilityListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$appsVisibilityListAppListItem1->setAppId('App Id value');


$appsVisibilityListArray []= $appsVisibilityListAppListItem1;
$requestBody->setAppsVisibilityList($appsVisibilityListArray);


$requestBody->setAppsVisibilityListType(new AppListType('appsInListCompliant'));

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
$compliantAppsListAppListItem1->setOdataType('microsoft.graph.appListItem');

$compliantAppsListAppListItem1->setName('Name value');

$compliantAppsListAppListItem1->setPublisher('Publisher value');

$compliantAppsListAppListItem1->setAppStoreUrl('https://example.com/appStoreUrl/');

$compliantAppsListAppListItem1->setAppId('App Id value');


$compliantAppsListArray []= $compliantAppsListAppListItem1;
$requestBody->setCompliantAppsList($compliantAppsListArray);


$requestBody->setCompliantAppListType(new AppListType('appsInListCompliant'));

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
$mediaContentRatingAustralia->setOdataType('microsoft.graph.mediaContentRatingAustralia');

$mediaContentRatingAustralia->setMovieRating(new RatingAustraliaMoviesType('allBlocked'));

$mediaContentRatingAustralia->setTvRating(new RatingAustraliaTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingAustralia($mediaContentRatingAustralia);
$mediaContentRatingCanada = new MediaContentRatingCanada();
$mediaContentRatingCanada->setOdataType('microsoft.graph.mediaContentRatingCanada');

$mediaContentRatingCanada->setMovieRating(new RatingCanadaMoviesType('allBlocked'));

$mediaContentRatingCanada->setTvRating(new RatingCanadaTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingCanada($mediaContentRatingCanada);
$mediaContentRatingFrance = new MediaContentRatingFrance();
$mediaContentRatingFrance->setOdataType('microsoft.graph.mediaContentRatingFrance');

$mediaContentRatingFrance->setMovieRating(new RatingFranceMoviesType('allBlocked'));

$mediaContentRatingFrance->setTvRating(new RatingFranceTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingFrance($mediaContentRatingFrance);
$mediaContentRatingGermany = new MediaContentRatingGermany();
$mediaContentRatingGermany->setOdataType('microsoft.graph.mediaContentRatingGermany');

$mediaContentRatingGermany->setMovieRating(new RatingGermanyMoviesType('allBlocked'));

$mediaContentRatingGermany->setTvRating(new RatingGermanyTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingGermany($mediaContentRatingGermany);
$mediaContentRatingIreland = new MediaContentRatingIreland();
$mediaContentRatingIreland->setOdataType('microsoft.graph.mediaContentRatingIreland');

$mediaContentRatingIreland->setMovieRating(new RatingIrelandMoviesType('allBlocked'));

$mediaContentRatingIreland->setTvRating(new RatingIrelandTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingIreland($mediaContentRatingIreland);
$mediaContentRatingJapan = new MediaContentRatingJapan();
$mediaContentRatingJapan->setOdataType('microsoft.graph.mediaContentRatingJapan');

$mediaContentRatingJapan->setMovieRating(new RatingJapanMoviesType('allBlocked'));

$mediaContentRatingJapan->setTvRating(new RatingJapanTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingJapan($mediaContentRatingJapan);
$mediaContentRatingNewZealand = new MediaContentRatingNewZealand();
$mediaContentRatingNewZealand->setOdataType('microsoft.graph.mediaContentRatingNewZealand');

$mediaContentRatingNewZealand->setMovieRating(new RatingNewZealandMoviesType('allBlocked'));

$mediaContentRatingNewZealand->setTvRating(new RatingNewZealandTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingNewZealand($mediaContentRatingNewZealand);
$mediaContentRatingUnitedKingdom = new MediaContentRatingUnitedKingdom();
$mediaContentRatingUnitedKingdom->setOdataType('microsoft.graph.mediaContentRatingUnitedKingdom');

$mediaContentRatingUnitedKingdom->setMovieRating(new RatingUnitedKingdomMoviesType('allBlocked'));

$mediaContentRatingUnitedKingdom->setTvRating(new RatingUnitedKingdomTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingUnitedKingdom($mediaContentRatingUnitedKingdom);
$mediaContentRatingUnitedStates = new MediaContentRatingUnitedStates();
$mediaContentRatingUnitedStates->setOdataType('microsoft.graph.mediaContentRatingUnitedStates');

$mediaContentRatingUnitedStates->setMovieRating(new RatingUnitedStatesMoviesType('allBlocked'));

$mediaContentRatingUnitedStates->setTvRating(new RatingUnitedStatesTelevisionType('allBlocked'));


$requestBody->setMediaContentRatingUnitedStates($mediaContentRatingUnitedStates);
$networkUsageRulesIosNetworkUsageRule1 = new IosNetworkUsageRule();
$networkUsageRulesIosNetworkUsageRule1->setOdataType('microsoft.graph.iosNetworkUsageRule');

$managedAppsAppListItem1 = new AppListItem();
$managedAppsAppListItem1->setOdataType('microsoft.graph.appListItem');

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


$requestBody->setMediaContentRatingApps(new RatingAppsType('allBlocked'));

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

$requestBody->setSafariCookieSettings(new WebBrowserCookieSettings('blockAlways'));

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



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```