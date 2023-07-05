---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IosGeneralDeviceConfiguration
{
	OdataType = "#microsoft.graph.iosGeneralDeviceConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	AccountBlockModification = true,
	ActivationLockAllowWhenSupervised = true,
	AirDropBlocked = true,
	AirDropForceUnmanagedDropTarget = true,
	AirPlayForcePairingPasswordForOutgoingRequests = true,
	AppleWatchBlockPairing = true,
	AppleWatchForceWristDetection = true,
	AppleNewsBlocked = true,
	AppsSingleAppModeList = new List<AppListItem>
	{
		new AppListItem
		{
			OdataType = "microsoft.graph.appListItem",
			Name = "Name value",
			Publisher = "Publisher value",
			AppStoreUrl = "https://example.com/appStoreUrl/",
			AppId = "App Id value",
		},
	},
	AppsVisibilityList = new List<AppListItem>
	{
		new AppListItem
		{
			OdataType = "microsoft.graph.appListItem",
			Name = "Name value",
			Publisher = "Publisher value",
			AppStoreUrl = "https://example.com/appStoreUrl/",
			AppId = "App Id value",
		},
	},
	AppsVisibilityListType = AppListType.AppsInListCompliant,
	AppStoreBlockAutomaticDownloads = true,
	AppStoreBlocked = true,
	AppStoreBlockInAppPurchases = true,
	AppStoreBlockUIAppInstallation = true,
	AppStoreRequirePassword = true,
	BluetoothBlockModification = true,
	CameraBlocked = true,
	CellularBlockDataRoaming = true,
	CellularBlockGlobalBackgroundFetchWhileRoaming = true,
	CellularBlockPerAppDataModification = true,
	CellularBlockPersonalHotspot = true,
	CellularBlockVoiceRoaming = true,
	CertificatesBlockUntrustedTlsCertificates = true,
	ClassroomAppBlockRemoteScreenObservation = true,
	ClassroomAppForceUnpromptedScreenObservation = true,
	CompliantAppsList = new List<AppListItem>
	{
		new AppListItem
		{
			OdataType = "microsoft.graph.appListItem",
			Name = "Name value",
			Publisher = "Publisher value",
			AppStoreUrl = "https://example.com/appStoreUrl/",
			AppId = "App Id value",
		},
	},
	CompliantAppListType = AppListType.AppsInListCompliant,
	ConfigurationProfileBlockChanges = true,
	DefinitionLookupBlocked = true,
	DeviceBlockEnableRestrictions = true,
	DeviceBlockEraseContentAndSettings = true,
	DeviceBlockNameModification = true,
	DiagnosticDataBlockSubmission = true,
	DiagnosticDataBlockSubmissionModification = true,
	DocumentsBlockManagedDocumentsInUnmanagedApps = true,
	DocumentsBlockUnmanagedDocumentsInManagedApps = true,
	EmailInDomainSuffixes = new List<string>
	{
		"Email In Domain Suffixes value",
	},
	EnterpriseAppBlockTrust = true,
	EnterpriseAppBlockTrustModification = true,
	FaceTimeBlocked = true,
	FindMyFriendsBlocked = true,
	GamingBlockGameCenterFriends = true,
	GamingBlockMultiplayer = true,
	GameCenterBlocked = true,
	HostPairingBlocked = true,
	IBooksStoreBlocked = true,
	IBooksStoreBlockErotica = true,
	ICloudBlockActivityContinuation = true,
	ICloudBlockBackup = true,
	ICloudBlockDocumentSync = true,
	ICloudBlockManagedAppsSync = true,
	ICloudBlockPhotoLibrary = true,
	ICloudBlockPhotoStreamSync = true,
	ICloudBlockSharedPhotoStream = true,
	ICloudRequireEncryptedBackup = true,
	ITunesBlockExplicitContent = true,
	ITunesBlockMusicService = true,
	ITunesBlockRadio = true,
	KeyboardBlockAutoCorrect = true,
	KeyboardBlockDictation = true,
	KeyboardBlockPredictive = true,
	KeyboardBlockShortcuts = true,
	KeyboardBlockSpellCheck = true,
	KioskModeAllowAssistiveSpeak = true,
	KioskModeAllowAssistiveTouchSettings = true,
	KioskModeAllowAutoLock = true,
	KioskModeAllowColorInversionSettings = true,
	KioskModeAllowRingerSwitch = true,
	KioskModeAllowScreenRotation = true,
	KioskModeAllowSleepButton = true,
	KioskModeAllowTouchscreen = true,
	KioskModeAllowVoiceOverSettings = true,
	KioskModeAllowVolumeButtons = true,
	KioskModeAllowZoomSettings = true,
	KioskModeAppStoreUrl = "https://example.com/kioskModeAppStoreUrl/",
	KioskModeBuiltInAppId = "Kiosk Mode Built In App Id value",
	KioskModeRequireAssistiveTouch = true,
	KioskModeRequireColorInversion = true,
	KioskModeRequireMonoAudio = true,
	KioskModeRequireVoiceOver = true,
	KioskModeRequireZoom = true,
	KioskModeManagedAppId = "Kiosk Mode Managed App Id value",
	LockScreenBlockControlCenter = true,
	LockScreenBlockNotificationView = true,
	LockScreenBlockPassbook = true,
	LockScreenBlockTodayView = true,
	MediaContentRatingAustralia = new MediaContentRatingAustralia
	{
		OdataType = "microsoft.graph.mediaContentRatingAustralia",
		MovieRating = RatingAustraliaMoviesType.AllBlocked,
		TvRating = RatingAustraliaTelevisionType.AllBlocked,
	},
	MediaContentRatingCanada = new MediaContentRatingCanada
	{
		OdataType = "microsoft.graph.mediaContentRatingCanada",
		MovieRating = RatingCanadaMoviesType.AllBlocked,
		TvRating = RatingCanadaTelevisionType.AllBlocked,
	},
	MediaContentRatingFrance = new MediaContentRatingFrance
	{
		OdataType = "microsoft.graph.mediaContentRatingFrance",
		MovieRating = RatingFranceMoviesType.AllBlocked,
		TvRating = RatingFranceTelevisionType.AllBlocked,
	},
	MediaContentRatingGermany = new MediaContentRatingGermany
	{
		OdataType = "microsoft.graph.mediaContentRatingGermany",
		MovieRating = RatingGermanyMoviesType.AllBlocked,
		TvRating = RatingGermanyTelevisionType.AllBlocked,
	},
	MediaContentRatingIreland = new MediaContentRatingIreland
	{
		OdataType = "microsoft.graph.mediaContentRatingIreland",
		MovieRating = RatingIrelandMoviesType.AllBlocked,
		TvRating = RatingIrelandTelevisionType.AllBlocked,
	},
	MediaContentRatingJapan = new MediaContentRatingJapan
	{
		OdataType = "microsoft.graph.mediaContentRatingJapan",
		MovieRating = RatingJapanMoviesType.AllBlocked,
		TvRating = RatingJapanTelevisionType.AllBlocked,
	},
	MediaContentRatingNewZealand = new MediaContentRatingNewZealand
	{
		OdataType = "microsoft.graph.mediaContentRatingNewZealand",
		MovieRating = RatingNewZealandMoviesType.AllBlocked,
		TvRating = RatingNewZealandTelevisionType.AllBlocked,
	},
	MediaContentRatingUnitedKingdom = new MediaContentRatingUnitedKingdom
	{
		OdataType = "microsoft.graph.mediaContentRatingUnitedKingdom",
		MovieRating = RatingUnitedKingdomMoviesType.AllBlocked,
		TvRating = RatingUnitedKingdomTelevisionType.AllBlocked,
	},
	MediaContentRatingUnitedStates = new MediaContentRatingUnitedStates
	{
		OdataType = "microsoft.graph.mediaContentRatingUnitedStates",
		MovieRating = RatingUnitedStatesMoviesType.AllBlocked,
		TvRating = RatingUnitedStatesTelevisionType.AllBlocked,
	},
	NetworkUsageRules = new List<IosNetworkUsageRule>
	{
		new IosNetworkUsageRule
		{
			OdataType = "microsoft.graph.iosNetworkUsageRule",
			ManagedApps = new List<AppListItem>
			{
				new AppListItem
				{
					OdataType = "microsoft.graph.appListItem",
					Name = "Name value",
					Publisher = "Publisher value",
					AppStoreUrl = "https://example.com/appStoreUrl/",
					AppId = "App Id value",
				},
			},
			CellularDataBlockWhenRoaming = true,
			CellularDataBlocked = true,
		},
	},
	MediaContentRatingApps = RatingAppsType.AllBlocked,
	MessagesBlocked = true,
	NotificationsBlockSettingsModification = true,
	PasscodeBlockFingerprintUnlock = true,
	PasscodeBlockFingerprintModification = true,
	PasscodeBlockModification = true,
	PasscodeBlockSimple = true,
	PasscodeExpirationDays = 6,
	PasscodeMinimumLength = 5,
	PasscodeMinutesOfInactivityBeforeLock = 5,
	PasscodeMinutesOfInactivityBeforeScreenTimeout = 14,
	PasscodeMinimumCharacterSetCount = 0,
	PasscodePreviousPasscodeBlockCount = 2,
	PasscodeSignInFailureCountBeforeWipe = 4,
	PasscodeRequiredType = RequiredPasswordType.Alphanumeric,
	PasscodeRequired = true,
	PodcastsBlocked = true,
	SafariBlockAutofill = true,
	SafariBlockJavaScript = true,
	SafariBlockPopups = true,
	SafariBlocked = true,
	SafariCookieSettings = WebBrowserCookieSettings.BlockAlways,
	SafariManagedDomains = new List<string>
	{
		"Safari Managed Domains value",
	},
	SafariPasswordAutoFillDomains = new List<string>
	{
		"Safari Password Auto Fill Domains value",
	},
	SafariRequireFraudWarning = true,
	ScreenCaptureBlocked = true,
	SiriBlocked = true,
	SiriBlockedWhenLocked = true,
	SiriBlockUserGeneratedContent = true,
	SiriRequireProfanityFilter = true,
	SpotlightBlockInternetResults = true,
	VoiceDialingBlocked = true,
	WallpaperBlockModification = true,
	WiFiConnectOnlyToConfiguredNetworks = true,
};
var result = await graphClient.DeviceManagement.DeviceConfigurations["{deviceConfiguration-id}"].PatchAsync(requestBody);


```