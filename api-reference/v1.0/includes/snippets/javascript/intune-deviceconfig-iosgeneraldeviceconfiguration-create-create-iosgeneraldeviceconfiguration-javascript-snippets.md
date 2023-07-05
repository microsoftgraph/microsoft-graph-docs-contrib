---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.iosGeneralDeviceConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  accountBlockModification: true,
  activationLockAllowWhenSupervised: true,
  airDropBlocked: true,
  airDropForceUnmanagedDropTarget: true,
  airPlayForcePairingPasswordForOutgoingRequests: true,
  appleWatchBlockPairing: true,
  appleWatchForceWristDetection: true,
  appleNewsBlocked: true,
  appsSingleAppModeList: [
    {
      '@odata.type': 'microsoft.graph.appListItem',
      name: 'Name value',
      publisher: 'Publisher value',
      appStoreUrl: 'https://example.com/appStoreUrl/',
      appId: 'App Id value'
    }
  ],
  appsVisibilityList: [
    {
      '@odata.type': 'microsoft.graph.appListItem',
      name: 'Name value',
      publisher: 'Publisher value',
      appStoreUrl: 'https://example.com/appStoreUrl/',
      appId: 'App Id value'
    }
  ],
  appsVisibilityListType: 'appsInListCompliant',
  appStoreBlockAutomaticDownloads: true,
  appStoreBlocked: true,
  appStoreBlockInAppPurchases: true,
  appStoreBlockUIAppInstallation: true,
  appStoreRequirePassword: true,
  bluetoothBlockModification: true,
  cameraBlocked: true,
  cellularBlockDataRoaming: true,
  cellularBlockGlobalBackgroundFetchWhileRoaming: true,
  cellularBlockPerAppDataModification: true,
  cellularBlockPersonalHotspot: true,
  cellularBlockVoiceRoaming: true,
  certificatesBlockUntrustedTlsCertificates: true,
  classroomAppBlockRemoteScreenObservation: true,
  classroomAppForceUnpromptedScreenObservation: true,
  compliantAppsList: [
    {
      '@odata.type': 'microsoft.graph.appListItem',
      name: 'Name value',
      publisher: 'Publisher value',
      appStoreUrl: 'https://example.com/appStoreUrl/',
      appId: 'App Id value'
    }
  ],
  compliantAppListType: 'appsInListCompliant',
  configurationProfileBlockChanges: true,
  definitionLookupBlocked: true,
  deviceBlockEnableRestrictions: true,
  deviceBlockEraseContentAndSettings: true,
  deviceBlockNameModification: true,
  diagnosticDataBlockSubmission: true,
  diagnosticDataBlockSubmissionModification: true,
  documentsBlockManagedDocumentsInUnmanagedApps: true,
  documentsBlockUnmanagedDocumentsInManagedApps: true,
  emailInDomainSuffixes: [
    'Email In Domain Suffixes value'
  ],
  enterpriseAppBlockTrust: true,
  enterpriseAppBlockTrustModification: true,
  faceTimeBlocked: true,
  findMyFriendsBlocked: true,
  gamingBlockGameCenterFriends: true,
  gamingBlockMultiplayer: true,
  gameCenterBlocked: true,
  hostPairingBlocked: true,
  iBooksStoreBlocked: true,
  iBooksStoreBlockErotica: true,
  iCloudBlockActivityContinuation: true,
  iCloudBlockBackup: true,
  iCloudBlockDocumentSync: true,
  iCloudBlockManagedAppsSync: true,
  iCloudBlockPhotoLibrary: true,
  iCloudBlockPhotoStreamSync: true,
  iCloudBlockSharedPhotoStream: true,
  iCloudRequireEncryptedBackup: true,
  iTunesBlockExplicitContent: true,
  iTunesBlockMusicService: true,
  iTunesBlockRadio: true,
  keyboardBlockAutoCorrect: true,
  keyboardBlockDictation: true,
  keyboardBlockPredictive: true,
  keyboardBlockShortcuts: true,
  keyboardBlockSpellCheck: true,
  kioskModeAllowAssistiveSpeak: true,
  kioskModeAllowAssistiveTouchSettings: true,
  kioskModeAllowAutoLock: true,
  kioskModeAllowColorInversionSettings: true,
  kioskModeAllowRingerSwitch: true,
  kioskModeAllowScreenRotation: true,
  kioskModeAllowSleepButton: true,
  kioskModeAllowTouchscreen: true,
  kioskModeAllowVoiceOverSettings: true,
  kioskModeAllowVolumeButtons: true,
  kioskModeAllowZoomSettings: true,
  kioskModeAppStoreUrl: 'https://example.com/kioskModeAppStoreUrl/',
  kioskModeBuiltInAppId: 'Kiosk Mode Built In App Id value',
  kioskModeRequireAssistiveTouch: true,
  kioskModeRequireColorInversion: true,
  kioskModeRequireMonoAudio: true,
  kioskModeRequireVoiceOver: true,
  kioskModeRequireZoom: true,
  kioskModeManagedAppId: 'Kiosk Mode Managed App Id value',
  lockScreenBlockControlCenter: true,
  lockScreenBlockNotificationView: true,
  lockScreenBlockPassbook: true,
  lockScreenBlockTodayView: true,
  mediaContentRatingAustralia: {
    '@odata.type': 'microsoft.graph.mediaContentRatingAustralia',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingCanada: {
    '@odata.type': 'microsoft.graph.mediaContentRatingCanada',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingFrance: {
    '@odata.type': 'microsoft.graph.mediaContentRatingFrance',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingGermany: {
    '@odata.type': 'microsoft.graph.mediaContentRatingGermany',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingIreland: {
    '@odata.type': 'microsoft.graph.mediaContentRatingIreland',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingJapan: {
    '@odata.type': 'microsoft.graph.mediaContentRatingJapan',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingNewZealand: {
    '@odata.type': 'microsoft.graph.mediaContentRatingNewZealand',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingUnitedKingdom: {
    '@odata.type': 'microsoft.graph.mediaContentRatingUnitedKingdom',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  mediaContentRatingUnitedStates: {
    '@odata.type': 'microsoft.graph.mediaContentRatingUnitedStates',
    movieRating: 'allBlocked',
    tvRating: 'allBlocked'
  },
  networkUsageRules: [
    {
      '@odata.type': 'microsoft.graph.iosNetworkUsageRule',
      managedApps: [
        {
          '@odata.type': 'microsoft.graph.appListItem',
          name: 'Name value',
          publisher: 'Publisher value',
          appStoreUrl: 'https://example.com/appStoreUrl/',
          appId: 'App Id value'
        }
      ],
      cellularDataBlockWhenRoaming: true,
      cellularDataBlocked: true
    }
  ],
  mediaContentRatingApps: 'allBlocked',
  messagesBlocked: true,
  notificationsBlockSettingsModification: true,
  passcodeBlockFingerprintUnlock: true,
  passcodeBlockFingerprintModification: true,
  passcodeBlockModification: true,
  passcodeBlockSimple: true,
  passcodeExpirationDays: 6,
  passcodeMinimumLength: 5,
  passcodeMinutesOfInactivityBeforeLock: 5,
  passcodeMinutesOfInactivityBeforeScreenTimeout: 14,
  passcodeMinimumCharacterSetCount: 0,
  passcodePreviousPasscodeBlockCount: 2,
  passcodeSignInFailureCountBeforeWipe: 4,
  passcodeRequiredType: 'alphanumeric',
  passcodeRequired: true,
  podcastsBlocked: true,
  safariBlockAutofill: true,
  safariBlockJavaScript: true,
  safariBlockPopups: true,
  safariBlocked: true,
  safariCookieSettings: 'blockAlways',
  safariManagedDomains: [
    'Safari Managed Domains value'
  ],
  safariPasswordAutoFillDomains: [
    'Safari Password Auto Fill Domains value'
  ],
  safariRequireFraudWarning: true,
  screenCaptureBlocked: true,
  siriBlocked: true,
  siriBlockedWhenLocked: true,
  siriBlockUserGeneratedContent: true,
  siriRequireProfanityFilter: true,
  spotlightBlockInternetResults: true,
  voiceDialingBlocked: true,
  wallpaperBlockModification: true,
  wiFiConnectOnlyToConfiguredNetworks: true
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```