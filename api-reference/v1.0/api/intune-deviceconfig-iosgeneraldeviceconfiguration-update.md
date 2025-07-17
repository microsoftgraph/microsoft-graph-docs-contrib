---
title: "Update iosGeneralDeviceConfiguration"
description: "Update the properties of a iosGeneralDeviceConfiguration object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update iosGeneralDeviceConfiguration

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [iosGeneralDeviceConfiguration](../resources/intune-deviceconfig-iosgeneraldeviceconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [iosGeneralDeviceConfiguration](../resources/intune-deviceconfig-iosgeneraldeviceconfiguration.md) object.

The following table shows the properties that are required when you create the [iosGeneralDeviceConfiguration](../resources/intune-deviceconfig-iosgeneraldeviceconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-deviceconfig-deviceconfiguration.md)|
|accountBlockModification|Boolean|Indicates whether or not to allow account modification when the device is in supervised mode.|
|activationLockAllowWhenSupervised|Boolean|Indicates whether or not to allow activation lock when the device is in the supervised mode.|
|airDropBlocked|Boolean|Indicates whether or not to allow AirDrop when the device is in supervised mode.|
|airDropForceUnmanagedDropTarget|Boolean|Indicates whether or not to cause AirDrop to be considered an unmanaged drop target (iOS 9.0 and later).|
|airPlayForcePairingPasswordForOutgoingRequests|Boolean|Indicates whether or not to enforce all devices receiving AirPlay requests from this device to use a pairing password.|
|appleWatchBlockPairing|Boolean|Indicates whether or not to allow Apple Watch pairing when the device is in supervised mode (iOS 9.0 and later).|
|appleWatchForceWristDetection|Boolean|Indicates whether or not to force a paired Apple Watch to use Wrist Detection (iOS 8.2 and later).|
|appleNewsBlocked|Boolean|Indicates whether or not to block the user from using News when the device is in supervised mode (iOS 9.0 and later).|
|appsSingleAppModeList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|Gets or sets the list of iOS apps allowed to autonomously enter Single App Mode. Supervised only. iOS 7.0 and later. This collection can contain a maximum of 500 elements.|
|appsVisibilityList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps in the visibility list (either visible/launchable apps list or hidden/unlaunchable apps list, controlled by AppsVisibilityListType) (iOS 9.3 and later). This collection can contain a maximum of 10000 elements.|
|appsVisibilityListType|[appListType](../resources/intune-deviceconfig-applisttype.md)|Type of list that is in the AppsVisibilityList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|appStoreBlockAutomaticDownloads|Boolean|Indicates whether or not to block the automatic downloading of apps purchased on other devices when the device is in supervised mode (iOS 9.0 and later).|
|appStoreBlocked|Boolean|Indicates whether or not to block the user from using the App Store. Requires a supervised device for iOS 13 and later.|
|appStoreBlockInAppPurchases|Boolean|Indicates whether or not to block the user from making in app purchases.|
|appStoreBlockUIAppInstallation|Boolean|Indicates whether or not to block the App Store app, not restricting installation through Host apps. Applies to supervised mode only (iOS 9.0 and later).|
|appStoreRequirePassword|Boolean|Indicates whether or not to require a password when using the app store.|
|bluetoothBlockModification|Boolean|Indicates whether or not to allow modification of Bluetooth settings when the device is in supervised mode (iOS 10.0 and later).|
|cameraBlocked|Boolean|Indicates whether or not to block the user from accessing the camera of the device. Requires a supervised device for iOS 13 and later.|
|cellularBlockDataRoaming|Boolean|Indicates whether or not to block data roaming.|
|cellularBlockGlobalBackgroundFetchWhileRoaming|Boolean|Indicates whether or not to block global background fetch while roaming.|
|cellularBlockPerAppDataModification|Boolean|Indicates whether or not to allow changes to cellular app data usage settings when the device is in supervised mode.|
|cellularBlockPersonalHotspot|Boolean|Indicates whether or not to block Personal Hotspot.|
|cellularBlockVoiceRoaming|Boolean|Indicates whether or not to block voice roaming.|
|certificatesBlockUntrustedTlsCertificates|Boolean|Indicates whether or not to block untrusted TLS certificates.|
|classroomAppBlockRemoteScreenObservation|Boolean|Indicates whether or not to allow remote screen observation by Classroom app when the device is in supervised mode (iOS 9.3 and later).|
|classroomAppForceUnpromptedScreenObservation|Boolean|Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting when the device is in supervised mode.|
|compliantAppsList|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.|
|compliantAppListType|[appListType](../resources/intune-deviceconfig-applisttype.md)|List that is in the AppComplianceList. Possible values are: `none`, `appsInListCompliant`, `appsNotInListCompliant`.|
|configurationProfileBlockChanges|Boolean|Indicates whether or not to block the user from installing configuration profiles and certificates interactively when the device is in supervised mode.|
|definitionLookupBlocked|Boolean|Indicates whether or not to block definition lookup when the device is in supervised mode (iOS 8.1.3 and later ).|
|deviceBlockEnableRestrictions|Boolean|Indicates whether or not to allow the user to enables restrictions in the device settings when the device is in supervised mode.|
|deviceBlockEraseContentAndSettings|Boolean|Indicates whether or not to allow the use of the 'Erase all content and settings' option on the device when the device is in supervised mode.|
|deviceBlockNameModification|Boolean|Indicates whether or not to allow device name modification when the device is in supervised mode (iOS 9.0 and later).|
|diagnosticDataBlockSubmission|Boolean|Indicates whether or not to block diagnostic data submission.|
|diagnosticDataBlockSubmissionModification|Boolean|Indicates whether or not to allow diagnostics submission settings modification when the device is in supervised mode (iOS 9.3.2 and later).|
|documentsBlockManagedDocumentsInUnmanagedApps|Boolean|Indicates whether or not to block the user from viewing managed documents in unmanaged apps.|
|documentsBlockUnmanagedDocumentsInManagedApps|Boolean|Indicates whether or not to block the user from viewing unmanaged documents in managed apps.|
|emailInDomainSuffixes|String collection|An email address lacking a suffix that matches any of these strings will be considered out-of-domain.|
|enterpriseAppBlockTrust|Boolean|Indicates whether or not to block the user from trusting an enterprise app.|
|enterpriseAppBlockTrustModification|Boolean|\[Deprecated\] Configuring this setting and setting the value to 'true' has no effect on the device.|
|faceTimeBlocked|Boolean|Indicates whether or not to block the user from using FaceTime. Requires a supervised device for iOS 13 and later.|
|findMyFriendsBlocked|Boolean|Indicates whether or not to block changes to Find My Friends when the device is in supervised mode.|
|gamingBlockGameCenterFriends|Boolean|Indicates whether or not to block the user from having friends in Game Center. Requires a supervised device for iOS 13 and later.|
|gamingBlockMultiplayer|Boolean|Indicates whether or not to block the user from using multiplayer gaming. Requires a supervised device for iOS 13 and later.|
|gameCenterBlocked|Boolean|Indicates whether or not to block the user from using Game Center when the device is in supervised mode.|
|hostPairingBlocked|Boolean|indicates whether or not to allow host pairing to control the devices an iOS device can pair with when the iOS device is in supervised mode.|
|iBooksStoreBlocked|Boolean|Indicates whether or not to block the user from using the iBooks Store when the device is in supervised mode.|
|iBooksStoreBlockErotica|Boolean|Indicates whether or not to block the user from downloading media from the iBookstore that has been tagged as erotica.|
|iCloudBlockActivityContinuation|Boolean|Indicates whether or not to block the user from continuing work they started on iOS device to another iOS or macOS device.|
|iCloudBlockBackup|Boolean|Indicates whether or not to block iCloud backup. Requires a supervised device for iOS 13 and later.|
|iCloudBlockDocumentSync|Boolean|Indicates whether or not to block iCloud document sync. Requires a supervised device for iOS 13 and later.|
|iCloudBlockManagedAppsSync|Boolean|Indicates whether or not to block Managed Apps Cloud Sync.|
|iCloudBlockPhotoLibrary|Boolean|Indicates whether or not to block iCloud Photo Library.|
|iCloudBlockPhotoStreamSync|Boolean|Indicates whether or not to block iCloud Photo Stream Sync.|
|iCloudBlockSharedPhotoStream|Boolean|Indicates whether or not to block Shared Photo Stream.|
|iCloudRequireEncryptedBackup|Boolean|Indicates whether or not to require backups to iCloud be encrypted.|
|iTunesBlockExplicitContent|Boolean|Indicates whether or not to block the user from accessing explicit content in iTunes and the App Store. Requires a supervised device for iOS 13 and later.|
|iTunesBlockMusicService|Boolean|Indicates whether or not to block Music service and revert Music app to classic mode when the device is in supervised mode (iOS 9.3 and later and macOS 10.12 and later).|
|iTunesBlockRadio|Boolean|Indicates whether or not to block the user from using iTunes Radio when the device is in supervised mode (iOS 9.3 and later).|
|keyboardBlockAutoCorrect|Boolean|Indicates whether or not to block keyboard auto-correction when the device is in supervised mode (iOS 8.1.3 and later).|
|keyboardBlockDictation|Boolean|Indicates whether or not to block the user from using dictation input when the device is in supervised mode.|
|keyboardBlockPredictive|Boolean|Indicates whether or not to block predictive keyboards when device is in supervised mode (iOS 8.1.3 and later).|
|keyboardBlockShortcuts|Boolean|Indicates whether or not to block keyboard shortcuts when the device is in supervised mode (iOS 9.0 and later).|
|keyboardBlockSpellCheck|Boolean|Indicates whether or not to block keyboard spell-checking when the device is in supervised mode (iOS 8.1.3 and later).|
|kioskModeAllowAssistiveSpeak|Boolean|Indicates whether or not to allow assistive speak while in kiosk mode.|
|kioskModeAllowAssistiveTouchSettings|Boolean|Indicates whether or not to allow access to the Assistive Touch Settings while in kiosk mode.|
|kioskModeAllowAutoLock|Boolean|Indicates whether or not to allow device auto lock while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockAutoLock instead.|
|kioskModeAllowColorInversionSettings|Boolean|Indicates whether or not to allow access to the Color Inversion Settings while in kiosk mode.|
|kioskModeAllowRingerSwitch|Boolean|Indicates whether or not to allow use of the ringer switch while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockRingerSwitch instead.|
|kioskModeAllowScreenRotation|Boolean|Indicates whether or not to allow screen rotation while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockScreenRotation instead.|
|kioskModeAllowSleepButton|Boolean|Indicates whether or not to allow use of the sleep button while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockSleepButton instead.|
|kioskModeAllowTouchscreen|Boolean|Indicates whether or not to allow use of the touchscreen while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockTouchscreen instead.|
|kioskModeAllowVoiceOverSettings|Boolean|Indicates whether or not to allow access to the voice over settings while in kiosk mode.|
|kioskModeAllowVolumeButtons|Boolean|Indicates whether or not to allow use of the volume buttons while in kiosk mode. This property's functionality is redundant with the OS default and is deprecated. Use KioskModeBlockVolumeButtons instead.|
|kioskModeAllowZoomSettings|Boolean|Indicates whether or not to allow access to the zoom settings while in kiosk mode.|
|kioskModeAppStoreUrl|String|URL in the app store to the app to use for kiosk mode. Use if KioskModeManagedAppId is not known.|
|kioskModeBuiltInAppId|String|ID for built-in apps to use for kiosk mode. Used when KioskModeManagedAppId and KioskModeAppStoreUrl are not set.|
|kioskModeRequireAssistiveTouch|Boolean|Indicates whether or not to require assistive touch while in kiosk mode.|
|kioskModeRequireColorInversion|Boolean|Indicates whether or not to require color inversion while in kiosk mode.|
|kioskModeRequireMonoAudio|Boolean|Indicates whether or not to require mono audio while in kiosk mode.|
|kioskModeRequireVoiceOver|Boolean|Indicates whether or not to require voice over while in kiosk mode.|
|kioskModeRequireZoom|Boolean|Indicates whether or not to require zoom while in kiosk mode.|
|kioskModeManagedAppId|String|Managed app id of the app to use for kiosk mode. If KioskModeManagedAppId is specified then KioskModeAppStoreUrl will be ignored.|
|lockScreenBlockControlCenter|Boolean|Indicates whether or not to block the user from using control center on the lock screen.|
|lockScreenBlockNotificationView|Boolean|Indicates whether or not to block the user from using the notification view on the lock screen.|
|lockScreenBlockPassbook|Boolean|Indicates whether or not to block the user from using passbook when the device is locked.|
|lockScreenBlockTodayView|Boolean|Indicates whether or not to block the user from using the Today View on the lock screen.|
|mediaContentRatingAustralia|[mediaContentRatingAustralia](../resources/intune-deviceconfig-mediacontentratingaustralia.md)|Media content rating settings for Australia|
|mediaContentRatingCanada|[mediaContentRatingCanada](../resources/intune-deviceconfig-mediacontentratingcanada.md)|Media content rating settings for Canada|
|mediaContentRatingFrance|[mediaContentRatingFrance](../resources/intune-deviceconfig-mediacontentratingfrance.md)|Media content rating settings for France|
|mediaContentRatingGermany|[mediaContentRatingGermany](../resources/intune-deviceconfig-mediacontentratinggermany.md)|Media content rating settings for Germany|
|mediaContentRatingIreland|[mediaContentRatingIreland](../resources/intune-deviceconfig-mediacontentratingireland.md)|Media content rating settings for Ireland|
|mediaContentRatingJapan|[mediaContentRatingJapan](../resources/intune-deviceconfig-mediacontentratingjapan.md)|Media content rating settings for Japan|
|mediaContentRatingNewZealand|[mediaContentRatingNewZealand](../resources/intune-deviceconfig-mediacontentratingnewzealand.md)|Media content rating settings for New Zealand|
|mediaContentRatingUnitedKingdom|[mediaContentRatingUnitedKingdom](../resources/intune-deviceconfig-mediacontentratingunitedkingdom.md)|Media content rating settings for United Kingdom|
|mediaContentRatingUnitedStates|[mediaContentRatingUnitedStates](../resources/intune-deviceconfig-mediacontentratingunitedstates.md)|Media content rating settings for United States|
|networkUsageRules|[iosNetworkUsageRule](../resources/intune-deviceconfig-iosnetworkusagerule.md) collection|List of managed apps and the network rules that applies to them. This collection can contain a maximum of 1000 elements.|
|mediaContentRatingApps|[ratingAppsType](../resources/intune-deviceconfig-ratingappstype.md)|Media content rating settings for Apps. Possible values are: `allAllowed`, `allBlocked`, `agesAbove4`, `agesAbove9`, `agesAbove12`, `agesAbove17`.|
|messagesBlocked|Boolean|Indicates whether or not to block the user from using the Messages app on the supervised device.|
|notificationsBlockSettingsModification|Boolean|Indicates whether or not to allow notifications settings modification (iOS 9.3 and later).|
|passcodeBlockFingerprintUnlock|Boolean|Indicates whether or not to block fingerprint unlock.|
|passcodeBlockFingerprintModification|Boolean|Block modification of registered Touch ID fingerprints when in supervised mode.|
|passcodeBlockModification|Boolean|Indicates whether or not to allow passcode modification on the supervised device (iOS 9.0 and later).|
|passcodeBlockSimple|Boolean|Indicates whether or not to block simple passcodes.|
|passcodeExpirationDays|Int32|Number of days before the passcode expires. Valid values 1 to 65535|
|passcodeMinimumLength|Int32|Minimum length of passcode. Valid values 4 to 14|
|passcodeMinutesOfInactivityBeforeLock|Int32|Minutes of inactivity before a passcode is required.|
|passcodeMinutesOfInactivityBeforeScreenTimeout|Int32|Minutes of inactivity before the screen times out.|
|passcodeMinimumCharacterSetCount|Int32|Number of character sets a passcode must contain. Valid values 0 to 4|
|passcodePreviousPasscodeBlockCount|Int32|Number of previous passcodes to block. Valid values 1 to 24|
|passcodeSignInFailureCountBeforeWipe|Int32|Number of sign in failures allowed before wiping the device. Valid values 2 to 11|
|passcodeRequiredType|[requiredPasswordType](../resources/intune-deviceconfig-requiredpasswordtype.md)|Type of passcode that is required. Possible values are: `deviceDefault`, `alphanumeric`, `numeric`.|
|passcodeRequired|Boolean|Indicates whether or not to require a passcode.|
|podcastsBlocked|Boolean|Indicates whether or not to block the user from using podcasts on the supervised device (iOS 8.0 and later).|
|safariBlockAutofill|Boolean|Indicates whether or not to block the user from using Auto fill in Safari. Requires a supervised device for iOS 13 and later.|
|safariBlockJavaScript|Boolean|Indicates whether or not to block JavaScript in Safari.|
|safariBlockPopups|Boolean|Indicates whether or not to block popups in Safari.|
|safariBlocked|Boolean|Indicates whether or not to block the user from using Safari. Requires a supervised device for iOS 13 and later.|
|safariCookieSettings|[webBrowserCookieSettings](../resources/intune-deviceconfig-webbrowsercookiesettings.md)|Cookie settings for Safari. Possible values are: `browserDefault`, `blockAlways`, `allowCurrentWebSite`, `allowFromWebsitesVisited`, `allowAlways`.|
|safariManagedDomains|String collection|URLs matching the patterns listed here will be considered managed.|
|safariPasswordAutoFillDomains|String collection|Users can save passwords in Safari only from URLs matching the patterns listed here. Applies to devices in supervised mode (iOS 9.3 and later).|
|safariRequireFraudWarning|Boolean|Indicates whether or not to require fraud warning in Safari.|
|screenCaptureBlocked|Boolean|Indicates whether or not to block the user from taking Screenshots.|
|siriBlocked|Boolean|Indicates whether or not to block the user from using Siri.|
|siriBlockedWhenLocked|Boolean|Indicates whether or not to block the user from using Siri when locked.|
|siriBlockUserGeneratedContent|Boolean|Indicates whether or not to block Siri from querying user-generated content when used on a supervised device.|
|siriRequireProfanityFilter|Boolean|Indicates whether or not to prevent Siri from dictating, or speaking profane language on supervised device.|
|spotlightBlockInternetResults|Boolean|Indicates whether or not to block Spotlight search from returning internet results on supervised device.|
|voiceDialingBlocked|Boolean|Indicates whether or not to block voice dialing.|
|wallpaperBlockModification|Boolean|Indicates whether or not to allow wallpaper modification on supervised device (iOS 9.0 and later) .|
|wiFiConnectOnlyToConfiguredNetworks|Boolean|Indicates whether or not to force the device to use only Wi-Fi networks from configuration profiles when the device is in supervised mode. Available for devices running iOS and iPadOS versions 14.4 and earlier. Devices running 14.5+ should use the setting, “WiFiConnectToAllowedNetworksOnlyForced.|



## Response
If successful, this method returns a `200 OK` response code and an updated [iosGeneralDeviceConfiguration](../resources/intune-deviceconfig-iosgeneraldeviceconfiguration.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_deviceconfig_iosgeneraldeviceconfiguration_update_update_iosgeneraldeviceconfiguration" }-->
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement/deviceConfigurations/{deviceConfigurationId}
Content-type: application/json
Content-length: 7841

{
  "@odata.type": "#microsoft.graph.iosGeneralDeviceConfiguration",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "accountBlockModification": true,
  "activationLockAllowWhenSupervised": true,
  "airDropBlocked": true,
  "airDropForceUnmanagedDropTarget": true,
  "airPlayForcePairingPasswordForOutgoingRequests": true,
  "appleWatchBlockPairing": true,
  "appleWatchForceWristDetection": true,
  "appleNewsBlocked": true,
  "appsSingleAppModeList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "appsVisibilityList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "appsVisibilityListType": "appsInListCompliant",
  "appStoreBlockAutomaticDownloads": true,
  "appStoreBlocked": true,
  "appStoreBlockInAppPurchases": true,
  "appStoreBlockUIAppInstallation": true,
  "appStoreRequirePassword": true,
  "bluetoothBlockModification": true,
  "cameraBlocked": true,
  "cellularBlockDataRoaming": true,
  "cellularBlockGlobalBackgroundFetchWhileRoaming": true,
  "cellularBlockPerAppDataModification": true,
  "cellularBlockPersonalHotspot": true,
  "cellularBlockVoiceRoaming": true,
  "certificatesBlockUntrustedTlsCertificates": true,
  "classroomAppBlockRemoteScreenObservation": true,
  "classroomAppForceUnpromptedScreenObservation": true,
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "compliantAppListType": "appsInListCompliant",
  "configurationProfileBlockChanges": true,
  "definitionLookupBlocked": true,
  "deviceBlockEnableRestrictions": true,
  "deviceBlockEraseContentAndSettings": true,
  "deviceBlockNameModification": true,
  "diagnosticDataBlockSubmission": true,
  "diagnosticDataBlockSubmissionModification": true,
  "documentsBlockManagedDocumentsInUnmanagedApps": true,
  "documentsBlockUnmanagedDocumentsInManagedApps": true,
  "emailInDomainSuffixes": [
    "Email In Domain Suffixes value"
  ],
  "enterpriseAppBlockTrust": true,
  "enterpriseAppBlockTrustModification": true,
  "faceTimeBlocked": true,
  "findMyFriendsBlocked": true,
  "gamingBlockGameCenterFriends": true,
  "gamingBlockMultiplayer": true,
  "gameCenterBlocked": true,
  "hostPairingBlocked": true,
  "iBooksStoreBlocked": true,
  "iBooksStoreBlockErotica": true,
  "iCloudBlockActivityContinuation": true,
  "iCloudBlockBackup": true,
  "iCloudBlockDocumentSync": true,
  "iCloudBlockManagedAppsSync": true,
  "iCloudBlockPhotoLibrary": true,
  "iCloudBlockPhotoStreamSync": true,
  "iCloudBlockSharedPhotoStream": true,
  "iCloudRequireEncryptedBackup": true,
  "iTunesBlockExplicitContent": true,
  "iTunesBlockMusicService": true,
  "iTunesBlockRadio": true,
  "keyboardBlockAutoCorrect": true,
  "keyboardBlockDictation": true,
  "keyboardBlockPredictive": true,
  "keyboardBlockShortcuts": true,
  "keyboardBlockSpellCheck": true,
  "kioskModeAllowAssistiveSpeak": true,
  "kioskModeAllowAssistiveTouchSettings": true,
  "kioskModeAllowAutoLock": true,
  "kioskModeAllowColorInversionSettings": true,
  "kioskModeAllowRingerSwitch": true,
  "kioskModeAllowScreenRotation": true,
  "kioskModeAllowSleepButton": true,
  "kioskModeAllowTouchscreen": true,
  "kioskModeAllowVoiceOverSettings": true,
  "kioskModeAllowVolumeButtons": true,
  "kioskModeAllowZoomSettings": true,
  "kioskModeAppStoreUrl": "https://example.com/kioskModeAppStoreUrl/",
  "kioskModeBuiltInAppId": "Kiosk Mode Built In App Id value",
  "kioskModeRequireAssistiveTouch": true,
  "kioskModeRequireColorInversion": true,
  "kioskModeRequireMonoAudio": true,
  "kioskModeRequireVoiceOver": true,
  "kioskModeRequireZoom": true,
  "kioskModeManagedAppId": "Kiosk Mode Managed App Id value",
  "lockScreenBlockControlCenter": true,
  "lockScreenBlockNotificationView": true,
  "lockScreenBlockPassbook": true,
  "lockScreenBlockTodayView": true,
  "mediaContentRatingAustralia": {
    "@odata.type": "microsoft.graph.mediaContentRatingAustralia",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingCanada": {
    "@odata.type": "microsoft.graph.mediaContentRatingCanada",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingFrance": {
    "@odata.type": "microsoft.graph.mediaContentRatingFrance",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingGermany": {
    "@odata.type": "microsoft.graph.mediaContentRatingGermany",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingIreland": {
    "@odata.type": "microsoft.graph.mediaContentRatingIreland",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingJapan": {
    "@odata.type": "microsoft.graph.mediaContentRatingJapan",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingNewZealand": {
    "@odata.type": "microsoft.graph.mediaContentRatingNewZealand",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingUnitedKingdom": {
    "@odata.type": "microsoft.graph.mediaContentRatingUnitedKingdom",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingUnitedStates": {
    "@odata.type": "microsoft.graph.mediaContentRatingUnitedStates",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "networkUsageRules": [
    {
      "@odata.type": "microsoft.graph.iosNetworkUsageRule",
      "managedApps": [
        {
          "@odata.type": "microsoft.graph.appListItem",
          "name": "Name value",
          "publisher": "Publisher value",
          "appStoreUrl": "https://example.com/appStoreUrl/",
          "appId": "App Id value"
        }
      ],
      "cellularDataBlockWhenRoaming": true,
      "cellularDataBlocked": true
    }
  ],
  "mediaContentRatingApps": "allBlocked",
  "messagesBlocked": true,
  "notificationsBlockSettingsModification": true,
  "passcodeBlockFingerprintUnlock": true,
  "passcodeBlockFingerprintModification": true,
  "passcodeBlockModification": true,
  "passcodeBlockSimple": true,
  "passcodeExpirationDays": 6,
  "passcodeMinimumLength": 5,
  "passcodeMinutesOfInactivityBeforeLock": 5,
  "passcodeMinutesOfInactivityBeforeScreenTimeout": 14,
  "passcodeMinimumCharacterSetCount": 0,
  "passcodePreviousPasscodeBlockCount": 2,
  "passcodeSignInFailureCountBeforeWipe": 4,
  "passcodeRequiredType": "alphanumeric",
  "passcodeRequired": true,
  "podcastsBlocked": true,
  "safariBlockAutofill": true,
  "safariBlockJavaScript": true,
  "safariBlockPopups": true,
  "safariBlocked": true,
  "safariCookieSettings": "blockAlways",
  "safariManagedDomains": [
    "Safari Managed Domains value"
  ],
  "safariPasswordAutoFillDomains": [
    "Safari Password Auto Fill Domains value"
  ],
  "safariRequireFraudWarning": true,
  "screenCaptureBlocked": true,
  "siriBlocked": true,
  "siriBlockedWhenLocked": true,
  "siriBlockUserGeneratedContent": true,
  "siriRequireProfanityFilter": true,
  "spotlightBlockInternetResults": true,
  "voiceDialingBlocked": true,
  "wallpaperBlockModification": true,
  "wiFiConnectOnlyToConfiguredNetworks": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-deviceconfig-iosgeneraldeviceconfiguration-update-update-iosgeneraldeviceconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.iosGeneralDeviceConfiguration" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 8013

{
  "@odata.type": "#microsoft.graph.iosGeneralDeviceConfiguration",
  "id": "ebba5202-5202-ebba-0252-baeb0252baeb",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "accountBlockModification": true,
  "activationLockAllowWhenSupervised": true,
  "airDropBlocked": true,
  "airDropForceUnmanagedDropTarget": true,
  "airPlayForcePairingPasswordForOutgoingRequests": true,
  "appleWatchBlockPairing": true,
  "appleWatchForceWristDetection": true,
  "appleNewsBlocked": true,
  "appsSingleAppModeList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "appsVisibilityList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "appsVisibilityListType": "appsInListCompliant",
  "appStoreBlockAutomaticDownloads": true,
  "appStoreBlocked": true,
  "appStoreBlockInAppPurchases": true,
  "appStoreBlockUIAppInstallation": true,
  "appStoreRequirePassword": true,
  "bluetoothBlockModification": true,
  "cameraBlocked": true,
  "cellularBlockDataRoaming": true,
  "cellularBlockGlobalBackgroundFetchWhileRoaming": true,
  "cellularBlockPerAppDataModification": true,
  "cellularBlockPersonalHotspot": true,
  "cellularBlockVoiceRoaming": true,
  "certificatesBlockUntrustedTlsCertificates": true,
  "classroomAppBlockRemoteScreenObservation": true,
  "classroomAppForceUnpromptedScreenObservation": true,
  "compliantAppsList": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "Name value",
      "publisher": "Publisher value",
      "appStoreUrl": "https://example.com/appStoreUrl/",
      "appId": "App Id value"
    }
  ],
  "compliantAppListType": "appsInListCompliant",
  "configurationProfileBlockChanges": true,
  "definitionLookupBlocked": true,
  "deviceBlockEnableRestrictions": true,
  "deviceBlockEraseContentAndSettings": true,
  "deviceBlockNameModification": true,
  "diagnosticDataBlockSubmission": true,
  "diagnosticDataBlockSubmissionModification": true,
  "documentsBlockManagedDocumentsInUnmanagedApps": true,
  "documentsBlockUnmanagedDocumentsInManagedApps": true,
  "emailInDomainSuffixes": [
    "Email In Domain Suffixes value"
  ],
  "enterpriseAppBlockTrust": true,
  "enterpriseAppBlockTrustModification": true,
  "faceTimeBlocked": true,
  "findMyFriendsBlocked": true,
  "gamingBlockGameCenterFriends": true,
  "gamingBlockMultiplayer": true,
  "gameCenterBlocked": true,
  "hostPairingBlocked": true,
  "iBooksStoreBlocked": true,
  "iBooksStoreBlockErotica": true,
  "iCloudBlockActivityContinuation": true,
  "iCloudBlockBackup": true,
  "iCloudBlockDocumentSync": true,
  "iCloudBlockManagedAppsSync": true,
  "iCloudBlockPhotoLibrary": true,
  "iCloudBlockPhotoStreamSync": true,
  "iCloudBlockSharedPhotoStream": true,
  "iCloudRequireEncryptedBackup": true,
  "iTunesBlockExplicitContent": true,
  "iTunesBlockMusicService": true,
  "iTunesBlockRadio": true,
  "keyboardBlockAutoCorrect": true,
  "keyboardBlockDictation": true,
  "keyboardBlockPredictive": true,
  "keyboardBlockShortcuts": true,
  "keyboardBlockSpellCheck": true,
  "kioskModeAllowAssistiveSpeak": true,
  "kioskModeAllowAssistiveTouchSettings": true,
  "kioskModeAllowAutoLock": true,
  "kioskModeAllowColorInversionSettings": true,
  "kioskModeAllowRingerSwitch": true,
  "kioskModeAllowScreenRotation": true,
  "kioskModeAllowSleepButton": true,
  "kioskModeAllowTouchscreen": true,
  "kioskModeAllowVoiceOverSettings": true,
  "kioskModeAllowVolumeButtons": true,
  "kioskModeAllowZoomSettings": true,
  "kioskModeAppStoreUrl": "https://example.com/kioskModeAppStoreUrl/",
  "kioskModeBuiltInAppId": "Kiosk Mode Built In App Id value",
  "kioskModeRequireAssistiveTouch": true,
  "kioskModeRequireColorInversion": true,
  "kioskModeRequireMonoAudio": true,
  "kioskModeRequireVoiceOver": true,
  "kioskModeRequireZoom": true,
  "kioskModeManagedAppId": "Kiosk Mode Managed App Id value",
  "lockScreenBlockControlCenter": true,
  "lockScreenBlockNotificationView": true,
  "lockScreenBlockPassbook": true,
  "lockScreenBlockTodayView": true,
  "mediaContentRatingAustralia": {
    "@odata.type": "microsoft.graph.mediaContentRatingAustralia",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingCanada": {
    "@odata.type": "microsoft.graph.mediaContentRatingCanada",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingFrance": {
    "@odata.type": "microsoft.graph.mediaContentRatingFrance",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingGermany": {
    "@odata.type": "microsoft.graph.mediaContentRatingGermany",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingIreland": {
    "@odata.type": "microsoft.graph.mediaContentRatingIreland",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingJapan": {
    "@odata.type": "microsoft.graph.mediaContentRatingJapan",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingNewZealand": {
    "@odata.type": "microsoft.graph.mediaContentRatingNewZealand",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingUnitedKingdom": {
    "@odata.type": "microsoft.graph.mediaContentRatingUnitedKingdom",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "mediaContentRatingUnitedStates": {
    "@odata.type": "microsoft.graph.mediaContentRatingUnitedStates",
    "movieRating": "allBlocked",
    "tvRating": "allBlocked"
  },
  "networkUsageRules": [
    {
      "@odata.type": "microsoft.graph.iosNetworkUsageRule",
      "managedApps": [
        {
          "@odata.type": "microsoft.graph.appListItem",
          "name": "Name value",
          "publisher": "Publisher value",
          "appStoreUrl": "https://example.com/appStoreUrl/",
          "appId": "App Id value"
        }
      ],
      "cellularDataBlockWhenRoaming": true,
      "cellularDataBlocked": true
    }
  ],
  "mediaContentRatingApps": "allBlocked",
  "messagesBlocked": true,
  "notificationsBlockSettingsModification": true,
  "passcodeBlockFingerprintUnlock": true,
  "passcodeBlockFingerprintModification": true,
  "passcodeBlockModification": true,
  "passcodeBlockSimple": true,
  "passcodeExpirationDays": 6,
  "passcodeMinimumLength": 5,
  "passcodeMinutesOfInactivityBeforeLock": 5,
  "passcodeMinutesOfInactivityBeforeScreenTimeout": 14,
  "passcodeMinimumCharacterSetCount": 0,
  "passcodePreviousPasscodeBlockCount": 2,
  "passcodeSignInFailureCountBeforeWipe": 4,
  "passcodeRequiredType": "alphanumeric",
  "passcodeRequired": true,
  "podcastsBlocked": true,
  "safariBlockAutofill": true,
  "safariBlockJavaScript": true,
  "safariBlockPopups": true,
  "safariBlocked": true,
  "safariCookieSettings": "blockAlways",
  "safariManagedDomains": [
    "Safari Managed Domains value"
  ],
  "safariPasswordAutoFillDomains": [
    "Safari Password Auto Fill Domains value"
  ],
  "safariRequireFraudWarning": true,
  "screenCaptureBlocked": true,
  "siriBlocked": true,
  "siriBlockedWhenLocked": true,
  "siriBlockUserGeneratedContent": true,
  "siriRequireProfanityFilter": true,
  "spotlightBlockInternetResults": true,
  "voiceDialingBlocked": true,
  "wallpaperBlockModification": true,
  "wiFiConnectOnlyToConfiguredNetworks": true
}
```
