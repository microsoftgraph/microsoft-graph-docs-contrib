---
title: "androidDeviceOwnerGeneralDeviceConfiguration resource type"
description: "This topic provides descriptions of the declared methods, properties and relationships exposed by the androidDeviceOwnerGeneralDeviceConfiguration resource."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerGeneralDeviceConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This topic provides descriptions of the declared methods, properties and relationships exposed by the androidDeviceOwnerGeneralDeviceConfiguration resource.


Inherits from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidDeviceOwnerGeneralDeviceConfigurations](../api/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration-list.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) collection|List properties and relationships of the [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) objects.|
|[Get androidDeviceOwnerGeneralDeviceConfiguration](../api/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration-get.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md)|Read properties and relationships of the [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) object.|
|[Create androidDeviceOwnerGeneralDeviceConfiguration](../api/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration-create.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md)|Create a new [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) object.|
|[Delete androidDeviceOwnerGeneralDeviceConfiguration](../api/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration-delete.md)|None|Deletes a [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md).|
|[Update androidDeviceOwnerGeneralDeviceConfiguration](../api/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration-update.md)|[androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md)|Update the properties of a [androidDeviceOwnerGeneralDeviceConfiguration](../resources/intune-deviceconfig-androiddeviceownergeneraldeviceconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition.md)|The OS edition applicability for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion.md)|The OS version applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode.md)|The device mode applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|azureAdSharedDeviceDataClearApps|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|A list of managed apps that will have their data cleared during a global sign-out in AAD shared device mode. This collection can contain a maximum of 500 elements.|
|accountsBlockModification|Boolean|Indicates whether or not adding or removing accounts is disabled.|
|appsAllowInstallFromUnknownSources|Boolean|Indicates whether or not the user is allowed to enable to unknown sources setting.|
|appsAutoUpdatePolicy|[androidDeviceOwnerAppAutoUpdatePolicyType](../resources/intune-deviceconfig-androiddeviceownerappautoupdatepolicytype.md)|Indicates the value of the app auto update policy. Possible values are: `notConfigured`, `userChoice`, `never`, `wiFiOnly`, `always`.|
|appsDefaultPermissionPolicy|[androidDeviceOwnerDefaultAppPermissionPolicyType](../resources/intune-deviceconfig-androiddeviceownerdefaultapppermissionpolicytype.md)|Indicates the permission policy for requests for runtime permissions if one is not defined for the app specifically. Possible values are: `deviceDefault`, `prompt`, `autoGrant`, `autoDeny`.|
|appsRecommendSkippingFirstUseHints|Boolean|Whether or not to recommend all apps skip any first-time-use hints they may have added.|
|bluetoothBlockConfiguration|Boolean|Indicates whether or not to block a user from configuring bluetooth.|
|bluetoothBlockContactSharing|Boolean|Indicates whether or not to block a user from sharing contacts via bluetooth.|
|cameraBlocked|Boolean|Indicates whether or not to disable the use of the camera.|
|cellularBlockWiFiTethering|Boolean|Indicates whether or not to block Wi-Fi tethering.|
|certificateCredentialConfigurationDisabled|Boolean|Indicates whether or not to block users from any certificate credential configuration.|
|crossProfilePoliciesAllowCopyPaste|Boolean|Indicates whether or not text copied from one profile (personal or work) can be pasted in the other.|
|crossProfilePoliciesAllowDataSharing|[androidDeviceOwnerCrossProfileDataSharing](../resources/intune-deviceconfig-androiddeviceownercrossprofiledatasharing.md)|Indicates whether data from one profile (personal or work) can be shared with apps in the other profile. Possible values are: `notConfigured`, `crossProfileDataSharingBlocked`, `dataSharingFromWorkToPersonalBlocked`, `crossProfileDataSharingAllowed`, `unkownFutureValue`.|
|crossProfilePoliciesShowWorkContactsInPersonalProfile|Boolean|Indicates whether or not contacts stored in work profile are shown in personal profile contact searches/incoming calls.|
|microsoftLauncherConfigurationEnabled|Boolean|Indicates whether or not to you want configure Microsoft Launcher.|
|microsoftLauncherCustomWallpaperEnabled|Boolean|Indicates whether or not to configure the wallpaper on the targeted devices.|
|microsoftLauncherCustomWallpaperImageUrl|String|Indicates the URL for the image file to use as the wallpaper on the targeted devices.|
|microsoftLauncherCustomWallpaperAllowUserModification|Boolean|Indicates whether or not the user can modify the wallpaper to personalize their device.|
|microsoftLauncherFeedEnabled|Boolean|Indicates whether or not you want to enable the launcher feed on the device.|
|microsoftLauncherFeedAllowUserModification|Boolean|Indicates whether or not the user can modify the launcher feed on the device.|
|microsoftLauncherDockPresenceConfiguration|[microsoftLauncherDockPresence](../resources/intune-deviceconfig-microsoftlauncherdockpresence.md)|Indicates whether or not you want to configure the device dock. Possible values are: `notConfigured`, `show`, `hide`, `disabled`.|
|microsoftLauncherDockPresenceAllowUserModification|Boolean|Indicates whether or not the user can modify the device dock configuration on the device.|
|microsoftLauncherSearchBarPlacementConfiguration|[microsoftLauncherSearchBarPlacement](../resources/intune-deviceconfig-microsoftlaunchersearchbarplacement.md)|Indicates the search bar placement configuration on the device. Possible values are: `notConfigured`, `top`, `bottom`, `hide`.|
|enrollmentProfile|[androidDeviceOwnerEnrollmentProfileType](../resources/intune-deviceconfig-androiddeviceownerenrollmentprofiletype.md)|Indicates which enrollment profile you want to configure. Possible values are: `notConfigured`, `dedicatedDevice`, `fullyManaged`.|
|dataRoamingBlocked|Boolean|Indicates whether or not to block a user from data roaming.|
|dateTimeConfigurationBlocked|Boolean|Indicates whether or not to block the user from manually changing the date or time on the device|
|detailedHelpText|[androidDeviceOwnerUserFacingMessage](../resources/intune-deviceconfig-androiddeviceowneruserfacingmessage.md)|Represents the customized detailed help text provided to users when they attempt to modify managed settings on their device.|
|deviceOwnerLockScreenMessage|[androidDeviceOwnerUserFacingMessage](../resources/intune-deviceconfig-androiddeviceowneruserfacingmessage.md)|Represents the customized lock screen message provided to users when they attempt to modify managed settings on their device.|
|securityCommonCriteriaModeEnabled|Boolean|Represents the security common criteria mode enabled provided to users when they attempt to modify managed settings on their device.|
|factoryResetDeviceAdministratorEmails|String collection|List of Google account emails that will be required to authenticate after a device is factory reset before it can be set up.|
|factoryResetBlocked|Boolean|Indicates whether or not the factory reset option in settings is disabled.|
|globalProxy|[androidDeviceOwnerGlobalProxy](../resources/intune-deviceconfig-androiddeviceownerglobalproxy.md)|Proxy is set up directly with host, port and excluded hosts.|
|googleAccountsBlocked|Boolean|Indicates whether or not google accounts will be blocked.|
|kioskCustomizationDeviceSettingsBlocked|Boolean|Indicates whether a user can access the device's Settings app while in Kiosk Mode.|
|kioskCustomizationPowerButtonActionsBlocked|Boolean|Whether the power menu is shown when a user long presses the Power button of a device in Kiosk Mode.|
|kioskCustomizationStatusBar|[androidDeviceOwnerKioskCustomizationStatusBar](../resources/intune-deviceconfig-androiddeviceownerkioskcustomizationstatusbar.md)|Indicates whether system info and notifications are disabled in Kiosk Mode. Possible values are: `notConfigured`, `notificationsAndSystemInfoEnabled`, `systemInfoOnly`.|
|kioskCustomizationSystemErrorWarnings|Boolean|Indicates whether system error dialogs for crashed or unresponsive apps are shown in Kiosk Mode.|
|kioskCustomizationSystemNavigation|[androidDeviceOwnerKioskCustomizationSystemNavigation](../resources/intune-deviceconfig-androiddeviceownerkioskcustomizationsystemnavigation.md)|Indicates which navigation features are enabled in Kiosk Mode. Possible values are: `notConfigured`, `navigationEnabled`, `homeButtonOnly`.|
|kioskModeScreenSaverConfigurationEnabled|Boolean|Whether or not to enable screen saver mode or not in Kiosk Mode.|
|kioskModeScreenSaverImageUrl|String|URL for an image that will be the device's screen saver in Kiosk Mode.|
|kioskModeScreenSaverDisplayTimeInSeconds|Int32|The number of seconds that the device will display the screen saver for in Kiosk Mode. Valid values 0 to 9999999|
|kioskModeScreenSaverStartDelayInSeconds|Int32|The number of seconds the device needs to be inactive for before the screen saver is shown in Kiosk Mode. Valid values 1 to 9999999|
|kioskModeScreenSaverDetectMediaDisabled|Boolean|Whether or not the device screen should show the screen saver if audio/video is playing in Kiosk Mode.|
|kioskModeApps|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|A list of managed apps that will be shown when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.|
|kioskModeWallpaperUrl|String|URL to a publicly accessible image to use for the wallpaper when the device is in Kiosk Mode.|
|kioskModeExitCode|String|Exit code to allow a user to escape from Kiosk Mode when the device is in Kiosk Mode.|
|kioskModeVirtualHomeButtonEnabled|Boolean|Whether or not to display a virtual home button when the device is in Kiosk Mode.|
|kioskModeVirtualHomeButtonType|[androidDeviceOwnerVirtualHomeButtonType](../resources/intune-deviceconfig-androiddeviceownervirtualhomebuttontype.md)|Indicates whether the virtual home button is a swipe up home button or a floating home button. Possible values are: `notConfigured`, `swipeUp`, `floating`.|
|kioskModeBluetoothConfigurationEnabled|Boolean|Whether or not to allow a user to configure Bluetooth settings in Kiosk Mode.|
|kioskModeWiFiConfigurationEnabled|Boolean|Whether or not to allow a user to configure Wi-Fi settings in Kiosk Mode.|
|kioskModeFlashlightConfigurationEnabled|Boolean|Whether or not to allow a user to use the flashlight in Kiosk Mode.|
|kioskModeMediaVolumeConfigurationEnabled|Boolean|Whether or not to allow a user to change the media volume in Kiosk Mode.|
|kioskModeShowDeviceInfo|Boolean|Whether or not to allow a user to access basic device information.|
|kioskModeManagedSettingsEntryDisabled|Boolean|Whether or not to display the Managed Settings entry point on the managed home screen in Kiosk Mode.|
|kioskModeDebugMenuEasyAccessEnabled|Boolean|Whether or not to allow a user to easy access to the debug menu in Kiosk Mode.|
|kioskModeShowAppNotificationBadge|Boolean|Whether or not to display application notification badges in Kiosk Mode.|
|kioskModeScreenOrientation|[androidDeviceOwnerKioskModeScreenOrientation](../resources/intune-deviceconfig-androiddeviceownerkioskmodescreenorientation.md)|Screen orientation configuration for managed home screen in Kiosk Mode. Possible values are: `notConfigured`, `portrait`, `landscape`, `autoRotate`.|
|kioskModeIconSize|[androidDeviceOwnerKioskModeIconSize](../resources/intune-deviceconfig-androiddeviceownerkioskmodeiconsize.md)|Icon size configuration for managed home screen in Kiosk Mode. Possible values are: `notConfigured`, `smallest`, `small`, `regular`, `large`, `largest`.|
|kioskModeFolderIcon|[androidDeviceOwnerKioskModeFolderIcon](../resources/intune-deviceconfig-androiddeviceownerkioskmodefoldericon.md)|Folder icon configuration for managed home screen in Kiosk Mode. Possible values are: `notConfigured`, `darkSquare`, `darkCircle`, `lightSquare`, `lightCircle`.|
|kioskModeWifiAllowedSsids|String collection|The restricted set of WIFI SSIDs available for the user to configure in Kiosk Mode. This collection can contain a maximum of 500 elements.|
|kioskModeAppOrderEnabled|Boolean|Whether or not to enable app ordering in Kiosk Mode.|
|kioskModeAppsInFolderOrderedByName|Boolean|Whether or not to alphabetize applications within a folder in Kiosk Mode.|
|kioskModeGridHeight|Int32|Number of rows for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999|
|kioskModeGridWidth|Int32|Number of columns for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999|
|kioskModeLockHomeScreen|Boolean|Whether or not to lock home screen to the end user in Kiosk Mode.|
|kioskModeManagedFolders|[androidDeviceOwnerKioskModeManagedFolder](../resources/intune-deviceconfig-androiddeviceownerkioskmodemanagedfolder.md) collection|A list of managed folders for a device in Kiosk Mode. This collection can contain a maximum of 500 elements.|
|kioskModeAppPositions|[androidDeviceOwnerKioskModeAppPositionItem](../resources/intune-deviceconfig-androiddeviceownerkioskmodeapppositionitem.md) collection|The ordering of items on Kiosk Mode Managed Home Screen. This collection can contain a maximum of 500 elements.|
|kioskModeManagedHomeScreenAutoSignout|Boolean|Whether or not to automatically sign-out of MHS and Shared device mode applications after inactive for Managed Home Screen.|
|kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds|Int32|Number of seconds to give user notice before automatically signing them out for Managed Home Screen. Valid values 0 to 9999999|
|kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds|Int32|Number of seconds device is inactive before automatically signing user out for Managed Home Screen. Valid values 0 to 9999999|
|kioskModeManagedHomeScreenPinComplexity|[kioskModeManagedHomeScreenPinComplexity](../resources/intune-deviceconfig-kioskmodemanagedhomescreenpincomplexity.md)|Complexity of PIN for sign-in session for Managed Home Screen. Possible values are: `notConfigured`, `simple`, `complex`.|
|kioskModeManagedHomeScreenPinRequired|Boolean|Whether or not require user to set a PIN for sign-in session for Managed Home Screen.|
|kioskModeManagedHomeScreenPinRequiredToResume|Boolean|Whether or not required user to enter session PIN if screensaver has appeared for Managed Home Screen.|
|kioskModeManagedHomeScreenSignInBackground|String|Custom URL background for sign-in screen for Managed Home Screen.|
|kioskModeManagedHomeScreenSignInBrandingLogo|String|Custom URL branding logo for sign-in screen and session pin page for Managed Home Screen.|
|kioskModeManagedHomeScreenSignInEnabled|Boolean|Whether or not show sign-in screen for Managed Home Screen.|
|kioskModeUseManagedHomeScreenApp|[kioskModeType](../resources/intune-deviceconfig-kioskmodetype.md)|Whether or not to use single app kiosk mode or multi-app kiosk mode. Possible values are: `notConfigured`, `singleAppMode`, `multiAppMode`.|
|microphoneForceMute|Boolean|Indicates whether or not to block unmuting the microphone on the device.|
|networkEscapeHatchAllowed|Boolean|Indicates whether or not the device will allow connecting to a temporary network connection at boot time.|
|nfcBlockOutgoingBeam|Boolean|Indicates whether or not to block NFC outgoing beam.|
|passwordBlockKeyguard|Boolean|Indicates whether or not the keyguard is disabled.|
|passwordBlockKeyguardFeatures|[androidKeyguardFeature](../resources/intune-deviceconfig-androidkeyguardfeature.md) collection|List of device keyguard features to block. This collection can contain a maximum of 11 elements.|
|passwordExpirationDays|Int32|Indicates the amount of time that a password can be set for before it expires and a new password will be required. Valid values 1 to 365|
|passwordMinimumLength|Int32|Indicates the minimum length of the password required on the device. Valid values 4 to 16|
|passwordMinimumLetterCharacters|Int32|Indicates the minimum number of letter characters required for device password. Valid values 1 to 16|
|passwordMinimumLowerCaseCharacters|Int32|Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16|
|passwordMinimumNonLetterCharacters|Int32|Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16|
|passwordMinimumNumericCharacters|Int32|Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16|
|passwordMinimumSymbolCharacters|Int32|Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16|
|passwordMinimumUpperCaseCharacters|Int32|Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16|
|passwordMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before the screen times out.|
|passwordPreviousPasswordCountToBlock|Int32|Indicates the length of password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24|
|passwordRequiredType|[androidDeviceOwnerRequiredPasswordType](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype.md)|Indicates the minimum password quality required on the device. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `customPassword`.|
|passwordRequireUnlock|[androidDeviceOwnerRequiredPasswordUnlock](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordunlock.md)|Indicates the timeout period after which a device must be unlocked using a form of strong authentication. Possible values are: `deviceDefault`, `daily`, `unkownFutureValue`.|
|passwordSignInFailureCountBeforeFactoryReset|Int32|Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11|
|playStoreMode|[androidDeviceOwnerPlayStoreMode](../resources/intune-deviceconfig-androiddeviceownerplaystoremode.md)|Indicates the Play Store mode of the device. Possible values are: `notConfigured`, `allowList`, `blockList`.|
|screenCaptureBlocked|Boolean|Indicates whether or not to disable the capability to take screenshots.|
|securityDeveloperSettingsEnabled|Boolean|Indicates whether or not the user is allowed to access developer settings like developer options and safe boot on the device.|
|securityRequireVerifyApps|Boolean|Indicates whether or not verify apps is required.|
|shortHelpText|[androidDeviceOwnerUserFacingMessage](../resources/intune-deviceconfig-androiddeviceowneruserfacingmessage.md)|Represents the customized short help text provided to users when they attempt to modify managed settings on their device.|
|statusBarBlocked|Boolean|Indicates whether or the status bar is disabled, including notifications, quick settings and other screen overlays.|
|stayOnModes|[androidDeviceOwnerBatteryPluggedMode](../resources/intune-deviceconfig-androiddeviceownerbatterypluggedmode.md) collection|List of modes in which the device's display will stay powered-on. This collection can contain a maximum of 4 elements.|
|storageAllowUsb|Boolean|Indicates whether or not to allow USB mass storage.|
|storageBlockExternalMedia|Boolean|Indicates whether or not to block external media.|
|storageBlockUsbFileTransfer|Boolean|Indicates whether or not to block USB file transfer.|
|systemUpdateFreezePeriods|[androidDeviceOwnerSystemUpdateFreezePeriod](../resources/intune-deviceconfig-androiddeviceownersystemupdatefreezeperiod.md) collection|Indicates the annually repeating time periods during which system updates are postponed. This collection can contain a maximum of 500 elements.|
|systemUpdateWindowStartMinutesAfterMidnight|Int32|Indicates the number of minutes after midnight that the system update window starts. Valid values 0 to 1440|
|systemUpdateWindowEndMinutesAfterMidnight|Int32|Indicates the number of minutes after midnight that the system update window ends. Valid values 0 to 1440|
|systemUpdateInstallType|[androidDeviceOwnerSystemUpdateInstallType](../resources/intune-deviceconfig-androiddeviceownersystemupdateinstalltype.md)|The type of system update configuration. Possible values are: `deviceDefault`, `postpone`, `windowed`, `automatic`.|
|systemWindowsBlocked|Boolean|Whether or not to block Android system prompt windows, like toasts, phone activities, and system alerts.|
|usersBlockAdd|Boolean|Indicates whether or not adding users and profiles is disabled.|
|usersBlockRemove|Boolean|Indicates whether or not to disable removing other users from the device.|
|volumeBlockAdjustment|Boolean|Indicates whether or not adjusting the master volume is disabled.|
|vpnAlwaysOnLockdownMode|Boolean|If an always on VPN package name is specified, whether or not to lock network traffic when that VPN is disconnected.|
|vpnAlwaysOnPackageIdentifier|String|Android app package name for app that will handle an always-on VPN connection.|
|wifiBlockEditConfigurations|Boolean|Indicates whether or not to block the user from editing the wifi connection settings.|
|wifiBlockEditPolicyDefinedConfigurations|Boolean|Indicates whether or not to block the user from editing just the networks defined by the policy.|
|personalProfileAppsAllowInstallFromUnknownSources|Boolean|Indicates whether the user can install apps from unknown sources on the personal profile.|
|personalProfileCameraBlocked|Boolean|Indicates whether to disable the use of the camera on the personal profile.|
|personalProfileScreenCaptureBlocked|Boolean|Indicates whether to disable the capability to take screenshots on the personal profile.|
|personalProfilePlayStoreMode|[personalProfilePersonalPlayStoreMode](../resources/intune-deviceconfig-personalprofilepersonalplaystoremode.md)|Used together with PersonalProfilePersonalApplications to control how apps in the personal profile are allowed or blocked. Possible values are: `notConfigured`, `blockedApps`, `allowedApps`.|
|personalProfilePersonalApplications|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|Policy applied to applications in the personal profile. This collection can contain a maximum of 500 elements.|
|workProfilePasswordExpirationDays|Int32|Indicates the number of days that a work profile password can be set before it expires and a new password will be required. Valid values 1 to 365|
|workProfilePasswordMinimumLength|Int32|Indicates the minimum length of the work profile password. Valid values 4 to 16|
|workProfilePasswordMinimumNumericCharacters|Int32|Indicates the minimum number of numeric characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordMinimumNonLetterCharacters|Int32|Indicates the minimum number of non-letter characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordMinimumLetterCharacters|Int32|Indicates the minimum number of letter characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordMinimumLowerCaseCharacters|Int32|Indicates the minimum number of lower-case characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordMinimumUpperCaseCharacters|Int32|Indicates the minimum number of upper-case letter characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordMinimumSymbolCharacters|Int32|Indicates the minimum number of symbol characters required for the work profile password. Valid values 1 to 16|
|workProfilePasswordPreviousPasswordCountToBlock|Int32|Indicates the length of the work profile password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24|
|workProfilePasswordSignInFailureCountBeforeFactoryReset|Int32|Indicates the number of times a user can enter an incorrect work profile password before the device is wiped. Valid values 4 to 11|
|workProfilePasswordRequiredType|[androidDeviceOwnerRequiredPasswordType](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordtype.md)|Indicates the minimum password quality required on the work profile password. Possible values are: `deviceDefault`, `required`, `numeric`, `numericComplex`, `alphabetic`, `alphanumeric`, `alphanumericWithSymbols`, `lowSecurityBiometric`, `customPassword`.|
|workProfilePasswordRequireUnlock|[androidDeviceOwnerRequiredPasswordUnlock](../resources/intune-deviceconfig-androiddeviceownerrequiredpasswordunlock.md)|Indicates the timeout period after which a work profile must be unlocked using a form of strong authentication. Possible values are: `deviceDefault`, `daily`, `unkownFutureValue`.|
|locateDeviceUserlessDisabled|Boolean|Indicates whether or not LocateDevice for userless (COSU) devices is disabled.|
|locateDeviceLostModeEnabled|Boolean|Indicates whether or not LocateDevice for devices with lost mode (COBO, COPE) is enabled.|
|androidDeviceOwnerDelegatedScopeAppSettings|[androidDeviceOwnerDelegatedScopeAppSetting](../resources/intune-deviceconfig-androiddeviceownerdelegatedscopeappsetting.md) collection|Specifies the list of managed apps with app details and its associated delegated scope(s). This collection can contain a maximum of 500 elements.|
|shareDeviceLocationDisabled|Boolean|Indicates whether or not location sharing is disabled for fully managed devices (COBO), and corporate owned devices with a work profile (COPE)|
|deviceLocationMode|[androidDeviceOwnerLocationMode](../resources/intune-deviceconfig-androiddeviceownerlocationmode.md)|Indicates the location setting configuration for fully managed devices (COBO) and corporate owned devices with a work profile (COPE). Possible values are: `notConfigured`, `disabled`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfig-deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "String"
    ],
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "String",
    "maxOSVersion": "String",
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "String",
    "name": "String",
    "ruleType": "String"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "azureAdSharedDeviceDataClearApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "accountsBlockModification": true,
  "appsAllowInstallFromUnknownSources": true,
  "appsAutoUpdatePolicy": "String",
  "appsDefaultPermissionPolicy": "String",
  "appsRecommendSkippingFirstUseHints": true,
  "bluetoothBlockConfiguration": true,
  "bluetoothBlockContactSharing": true,
  "cameraBlocked": true,
  "cellularBlockWiFiTethering": true,
  "certificateCredentialConfigurationDisabled": true,
  "crossProfilePoliciesAllowCopyPaste": true,
  "crossProfilePoliciesAllowDataSharing": "String",
  "crossProfilePoliciesShowWorkContactsInPersonalProfile": true,
  "microsoftLauncherConfigurationEnabled": true,
  "microsoftLauncherCustomWallpaperEnabled": true,
  "microsoftLauncherCustomWallpaperImageUrl": "String",
  "microsoftLauncherCustomWallpaperAllowUserModification": true,
  "microsoftLauncherFeedEnabled": true,
  "microsoftLauncherFeedAllowUserModification": true,
  "microsoftLauncherDockPresenceConfiguration": "String",
  "microsoftLauncherDockPresenceAllowUserModification": true,
  "microsoftLauncherSearchBarPlacementConfiguration": "String",
  "enrollmentProfile": "String",
  "dataRoamingBlocked": true,
  "dateTimeConfigurationBlocked": true,
  "detailedHelpText": {
    "@odata.type": "microsoft.graph.androidDeviceOwnerUserFacingMessage",
    "localizedMessages": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "String",
        "value": "String"
      }
    ],
    "defaultMessage": "String"
  },
  "deviceOwnerLockScreenMessage": {
    "@odata.type": "microsoft.graph.androidDeviceOwnerUserFacingMessage",
    "localizedMessages": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "String",
        "value": "String"
      }
    ],
    "defaultMessage": "String"
  },
  "securityCommonCriteriaModeEnabled": true,
  "factoryResetDeviceAdministratorEmails": [
    "String"
  ],
  "factoryResetBlocked": true,
  "globalProxy": {
    "@odata.type": "microsoft.graph.androidDeviceOwnerGlobalProxyAutoConfig",
    "proxyAutoConfigURL": "String"
  },
  "googleAccountsBlocked": true,
  "kioskCustomizationDeviceSettingsBlocked": true,
  "kioskCustomizationPowerButtonActionsBlocked": true,
  "kioskCustomizationStatusBar": "String",
  "kioskCustomizationSystemErrorWarnings": true,
  "kioskCustomizationSystemNavigation": "String",
  "kioskModeScreenSaverConfigurationEnabled": true,
  "kioskModeScreenSaverImageUrl": "String",
  "kioskModeScreenSaverDisplayTimeInSeconds": 1024,
  "kioskModeScreenSaverStartDelayInSeconds": 1024,
  "kioskModeScreenSaverDetectMediaDisabled": true,
  "kioskModeApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "kioskModeWallpaperUrl": "String",
  "kioskModeExitCode": "String",
  "kioskModeVirtualHomeButtonEnabled": true,
  "kioskModeVirtualHomeButtonType": "String",
  "kioskModeBluetoothConfigurationEnabled": true,
  "kioskModeWiFiConfigurationEnabled": true,
  "kioskModeFlashlightConfigurationEnabled": true,
  "kioskModeMediaVolumeConfigurationEnabled": true,
  "kioskModeShowDeviceInfo": true,
  "kioskModeManagedSettingsEntryDisabled": true,
  "kioskModeDebugMenuEasyAccessEnabled": true,
  "kioskModeShowAppNotificationBadge": true,
  "kioskModeScreenOrientation": "String",
  "kioskModeIconSize": "String",
  "kioskModeFolderIcon": "String",
  "kioskModeWifiAllowedSsids": [
    "String"
  ],
  "kioskModeAppOrderEnabled": true,
  "kioskModeAppsInFolderOrderedByName": true,
  "kioskModeGridHeight": 1024,
  "kioskModeGridWidth": 1024,
  "kioskModeLockHomeScreen": true,
  "kioskModeManagedFolders": [
    {
      "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeManagedFolder",
      "folderName": "String",
      "folderIdentifier": "String",
      "items": [
        {
          "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeWeblink",
          "label": "String",
          "link": "String"
        }
      ]
    }
  ],
  "kioskModeAppPositions": [
    {
      "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeAppPositionItem",
      "position": 1024,
      "item": {
        "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeWeblink",
        "label": "String",
        "link": "String"
      }
    }
  ],
  "kioskModeManagedHomeScreenAutoSignout": true,
  "kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds": 1024,
  "kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds": 1024,
  "kioskModeManagedHomeScreenPinComplexity": "String",
  "kioskModeManagedHomeScreenPinRequired": true,
  "kioskModeManagedHomeScreenPinRequiredToResume": true,
  "kioskModeManagedHomeScreenSignInBackground": "String",
  "kioskModeManagedHomeScreenSignInBrandingLogo": "String",
  "kioskModeManagedHomeScreenSignInEnabled": true,
  "kioskModeUseManagedHomeScreenApp": "String",
  "microphoneForceMute": true,
  "networkEscapeHatchAllowed": true,
  "nfcBlockOutgoingBeam": true,
  "passwordBlockKeyguard": true,
  "passwordBlockKeyguardFeatures": [
    "String"
  ],
  "passwordExpirationDays": 1024,
  "passwordMinimumLength": 1024,
  "passwordMinimumLetterCharacters": 1024,
  "passwordMinimumLowerCaseCharacters": 1024,
  "passwordMinimumNonLetterCharacters": 1024,
  "passwordMinimumNumericCharacters": 1024,
  "passwordMinimumSymbolCharacters": 1024,
  "passwordMinimumUpperCaseCharacters": 1024,
  "passwordMinutesOfInactivityBeforeScreenTimeout": 1024,
  "passwordPreviousPasswordCountToBlock": 1024,
  "passwordRequiredType": "String",
  "passwordRequireUnlock": "String",
  "passwordSignInFailureCountBeforeFactoryReset": 1024,
  "playStoreMode": "String",
  "screenCaptureBlocked": true,
  "securityDeveloperSettingsEnabled": true,
  "securityRequireVerifyApps": true,
  "shortHelpText": {
    "@odata.type": "microsoft.graph.androidDeviceOwnerUserFacingMessage",
    "localizedMessages": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "String",
        "value": "String"
      }
    ],
    "defaultMessage": "String"
  },
  "statusBarBlocked": true,
  "stayOnModes": [
    "String"
  ],
  "storageAllowUsb": true,
  "storageBlockExternalMedia": true,
  "storageBlockUsbFileTransfer": true,
  "systemUpdateFreezePeriods": [
    {
      "@odata.type": "microsoft.graph.androidDeviceOwnerSystemUpdateFreezePeriod",
      "startMonth": 1024,
      "startDay": 1024,
      "endMonth": 1024,
      "endDay": 1024
    }
  ],
  "systemUpdateWindowStartMinutesAfterMidnight": 1024,
  "systemUpdateWindowEndMinutesAfterMidnight": 1024,
  "systemUpdateInstallType": "String",
  "systemWindowsBlocked": true,
  "usersBlockAdd": true,
  "usersBlockRemove": true,
  "volumeBlockAdjustment": true,
  "vpnAlwaysOnLockdownMode": true,
  "vpnAlwaysOnPackageIdentifier": "String",
  "wifiBlockEditConfigurations": true,
  "wifiBlockEditPolicyDefinedConfigurations": true,
  "personalProfileAppsAllowInstallFromUnknownSources": true,
  "personalProfileCameraBlocked": true,
  "personalProfileScreenCaptureBlocked": true,
  "personalProfilePlayStoreMode": "String",
  "personalProfilePersonalApplications": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "workProfilePasswordExpirationDays": 1024,
  "workProfilePasswordMinimumLength": 1024,
  "workProfilePasswordMinimumNumericCharacters": 1024,
  "workProfilePasswordMinimumNonLetterCharacters": 1024,
  "workProfilePasswordMinimumLetterCharacters": 1024,
  "workProfilePasswordMinimumLowerCaseCharacters": 1024,
  "workProfilePasswordMinimumUpperCaseCharacters": 1024,
  "workProfilePasswordMinimumSymbolCharacters": 1024,
  "workProfilePasswordPreviousPasswordCountToBlock": 1024,
  "workProfilePasswordSignInFailureCountBeforeFactoryReset": 1024,
  "workProfilePasswordRequiredType": "String",
  "workProfilePasswordRequireUnlock": "String",
  "locateDeviceUserlessDisabled": true,
  "locateDeviceLostModeEnabled": true,
  "androidDeviceOwnerDelegatedScopeAppSettings": [
    {
      "@odata.type": "microsoft.graph.androidDeviceOwnerDelegatedScopeAppSetting",
      "appDetail": {
        "@odata.type": "microsoft.graph.appListItem",
        "name": "String",
        "publisher": "String",
        "appStoreUrl": "String",
        "appId": "String"
      },
      "appScopes": [
        "String"
      ]
    }
  ],
  "shareDeviceLocationDisabled": true,
  "deviceLocationMode": "String"
}
```