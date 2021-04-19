---
title: "windows10GeneralConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# windows10GeneralConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [deviceConfiguration](../resources/deviceconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windows10GeneralConfiguration](../api/windows10generalconfiguration-list.md)|[windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) collection|Get a list of the [windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) objects and their properties.|
|[Create windows10GeneralConfiguration](../api/windows10generalconfiguration-create.md)|[windows10GeneralConfiguration](../resources/windows10generalconfiguration.md)|Create a new [windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) object.|
|[Get windows10GeneralConfiguration](../api/windows10generalconfiguration-get.md)|[windows10GeneralConfiguration](../resources/windows10generalconfiguration.md)|Read the properties and relationships of a [windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) object.|
|[Update windows10GeneralConfiguration](../api/windows10generalconfiguration-update.md)|[windows10GeneralConfiguration](../resources/windows10generalconfiguration.md)|Update the properties of a [windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) object.|
|[Delete windows10GeneralConfiguration](../api/windows10generalconfiguration-delete.md)|None|Deletes a [windows10GeneralConfiguration](../resources/windows10generalconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountsBlockAddingNonMicrosoftAccountEmail|Boolean|**TODO: Add Description**|
|activateAppsWithVoice|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|antiTheftModeBlocked|Boolean|**TODO: Add Description**|
|appManagementMSIAllowUserControlOverInstall|Boolean|**TODO: Add Description**|
|appManagementMSIAlwaysInstallWithElevatedPrivileges|Boolean|**TODO: Add Description**|
|appManagementPackageFamilyNamesToLaunchAfterLogOn|String collection|**TODO: Add Description**|
|appsAllowTrustedAppsSideloading|stateManagementSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|appsBlockWindowsStoreOriginatedApps|Boolean|**TODO: Add Description**|
|authenticationAllowSecondaryDevice|Boolean|**TODO: Add Description**|
|authenticationPreferredAzureADTenantDomainName|String|**TODO: Add Description**|
|authenticationWebSignIn|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|bluetoothAllowedServices|String collection|**TODO: Add Description**|
|bluetoothBlockAdvertising|Boolean|**TODO: Add Description**|
|bluetoothBlockDiscoverableMode|Boolean|**TODO: Add Description**|
|bluetoothBlocked|Boolean|**TODO: Add Description**|
|bluetoothBlockPrePairing|Boolean|**TODO: Add Description**|
|bluetoothBlockPromptedProximalConnections|Boolean|**TODO: Add Description**|
|cameraBlocked|Boolean|**TODO: Add Description**|
|cellularBlockDataWhenRoaming|Boolean|**TODO: Add Description**|
|cellularBlockVpn|Boolean|**TODO: Add Description**|
|cellularBlockVpnWhenRoaming|Boolean|**TODO: Add Description**|
|cellularData|configurationUsage|**TODO: Add Description**. Possible values are: `blocked`, `required`, `allowed`, `notConfigured`.|
|certificatesBlockManualRootCertificateInstallation|Boolean|**TODO: Add Description**|
|configureTimeZone|String|**TODO: Add Description**|
|connectedDevicesServiceBlocked|Boolean|**TODO: Add Description**|
|copyPasteBlocked|Boolean|**TODO: Add Description**|
|cortanaBlocked|Boolean|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|cryptographyAllowFipsAlgorithmPolicy|Boolean|**TODO: Add Description**|
|dataProtectionBlockDirectMemoryAccess|Boolean|**TODO: Add Description**|
|defenderBlockEndUserAccess|Boolean|**TODO: Add Description**|
|defenderBlockOnAccessProtection|Boolean|**TODO: Add Description**|
|defenderCloudBlockLevel|defenderCloudBlockLevelType|**TODO: Add Description**. Possible values are: `notConfigured`, `high`, `highPlus`, `zeroTolerance`.|
|defenderCloudExtendedTimeout|Int32|**TODO: Add Description**|
|defenderCloudExtendedTimeoutInSeconds|Int32|**TODO: Add Description**|
|defenderDaysBeforeDeletingQuarantinedMalware|Int32|**TODO: Add Description**|
|defenderDetectedMalwareActions|[defenderDetectedMalwareActions](../resources/intune-defenderdetectedmalwareactions.md)|**TODO: Add Description**|
|defenderDisableCatchupFullScan|Boolean|**TODO: Add Description**|
|defenderDisableCatchupQuickScan|Boolean|**TODO: Add Description**|
|defenderFileExtensionsToExclude|String collection|**TODO: Add Description**|
|defenderFilesAndFoldersToExclude|String collection|**TODO: Add Description**|
|defenderMonitorFileActivity|defenderMonitorFileActivity|**TODO: Add Description**. Possible values are: `userDefined`, `disable`, `monitorAllFiles`, `monitorIncomingFilesOnly`, `monitorOutgoingFilesOnly`.|
|defenderPotentiallyUnwantedAppAction|defenderPotentiallyUnwantedAppAction|**TODO: Add Description**. Possible values are: `deviceDefault`, `block`, `audit`.|
|defenderPotentiallyUnwantedAppActionSetting|defenderProtectionType|**TODO: Add Description**. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderProcessesToExclude|String collection|**TODO: Add Description**|
|defenderPromptForSampleSubmission|defenderPromptForSampleSubmission|**TODO: Add Description**. Possible values are: `userDefined`, `alwaysPrompt`, `promptBeforeSendingPersonalData`, `neverSendData`, `sendAllDataWithoutPrompting`.|
|defenderRequireBehaviorMonitoring|Boolean|**TODO: Add Description**|
|defenderRequireCloudProtection|Boolean|**TODO: Add Description**|
|defenderRequireNetworkInspectionSystem|Boolean|**TODO: Add Description**|
|defenderRequireRealTimeMonitoring|Boolean|**TODO: Add Description**|
|defenderScanArchiveFiles|Boolean|**TODO: Add Description**|
|defenderScanDownloads|Boolean|**TODO: Add Description**|
|defenderScanIncomingMail|Boolean|**TODO: Add Description**|
|defenderScanMappedNetworkDrivesDuringFullScan|Boolean|**TODO: Add Description**|
|defenderScanMaxCpu|Int32|**TODO: Add Description**|
|defenderScanNetworkFiles|Boolean|**TODO: Add Description**|
|defenderScanRemovableDrivesDuringFullScan|Boolean|**TODO: Add Description**|
|defenderScanScriptsLoadedInInternetExplorer|Boolean|**TODO: Add Description**|
|defenderScanType|defenderScanType|**TODO: Add Description**. Possible values are: `userDefined`, `disabled`, `quick`, `full`.|
|defenderScheduledQuickScanTime|TimeOfDay|**TODO: Add Description**|
|defenderScheduledScanTime|TimeOfDay|**TODO: Add Description**|
|defenderScheduleScanEnableLowCpuPriority|Boolean|**TODO: Add Description**|
|defenderSignatureUpdateIntervalInHours|Int32|**TODO: Add Description**|
|defenderSubmitSamplesConsentType|defenderSubmitSamplesConsentType|**TODO: Add Description**. Possible values are: `sendSafeSamplesAutomatically`, `alwaysPrompt`, `neverSend`, `sendAllSamplesAutomatically`.|
|defenderSystemScanSchedule|weeklySchedule|**TODO: Add Description**. Possible values are: `userDefined`, `everyday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `noScheduledScan`.|
|description|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|developerUnlockSetting|stateManagementSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-devicemanagementapplicabilityruledevicemode.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-devicemanagementapplicabilityruleosedition.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-devicemanagementapplicabilityruleosversion.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|deviceManagementBlockFactoryResetOnMobile|Boolean|**TODO: Add Description**|
|deviceManagementBlockManualUnenroll|Boolean|**TODO: Add Description**|
|diagnosticsDataSubmissionMode|diagnosticDataSubmissionMode|**TODO: Add Description**. Possible values are: `userDefined`, `none`, `basic`, `enhanced`, `full`.|
|displayAppListWithGdiDPIScalingTurnedOff|String collection|**TODO: Add Description**|
|displayAppListWithGdiDPIScalingTurnedOn|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|edgeAllowStartPagesModification|Boolean|**TODO: Add Description**|
|edgeBlockAccessToAboutFlags|Boolean|**TODO: Add Description**|
|edgeBlockAddressBarDropdown|Boolean|**TODO: Add Description**|
|edgeBlockAutofill|Boolean|**TODO: Add Description**|
|edgeBlockCompatibilityList|Boolean|**TODO: Add Description**|
|edgeBlockDeveloperTools|Boolean|**TODO: Add Description**|
|edgeBlocked|Boolean|**TODO: Add Description**|
|edgeBlockEditFavorites|Boolean|**TODO: Add Description**|
|edgeBlockExtensions|Boolean|**TODO: Add Description**|
|edgeBlockFullScreenMode|Boolean|**TODO: Add Description**|
|edgeBlockInPrivateBrowsing|Boolean|**TODO: Add Description**|
|edgeBlockJavaScript|Boolean|**TODO: Add Description**|
|edgeBlockLiveTileDataCollection|Boolean|**TODO: Add Description**|
|edgeBlockPasswordManager|Boolean|**TODO: Add Description**|
|edgeBlockPopups|Boolean|**TODO: Add Description**|
|edgeBlockPrelaunch|Boolean|**TODO: Add Description**|
|edgeBlockPrinting|Boolean|**TODO: Add Description**|
|edgeBlockSavingHistory|Boolean|**TODO: Add Description**|
|edgeBlockSearchEngineCustomization|Boolean|**TODO: Add Description**|
|edgeBlockSearchSuggestions|Boolean|**TODO: Add Description**|
|edgeBlockSendingDoNotTrackHeader|Boolean|**TODO: Add Description**|
|edgeBlockSendingIntranetTrafficToInternetExplorer|Boolean|**TODO: Add Description**|
|edgeBlockSideloadingExtensions|Boolean|**TODO: Add Description**|
|edgeBlockTabPreloading|Boolean|**TODO: Add Description**|
|edgeBlockWebContentOnNewTabPage|Boolean|**TODO: Add Description**|
|edgeClearBrowsingDataOnExit|Boolean|**TODO: Add Description**|
|edgeCookiePolicy|edgeCookiePolicy|**TODO: Add Description**. Possible values are: `userDefined`, `allow`, `blockThirdParty`, `blockAll`.|
|edgeDisableFirstRunPage|Boolean|**TODO: Add Description**|
|edgeEnterpriseModeSiteListLocation|String|**TODO: Add Description**|
|edgeFavoritesBarVisibility|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|edgeFavoritesListLocation|String|**TODO: Add Description**|
|edgeFirstRunUrl|String|**TODO: Add Description**|
|edgeHomeButtonConfiguration|[edgeHomeButtonConfiguration](../resources/intune-edgehomebuttonconfiguration.md)|**TODO: Add Description**|
|edgeHomeButtonConfigurationEnabled|Boolean|**TODO: Add Description**|
|edgeHomepageUrls|String collection|**TODO: Add Description**|
|edgeKioskModeRestriction|edgeKioskModeRestrictionType|**TODO: Add Description**. Possible values are: `notConfigured`, `digitalSignage`, `normalMode`, `publicBrowsingSingleApp`, `publicBrowsingMultiApp`.|
|edgeKioskResetAfterIdleTimeInMinutes|Int32|**TODO: Add Description**|
|edgeNewTabPageURL|String|**TODO: Add Description**|
|edgeOpensWith|edgeOpenOptions|**TODO: Add Description**. Possible values are: `notConfigured`, `startPage`, `newTabPage`, `previousPages`, `specificPages`.|
|edgePreventCertificateErrorOverride|Boolean|**TODO: Add Description**|
|edgeRequiredExtensionPackageFamilyNames|String collection|**TODO: Add Description**|
|edgeRequireSmartScreen|Boolean|**TODO: Add Description**|
|edgeSearchEngine|[edgeSearchEngineBase](../resources/intune-edgesearchenginebase.md)|**TODO: Add Description**|
|edgeSendIntranetTrafficToInternetExplorer|Boolean|**TODO: Add Description**|
|edgeShowMessageWhenOpeningInternetExplorerSites|internetExplorerMessageSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `disabled`, `enabled`, `keepGoing`.|
|edgeSyncFavoritesWithInternetExplorer|Boolean|**TODO: Add Description**|
|edgeTelemetryForMicrosoft365Analytics|edgeTelemetryMode|**TODO: Add Description**. Possible values are: `notConfigured`, `intranet`, `internet`, `intranetAndInternet`.|
|enableAutomaticRedeployment|Boolean|**TODO: Add Description**|
|energySaverOnBatteryThresholdPercentage|Int32|**TODO: Add Description**|
|energySaverPluggedInThresholdPercentage|Int32|**TODO: Add Description**|
|enterpriseCloudPrintDiscoveryEndPoint|String|**TODO: Add Description**|
|enterpriseCloudPrintDiscoveryMaxLimit|Int32|**TODO: Add Description**|
|enterpriseCloudPrintMopriaDiscoveryResourceIdentifier|String|**TODO: Add Description**|
|enterpriseCloudPrintOAuthAuthority|String|**TODO: Add Description**|
|enterpriseCloudPrintOAuthClientIdentifier|String|**TODO: Add Description**|
|enterpriseCloudPrintResourceIdentifier|String|**TODO: Add Description**|
|experienceBlockDeviceDiscovery|Boolean|**TODO: Add Description**|
|experienceBlockErrorDialogWhenNoSIM|Boolean|**TODO: Add Description**|
|experienceBlockTaskSwitcher|Boolean|**TODO: Add Description**|
|experienceDoNotSyncBrowserSettings|browserSyncSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `blockedWithUserOverride`, `blocked`.|
|findMyFiles|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|gameDvrBlocked|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|inkWorkspaceAccess|inkAccessSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|inkWorkspaceAccessState|stateManagementSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|inkWorkspaceBlockSuggestedApps|Boolean|**TODO: Add Description**|
|internetSharingBlocked|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|locationServicesBlocked|Boolean|**TODO: Add Description**|
|lockScreenActivateAppsWithVoice|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|lockScreenAllowTimeoutConfiguration|Boolean|**TODO: Add Description**|
|lockScreenBlockActionCenterNotifications|Boolean|**TODO: Add Description**|
|lockScreenBlockCortana|Boolean|**TODO: Add Description**|
|lockScreenBlockToastNotifications|Boolean|**TODO: Add Description**|
|lockScreenTimeoutInSeconds|Int32|**TODO: Add Description**|
|logonBlockFastUserSwitching|Boolean|**TODO: Add Description**|
|messagingBlockMMS|Boolean|**TODO: Add Description**|
|messagingBlockRichCommunicationServices|Boolean|**TODO: Add Description**|
|messagingBlockSync|Boolean|**TODO: Add Description**|
|microsoftAccountBlocked|Boolean|**TODO: Add Description**|
|microsoftAccountBlockSettingsSync|Boolean|**TODO: Add Description**|
|microsoftAccountSignInAssistantSettings|signInAssistantOptions|**TODO: Add Description**. Possible values are: `notConfigured`, `disabled`.|
|networkProxyApplySettingsDeviceWide|Boolean|**TODO: Add Description**|
|networkProxyAutomaticConfigurationUrl|String|**TODO: Add Description**|
|networkProxyDisableAutoDetect|Boolean|**TODO: Add Description**|
|networkProxyServer|[windows10NetworkProxyServer](../resources/intune-windows10networkproxyserver.md)|**TODO: Add Description**|
|nfcBlocked|Boolean|**TODO: Add Description**|
|oneDriveDisableFileSync|Boolean|**TODO: Add Description**|
|passwordBlockSimple|Boolean|**TODO: Add Description**|
|passwordExpirationDays|Int32|**TODO: Add Description**|
|passwordMinimumAgeInDays|Int32|**TODO: Add Description**|
|passwordMinimumCharacterSetCount|Int32|**TODO: Add Description**|
|passwordMinimumLength|Int32|**TODO: Add Description**|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|**TODO: Add Description**|
|passwordPreviousPasswordBlockCount|Int32|**TODO: Add Description**|
|passwordRequired|Boolean|**TODO: Add Description**|
|passwordRequiredType|requiredPasswordType|**TODO: Add Description**. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passwordRequireWhenResumeFromIdleState|Boolean|**TODO: Add Description**|
|passwordSignInFailureCountBeforeFactoryReset|Int32|**TODO: Add Description**|
|personalizationDesktopImageUrl|String|**TODO: Add Description**|
|personalizationLockScreenImageUrl|String|**TODO: Add Description**|
|powerButtonActionOnBattery|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|powerButtonActionPluggedIn|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|powerHybridSleepOnBattery|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|powerHybridSleepPluggedIn|enablement|**TODO: Add Description**. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|powerLidCloseActionOnBattery|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|powerLidCloseActionPluggedIn|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|powerSleepButtonActionOnBattery|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|powerSleepButtonActionPluggedIn|powerActionType|**TODO: Add Description**. Possible values are: `notConfigured`, `noAction`, `sleep`, `hibernate`, `shutdown`.|
|printerBlockAddition|Boolean|**TODO: Add Description**|
|printerDefaultName|String|**TODO: Add Description**|
|printerNames|String collection|**TODO: Add Description**|
|privacyAdvertisingId|stateManagementSetting|**TODO: Add Description**. Possible values are: `notConfigured`, `blocked`, `allowed`.|
|privacyAutoAcceptPairingAndConsentPrompts|Boolean|**TODO: Add Description**|
|privacyBlockActivityFeed|Boolean|**TODO: Add Description**|
|privacyBlockInputPersonalization|Boolean|**TODO: Add Description**|
|privacyBlockPublishUserActivities|Boolean|**TODO: Add Description**|
|privacyDisableLaunchExperience|Boolean|**TODO: Add Description**|
|resetProtectionModeBlocked|Boolean|**TODO: Add Description**|
|roleScopeTagIds|String collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|safeSearchFilter|safeSearchFilterType|**TODO: Add Description**. Possible values are: `userDefined`, `strict`, `moderate`.|
|screenCaptureBlocked|Boolean|**TODO: Add Description**|
|searchBlockDiacritics|Boolean|**TODO: Add Description**|
|searchBlockWebResults|Boolean|**TODO: Add Description**|
|searchDisableAutoLanguageDetection|Boolean|**TODO: Add Description**|
|searchDisableIndexerBackoff|Boolean|**TODO: Add Description**|
|searchDisableIndexingEncryptedItems|Boolean|**TODO: Add Description**|
|searchDisableIndexingRemovableDrive|Boolean|**TODO: Add Description**|
|searchDisableLocation|Boolean|**TODO: Add Description**|
|searchDisableUseLocation|Boolean|**TODO: Add Description**|
|searchEnableAutomaticIndexSizeManangement|Boolean|**TODO: Add Description**|
|searchEnableRemoteQueries|Boolean|**TODO: Add Description**|
|securityBlockAzureADJoinedDevicesAutoEncryption|Boolean|**TODO: Add Description**|
|settingsBlockAccountsPage|Boolean|**TODO: Add Description**|
|settingsBlockAddProvisioningPackage|Boolean|**TODO: Add Description**|
|settingsBlockAppsPage|Boolean|**TODO: Add Description**|
|settingsBlockChangeLanguage|Boolean|**TODO: Add Description**|
|settingsBlockChangePowerSleep|Boolean|**TODO: Add Description**|
|settingsBlockChangeRegion|Boolean|**TODO: Add Description**|
|settingsBlockChangeSystemTime|Boolean|**TODO: Add Description**|
|settingsBlockDevicesPage|Boolean|**TODO: Add Description**|
|settingsBlockEaseOfAccessPage|Boolean|**TODO: Add Description**|
|settingsBlockEditDeviceName|Boolean|**TODO: Add Description**|
|settingsBlockGamingPage|Boolean|**TODO: Add Description**|
|settingsBlockNetworkInternetPage|Boolean|**TODO: Add Description**|
|settingsBlockPersonalizationPage|Boolean|**TODO: Add Description**|
|settingsBlockPrivacyPage|Boolean|**TODO: Add Description**|
|settingsBlockRemoveProvisioningPackage|Boolean|**TODO: Add Description**|
|settingsBlockSettingsApp|Boolean|**TODO: Add Description**|
|settingsBlockSystemPage|Boolean|**TODO: Add Description**|
|settingsBlockTimeLanguagePage|Boolean|**TODO: Add Description**|
|settingsBlockUpdateSecurityPage|Boolean|**TODO: Add Description**|
|sharedUserAppDataAllowed|Boolean|**TODO: Add Description**|
|smartScreenAppInstallControl|appInstallControlType|**TODO: Add Description**. Possible values are: `notConfigured`, `anywhere`, `storeOnly`, `recommendations`, `preferStore`.|
|smartScreenBlockPromptOverride|Boolean|**TODO: Add Description**|
|smartScreenBlockPromptOverrideForFiles|Boolean|**TODO: Add Description**|
|smartScreenEnableAppInstallControl|Boolean|**TODO: Add Description**|
|startBlockUnpinningAppsFromTaskbar|Boolean|**TODO: Add Description**|
|startMenuAppListVisibility|windowsStartMenuAppListVisibilityType|**TODO: Add Description**. Possible values are: `userDefined`, `collapse`, `remove`, `disableSettingsApp`.|
|startMenuHideChangeAccountSettings|Boolean|**TODO: Add Description**|
|startMenuHideFrequentlyUsedApps|Boolean|**TODO: Add Description**|
|startMenuHideHibernate|Boolean|**TODO: Add Description**|
|startMenuHideLock|Boolean|**TODO: Add Description**|
|startMenuHidePowerButton|Boolean|**TODO: Add Description**|
|startMenuHideRecentJumpLists|Boolean|**TODO: Add Description**|
|startMenuHideRecentlyAddedApps|Boolean|**TODO: Add Description**|
|startMenuHideRestartOptions|Boolean|**TODO: Add Description**|
|startMenuHideShutDown|Boolean|**TODO: Add Description**|
|startMenuHideSignOut|Boolean|**TODO: Add Description**|
|startMenuHideSleep|Boolean|**TODO: Add Description**|
|startMenuHideSwitchAccount|Boolean|**TODO: Add Description**|
|startMenuHideUserTile|Boolean|**TODO: Add Description**|
|startMenuLayoutEdgeAssetsXml|Binary|**TODO: Add Description**|
|startMenuLayoutXml|Binary|**TODO: Add Description**|
|startMenuMode|windowsStartMenuModeType|**TODO: Add Description**. Possible values are: `userDefined`, `fullScreen`, `nonFullScreen`.|
|startMenuPinnedFolderDocuments|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderDownloads|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderFileExplorer|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderHomeGroup|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderMusic|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderNetwork|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderPersonalFolder|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderPictures|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderSettings|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|startMenuPinnedFolderVideos|visibilitySetting|**TODO: Add Description**. Possible values are: `notConfigured`, `hide`, `show`.|
|storageBlockRemovableStorage|Boolean|**TODO: Add Description**|
|storageRequireMobileDeviceEncryption|Boolean|**TODO: Add Description**|
|storageRestrictAppDataToSystemVolume|Boolean|**TODO: Add Description**|
|storageRestrictAppInstallToSystemVolume|Boolean|**TODO: Add Description**|
|supportsScopeTags|Boolean|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|systemTelemetryProxyServer|String|**TODO: Add Description**|
|taskManagerBlockEndTask|Boolean|**TODO: Add Description**|
|tenantLockdownRequireNetworkDuringOutOfBoxExperience|Boolean|**TODO: Add Description**|
|uninstallBuiltInApps|Boolean|**TODO: Add Description**|
|usbBlocked|Boolean|**TODO: Add Description**|
|version|Int32|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|voiceRecordingBlocked|Boolean|**TODO: Add Description**|
|webRtcBlockLocalhostIpAddress|Boolean|**TODO: Add Description**|
|wiFiBlockAutomaticConnectHotspots|Boolean|**TODO: Add Description**|
|wiFiBlocked|Boolean|**TODO: Add Description**|
|wiFiBlockManualConfiguration|Boolean|**TODO: Add Description**|
|wiFiScanInterval|Int32|**TODO: Add Description**|
|windows10AppsForceUpdateSchedule|[windows10AppsForceUpdateSchedule](../resources/intune-windows10appsforceupdateschedule.md)|**TODO: Add Description**|
|windowsSpotlightBlockConsumerSpecificFeatures|Boolean|**TODO: Add Description**|
|windowsSpotlightBlocked|Boolean|**TODO: Add Description**|
|windowsSpotlightBlockOnActionCenter|Boolean|**TODO: Add Description**|
|windowsSpotlightBlockTailoredExperiences|Boolean|**TODO: Add Description**|
|windowsSpotlightBlockThirdPartyNotifications|Boolean|**TODO: Add Description**|
|windowsSpotlightBlockWelcomeExperience|Boolean|**TODO: Add Description**|
|windowsSpotlightBlockWindowsTips|Boolean|**TODO: Add Description**|
|windowsSpotlightConfigureOnLockScreen|windowsSpotlightEnablementSettings|**TODO: Add Description**. Possible values are: `notConfigured`, `disabled`, `enabled`.|
|windowsStoreBlockAutoUpdate|Boolean|**TODO: Add Description**|
|windowsStoreBlocked|Boolean|**TODO: Add Description**|
|windowsStoreEnablePrivateStoreOnly|Boolean|**TODO: Add Description**|
|wirelessDisplayBlockProjectionToThisDevice|Boolean|**TODO: Add Description**|
|wirelessDisplayBlockUserInputFromReceiver|Boolean|**TODO: Add Description**|
|wirelessDisplayRequirePinForPairing|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfigurationassignment.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-settingstatedevicesummary.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfigurationdevicestatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfigurationdeviceoverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfigurationgroupassignment.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|privacyAccessControls|[windowsPrivacyDataAccessControlItem](../resources/intune-windowsprivacydataaccesscontrolitem.md) collection|**TODO: Add Description**|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfigurationuserstatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfigurationuseroverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10GeneralConfiguration",
  "baseType": "microsoft.graph.deviceConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10GeneralConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": "Boolean",
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": "Integer",
  "taskManagerBlockEndTask": "Boolean",
  "energySaverOnBatteryThresholdPercentage": "Integer",
  "energySaverPluggedInThresholdPercentage": "Integer",
  "powerLidCloseActionOnBattery": "String",
  "powerLidCloseActionPluggedIn": "String",
  "powerButtonActionOnBattery": "String",
  "powerButtonActionPluggedIn": "String",
  "powerSleepButtonActionOnBattery": "String",
  "powerSleepButtonActionPluggedIn": "String",
  "powerHybridSleepOnBattery": "String",
  "powerHybridSleepPluggedIn": "String",
  "windows10AppsForceUpdateSchedule": {
    "@odata.type": "microsoft.graph.windows10AppsForceUpdateSchedule"
  },
  "enableAutomaticRedeployment": "Boolean",
  "microsoftAccountSignInAssistantSettings": "String",
  "authenticationAllowSecondaryDevice": "Boolean",
  "authenticationWebSignIn": "String",
  "authenticationPreferredAzureADTenantDomainName": "String",
  "cryptographyAllowFipsAlgorithmPolicy": "Boolean",
  "displayAppListWithGdiDPIScalingTurnedOn": [
    "String"
  ],
  "displayAppListWithGdiDPIScalingTurnedOff": [
    "String"
  ],
  "enterpriseCloudPrintDiscoveryEndPoint": "String",
  "enterpriseCloudPrintOAuthAuthority": "String",
  "enterpriseCloudPrintOAuthClientIdentifier": "String",
  "enterpriseCloudPrintResourceIdentifier": "String",
  "enterpriseCloudPrintDiscoveryMaxLimit": "Integer",
  "enterpriseCloudPrintMopriaDiscoveryResourceIdentifier": "String",
  "experienceDoNotSyncBrowserSettings": "String",
  "messagingBlockSync": "Boolean",
  "messagingBlockMMS": "Boolean",
  "messagingBlockRichCommunicationServices": "Boolean",
  "printerNames": [
    "String"
  ],
  "printerDefaultName": "String",
  "printerBlockAddition": "Boolean",
  "searchBlockDiacritics": "Boolean",
  "searchDisableAutoLanguageDetection": "Boolean",
  "searchDisableIndexingEncryptedItems": "Boolean",
  "searchEnableRemoteQueries": "Boolean",
  "searchDisableUseLocation": "Boolean",
  "searchDisableLocation": "Boolean",
  "searchDisableIndexerBackoff": "Boolean",
  "searchDisableIndexingRemovableDrive": "Boolean",
  "searchEnableAutomaticIndexSizeManangement": "Boolean",
  "searchBlockWebResults": "Boolean",
  "findMyFiles": "String",
  "securityBlockAzureADJoinedDevicesAutoEncryption": "Boolean",
  "diagnosticsDataSubmissionMode": "String",
  "oneDriveDisableFileSync": "Boolean",
  "systemTelemetryProxyServer": "String",
  "edgeTelemetryForMicrosoft365Analytics": "String",
  "inkWorkspaceAccess": "String",
  "inkWorkspaceAccessState": "String",
  "inkWorkspaceBlockSuggestedApps": "Boolean",
  "smartScreenEnableAppInstallControl": "Boolean",
  "smartScreenAppInstallControl": "String",
  "personalizationDesktopImageUrl": "String",
  "personalizationLockScreenImageUrl": "String",
  "bluetoothAllowedServices": [
    "String"
  ],
  "bluetoothBlockAdvertising": "Boolean",
  "bluetoothBlockPromptedProximalConnections": "Boolean",
  "bluetoothBlockDiscoverableMode": "Boolean",
  "bluetoothBlockPrePairing": "Boolean",
  "edgeBlockAutofill": "Boolean",
  "edgeBlocked": "Boolean",
  "edgeCookiePolicy": "String",
  "edgeBlockDeveloperTools": "Boolean",
  "edgeBlockSendingDoNotTrackHeader": "Boolean",
  "edgeBlockExtensions": "Boolean",
  "edgeBlockInPrivateBrowsing": "Boolean",
  "edgeBlockJavaScript": "Boolean",
  "edgeBlockPasswordManager": "Boolean",
  "edgeBlockAddressBarDropdown": "Boolean",
  "edgeBlockCompatibilityList": "Boolean",
  "edgeClearBrowsingDataOnExit": "Boolean",
  "edgeAllowStartPagesModification": "Boolean",
  "edgeDisableFirstRunPage": "Boolean",
  "edgeBlockLiveTileDataCollection": "Boolean",
  "edgeSyncFavoritesWithInternetExplorer": "Boolean",
  "edgeFavoritesListLocation": "String",
  "edgeBlockEditFavorites": "Boolean",
  "edgeNewTabPageURL": "String",
  "edgeHomeButtonConfiguration": {
    "@odata.type": "microsoft.graph.edgeHomeButtonConfiguration"
  },
  "edgeHomeButtonConfigurationEnabled": "Boolean",
  "edgeOpensWith": "String",
  "edgeBlockSideloadingExtensions": "Boolean",
  "edgeRequiredExtensionPackageFamilyNames": [
    "String"
  ],
  "edgeBlockPrinting": "Boolean",
  "edgeFavoritesBarVisibility": "String",
  "edgeBlockSavingHistory": "Boolean",
  "edgeBlockFullScreenMode": "Boolean",
  "edgeBlockWebContentOnNewTabPage": "Boolean",
  "edgeBlockTabPreloading": "Boolean",
  "edgeBlockPrelaunch": "Boolean",
  "edgeShowMessageWhenOpeningInternetExplorerSites": "String",
  "edgePreventCertificateErrorOverride": "Boolean",
  "edgeKioskModeRestriction": "String",
  "edgeKioskResetAfterIdleTimeInMinutes": "Integer",
  "cellularBlockDataWhenRoaming": "Boolean",
  "cellularBlockVpn": "Boolean",
  "cellularBlockVpnWhenRoaming": "Boolean",
  "cellularData": "String",
  "defenderRequireRealTimeMonitoring": "Boolean",
  "defenderRequireBehaviorMonitoring": "Boolean",
  "defenderRequireNetworkInspectionSystem": "Boolean",
  "defenderScanDownloads": "Boolean",
  "defenderScheduleScanEnableLowCpuPriority": "Boolean",
  "defenderDisableCatchupQuickScan": "Boolean",
  "defenderDisableCatchupFullScan": "Boolean",
  "defenderScanScriptsLoadedInInternetExplorer": "Boolean",
  "defenderBlockEndUserAccess": "Boolean",
  "defenderSignatureUpdateIntervalInHours": "Integer",
  "defenderMonitorFileActivity": "String",
  "defenderDaysBeforeDeletingQuarantinedMalware": "Integer",
  "defenderScanMaxCpu": "Integer",
  "defenderScanArchiveFiles": "Boolean",
  "defenderScanIncomingMail": "Boolean",
  "defenderScanRemovableDrivesDuringFullScan": "Boolean",
  "defenderScanMappedNetworkDrivesDuringFullScan": "Boolean",
  "defenderScanNetworkFiles": "Boolean",
  "defenderRequireCloudProtection": "Boolean",
  "defenderCloudBlockLevel": "String",
  "defenderCloudExtendedTimeout": "Integer",
  "defenderCloudExtendedTimeoutInSeconds": "Integer",
  "defenderPromptForSampleSubmission": "String",
  "defenderScheduledQuickScanTime": "String (time of day)",
  "defenderScanType": "String",
  "defenderSystemScanSchedule": "String",
  "defenderScheduledScanTime": "String (time of day)",
  "defenderPotentiallyUnwantedAppAction": "String",
  "defenderPotentiallyUnwantedAppActionSetting": "String",
  "defenderSubmitSamplesConsentType": "String",
  "defenderBlockOnAccessProtection": "Boolean",
  "defenderDetectedMalwareActions": {
    "@odata.type": "microsoft.graph.defenderDetectedMalwareActions"
  },
  "defenderFileExtensionsToExclude": [
    "String"
  ],
  "defenderFilesAndFoldersToExclude": [
    "String"
  ],
  "defenderProcessesToExclude": [
    "String"
  ],
  "lockScreenAllowTimeoutConfiguration": "Boolean",
  "lockScreenBlockActionCenterNotifications": "Boolean",
  "lockScreenBlockCortana": "Boolean",
  "lockScreenBlockToastNotifications": "Boolean",
  "lockScreenTimeoutInSeconds": "Integer",
  "lockScreenActivateAppsWithVoice": "String",
  "passwordBlockSimple": "Boolean",
  "passwordExpirationDays": "Integer",
  "passwordMinimumLength": "Integer",
  "passwordMinutesOfInactivityBeforeScreenTimeout": "Integer",
  "passwordMinimumCharacterSetCount": "Integer",
  "passwordPreviousPasswordBlockCount": "Integer",
  "passwordRequired": "Boolean",
  "passwordRequireWhenResumeFromIdleState": "Boolean",
  "passwordRequiredType": "String",
  "passwordSignInFailureCountBeforeFactoryReset": "Integer",
  "passwordMinimumAgeInDays": "Integer",
  "privacyAdvertisingId": "String",
  "privacyAutoAcceptPairingAndConsentPrompts": "Boolean",
  "privacyDisableLaunchExperience": "Boolean",
  "privacyBlockInputPersonalization": "Boolean",
  "privacyBlockPublishUserActivities": "Boolean",
  "privacyBlockActivityFeed": "Boolean",
  "activateAppsWithVoice": "String",
  "startBlockUnpinningAppsFromTaskbar": "Boolean",
  "startMenuAppListVisibility": "String",
  "startMenuHideChangeAccountSettings": "Boolean",
  "startMenuHideFrequentlyUsedApps": "Boolean",
  "startMenuHideHibernate": "Boolean",
  "startMenuHideLock": "Boolean",
  "startMenuHidePowerButton": "Boolean",
  "startMenuHideRecentJumpLists": "Boolean",
  "startMenuHideRecentlyAddedApps": "Boolean",
  "startMenuHideRestartOptions": "Boolean",
  "startMenuHideShutDown": "Boolean",
  "startMenuHideSignOut": "Boolean",
  "startMenuHideSleep": "Boolean",
  "startMenuHideSwitchAccount": "Boolean",
  "startMenuHideUserTile": "Boolean",
  "startMenuLayoutEdgeAssetsXml": "Binary",
  "startMenuLayoutXml": "Binary",
  "startMenuMode": "String",
  "startMenuPinnedFolderDocuments": "String",
  "startMenuPinnedFolderDownloads": "String",
  "startMenuPinnedFolderFileExplorer": "String",
  "startMenuPinnedFolderHomeGroup": "String",
  "startMenuPinnedFolderMusic": "String",
  "startMenuPinnedFolderNetwork": "String",
  "startMenuPinnedFolderPersonalFolder": "String",
  "startMenuPinnedFolderPictures": "String",
  "startMenuPinnedFolderSettings": "String",
  "startMenuPinnedFolderVideos": "String",
  "settingsBlockSettingsApp": "Boolean",
  "settingsBlockSystemPage": "Boolean",
  "settingsBlockDevicesPage": "Boolean",
  "settingsBlockNetworkInternetPage": "Boolean",
  "settingsBlockPersonalizationPage": "Boolean",
  "settingsBlockAccountsPage": "Boolean",
  "settingsBlockTimeLanguagePage": "Boolean",
  "settingsBlockEaseOfAccessPage": "Boolean",
  "settingsBlockPrivacyPage": "Boolean",
  "settingsBlockUpdateSecurityPage": "Boolean",
  "settingsBlockAppsPage": "Boolean",
  "settingsBlockGamingPage": "Boolean",
  "windowsSpotlightBlockConsumerSpecificFeatures": "Boolean",
  "windowsSpotlightBlocked": "Boolean",
  "windowsSpotlightBlockOnActionCenter": "Boolean",
  "windowsSpotlightBlockTailoredExperiences": "Boolean",
  "windowsSpotlightBlockThirdPartyNotifications": "Boolean",
  "windowsSpotlightBlockWelcomeExperience": "Boolean",
  "windowsSpotlightBlockWindowsTips": "Boolean",
  "windowsSpotlightConfigureOnLockScreen": "String",
  "networkProxyApplySettingsDeviceWide": "Boolean",
  "networkProxyDisableAutoDetect": "Boolean",
  "networkProxyAutomaticConfigurationUrl": "String",
  "networkProxyServer": {
    "@odata.type": "microsoft.graph.windows10NetworkProxyServer"
  },
  "accountsBlockAddingNonMicrosoftAccountEmail": "Boolean",
  "antiTheftModeBlocked": "Boolean",
  "bluetoothBlocked": "Boolean",
  "cameraBlocked": "Boolean",
  "connectedDevicesServiceBlocked": "Boolean",
  "certificatesBlockManualRootCertificateInstallation": "Boolean",
  "copyPasteBlocked": "Boolean",
  "cortanaBlocked": "Boolean",
  "deviceManagementBlockFactoryResetOnMobile": "Boolean",
  "deviceManagementBlockManualUnenroll": "Boolean",
  "safeSearchFilter": "String",
  "edgeBlockPopups": "Boolean",
  "edgeBlockSearchSuggestions": "Boolean",
  "edgeBlockSearchEngineCustomization": "Boolean",
  "edgeBlockSendingIntranetTrafficToInternetExplorer": "Boolean",
  "edgeSendIntranetTrafficToInternetExplorer": "Boolean",
  "edgeRequireSmartScreen": "Boolean",
  "edgeEnterpriseModeSiteListLocation": "String",
  "edgeFirstRunUrl": "String",
  "edgeSearchEngine": {
    "@odata.type": "microsoft.graph.edgeSearchEngineBase"
  },
  "edgeHomepageUrls": [
    "String"
  ],
  "edgeBlockAccessToAboutFlags": "Boolean",
  "smartScreenBlockPromptOverride": "Boolean",
  "smartScreenBlockPromptOverrideForFiles": "Boolean",
  "webRtcBlockLocalhostIpAddress": "Boolean",
  "internetSharingBlocked": "Boolean",
  "settingsBlockAddProvisioningPackage": "Boolean",
  "settingsBlockRemoveProvisioningPackage": "Boolean",
  "settingsBlockChangeSystemTime": "Boolean",
  "settingsBlockEditDeviceName": "Boolean",
  "settingsBlockChangeRegion": "Boolean",
  "settingsBlockChangeLanguage": "Boolean",
  "settingsBlockChangePowerSleep": "Boolean",
  "locationServicesBlocked": "Boolean",
  "microsoftAccountBlocked": "Boolean",
  "microsoftAccountBlockSettingsSync": "Boolean",
  "nfcBlocked": "Boolean",
  "resetProtectionModeBlocked": "Boolean",
  "screenCaptureBlocked": "Boolean",
  "storageBlockRemovableStorage": "Boolean",
  "storageRequireMobileDeviceEncryption": "Boolean",
  "usbBlocked": "Boolean",
  "voiceRecordingBlocked": "Boolean",
  "wiFiBlockAutomaticConnectHotspots": "Boolean",
  "wiFiBlocked": "Boolean",
  "wiFiBlockManualConfiguration": "Boolean",
  "wiFiScanInterval": "Integer",
  "wirelessDisplayBlockProjectionToThisDevice": "Boolean",
  "wirelessDisplayBlockUserInputFromReceiver": "Boolean",
  "wirelessDisplayRequirePinForPairing": "Boolean",
  "windowsStoreBlocked": "Boolean",
  "appsAllowTrustedAppsSideloading": "String",
  "windowsStoreBlockAutoUpdate": "Boolean",
  "developerUnlockSetting": "String",
  "sharedUserAppDataAllowed": "Boolean",
  "appsBlockWindowsStoreOriginatedApps": "Boolean",
  "windowsStoreEnablePrivateStoreOnly": "Boolean",
  "storageRestrictAppDataToSystemVolume": "Boolean",
  "storageRestrictAppInstallToSystemVolume": "Boolean",
  "gameDvrBlocked": "Boolean",
  "experienceBlockDeviceDiscovery": "Boolean",
  "experienceBlockErrorDialogWhenNoSIM": "Boolean",
  "experienceBlockTaskSwitcher": "Boolean",
  "logonBlockFastUserSwitching": "Boolean",
  "tenantLockdownRequireNetworkDuringOutOfBoxExperience": "Boolean",
  "appManagementMSIAllowUserControlOverInstall": "Boolean",
  "appManagementMSIAlwaysInstallWithElevatedPrivileges": "Boolean",
  "dataProtectionBlockDirectMemoryAccess": "Boolean",
  "appManagementPackageFamilyNamesToLaunchAfterLogOn": [
    "String"
  ],
  "uninstallBuiltInApps": "Boolean",
  "configureTimeZone": "String"
}
```

