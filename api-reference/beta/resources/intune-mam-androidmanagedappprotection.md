---
title: "androidManagedAppProtection resource type"
description: "Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on an Android device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidManagedAppProtection resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on an Android device


Inherits from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidManagedAppProtections](../api/intune-mam-androidmanagedappprotection-list.md)|[androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) collection|List properties and relationships of the [androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) objects.|
|[Get androidManagedAppProtection](../api/intune-mam-androidmanagedappprotection-get.md)|[androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md)|Read properties and relationships of the [androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) object.|
|[Create androidManagedAppProtection](../api/intune-mam-androidmanagedappprotection-create.md)|[androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md)|Create a new [androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) object.|
|[Delete androidManagedAppProtection](../api/intune-mam-androidmanagedappprotection-delete.md)|None|Deletes a [androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md).|
|[Update androidManagedAppProtection](../api/intune-mam-androidmanagedappprotection-update.md)|[androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md)|Update the properties of a [androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|periodOfflineBeforeAccessCheck|Duration|The period after which access is checked when the device is not connected to the internet. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|periodOnlineBeforeAccessCheck|Duration|The period after which access is checked when the device is connected to the internet. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedInboundDataTransferSources|[managedAppDataTransferLevel](../resources/intune-mam-managedappdatatransferlevel.md)|Sources from which data is allowed to be transferred. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allApps`, `managedApps`, `none`.|
|allowedOutboundDataTransferDestinations|[managedAppDataTransferLevel](../resources/intune-mam-managedappdatatransferlevel.md)|Destinations to which data is allowed to be transferred. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allApps`, `managedApps`, `none`.|
|organizationalCredentialsRequired|Boolean|Indicates whether organizational credentials are required for app use. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedOutboundClipboardSharingLevel|[managedAppClipboardSharingLevel](../resources/intune-mam-managedappclipboardsharinglevel.md)|The level to which the clipboard may be shared between apps on the managed device. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allApps`, `managedAppsWithPasteIn`, `managedApps`, `blocked`.|
|dataBackupBlocked|Boolean|Indicates whether the backup of a managed app's data is blocked. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|deviceComplianceRequired|Boolean|Indicates whether device compliance is required. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|managedBrowserToOpenLinksRequired|Boolean|Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android) Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|saveAsBlocked|Boolean|Indicates whether users may use the "Save As" menu item to save a copy of protected files. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|pinRequired|Boolean|Indicates whether an app-level pin is required. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|maximumPinRetries|Int32|Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|simplePinBlocked|Boolean|Indicates whether simplePin is blocked. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumPinLength|Int32|Minimum pin length required for an app-level pin if PinRequired is set to True Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|pinCharacterSet|[managedAppPinCharacterSet](../resources/intune-mam-managedapppincharacterset.md)|Character set which may be used for an app-level pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `numeric`, `alphanumericAndSymbol`.|
|periodBeforePinReset|Duration|TimePeriod before the all-level pin must be reset if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedDataStorageLocations|[managedAppDataStorageLocation](../resources/intune-mam-managedappdatastoragelocation.md) collection|Data storage locations where a user may store managed data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|contactSyncBlocked|Boolean|Indicates whether contacts can be synced to the user's device. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|printBlocked|Boolean|Indicates whether printing is allowed from managed apps. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|fingerprintBlocked|Boolean|Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|disableAppPinIfDevicePinIsSet|Boolean|Indicates whether use of the app pin is required if the device pin is set. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|maximumRequiredOsVersion|String|Versions bigger than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|maximumWarningOsVersion|String|Versions bigger than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|maximumWipeOsVersion|String|Versions bigger than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumRequiredOsVersion|String|Versions less than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWarningOsVersion|String|Versions less than the specified version will result in warning message on the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumRequiredAppVersion|String|Versions less than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWarningAppVersion|String|Versions less than the specified version will result in warning message on the managed app. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWipeOsVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWipeAppVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|appActionIfDeviceComplianceRequired|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, when the device is either rooted or jailbroken, if DeviceComplianceRequired is set to true. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|appActionIfMaximumPinRetriesExceeded|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, based on maximum number of incorrect pin retry attempts. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|pinRequiredInsteadOfBiometricTimeout|Duration|Timeout in minutes for an app pin instead of non biometrics passcode Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedOutboundClipboardSharingExceptionLength|Int32|Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|notificationRestriction|[managedAppNotificationRestriction](../resources/intune-mam-managedappnotificationrestriction.md)|Specify app notification restriction Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allow`, `blockOrganizationalData`, `block`.|
|previousPinBlockCount|Int32|Requires a pin to be unique from the number specified in this property. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|managedBrowser|[managedBrowserType](../resources/intune-mam-managedbrowsertype.md)|Indicates in which managed browser(s) that internet links should be opened. When this property is configured, ManagedBrowserToOpenLinksRequired should be true. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `notConfigured`, `microsoftEdge`.|
|maximumAllowedDeviceThreatLevel|[managedAppDeviceThreatLevel](../resources/intune-mam-managedappdevicethreatlevel.md)|Maximum allowed device threat level, as reported by the MTD app Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `notConfigured`, `secured`, `low`, `medium`, `high`.|
|mobileThreatDefenseRemediationAction|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Determines what action to take if the mobile threat defense threat threshold isn't met. Warn isn't a supported value for this property Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|mobileThreatDefensePartnerPriority|[mobileThreatDefensePartnerPriority](../resources/intune-mam-mobilethreatdefensepartnerpriority.md)| Indicates how to prioritize which Mobile Threat Defense (MTD) partner is enabled for a given platform, when more than one is enabled. An app can only be actively using a single Mobile Threat Defense partner. When NULL, Microsoft Defender will be given preference. Otherwise setting the value to defenderOverThirdPartyPartner or thirdPartyPartnerOverDefender will make explicit which partner to prioritize. Possible values are: null, defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender and unknownFutureValue. Default value is null Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `defenderOverThirdPartyPartner`, `thirdPartyPartnerOverDefender`, `unknownFutureValue`.|
|blockDataIngestionIntoOrganizationDocuments|Boolean|Indicates whether a user can bring data into org documents. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedDataIngestionLocations|[managedAppDataIngestionLocation](../resources/intune-mam-managedappdataingestionlocation.md) collection|Data storage locations where a user may store managed data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|appActionIfUnableToAuthenticateUser|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|dialerRestrictionLevel|[managedAppPhoneNumberRedirectLevel](../resources/intune-mam-managedappphonenumberredirectlevel.md)|The classes of dialer apps that are allowed to click-to-open a phone number. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allApps`, `managedApps`, `customApp`, `blocked`.|
|gracePeriodToBlockAppsDuringOffClockHours|Duration|A grace period before blocking app access during off clock hours. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|protectedMessagingRedirectAppType|[messagingRedirectAppType](../resources/intune-mam-messagingredirectapptype.md)|Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `anyApp`, `anyManagedApp`, `specificApps`, `blocked`.|
|isAssigned|Boolean|Indicates if the policy is deployed to any inclusion groups or not. Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md)|
|targetedAppManagementLevels|[appManagementLevel](../resources/intune-mam-appmanagementlevel.md)|The intended app management levels for this policy Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md). Possible values are: `unspecified`, `unmanaged`, `mdm`, `androidEnterprise`, `androidEnterpriseDedicatedDevicesWithAzureAdSharedMode`, `androidOpenSourceProjectUserAssociated`, `androidOpenSourceProjectUserless`, `unknownFutureValue`.|
|appGroupType|[targetedManagedAppGroupType](../resources/intune-mam-targetedmanagedappgrouptype.md)|Public Apps selection: group or individual Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md). Possible values are: `selectedPublicApps`, `allCoreMicrosoftApps`, `allMicrosoftApps`, `allApps`.|
|screenCaptureBlocked|Boolean|Indicates whether a managed user can take screen captures of managed apps|
|disableAppEncryptionIfDeviceEncryptionIsEnabled|Boolean|When this setting is enabled, app level encryption is disabled if device level encryption is enabled|
|encryptAppData|Boolean|Indicates whether application data for managed apps should be encrypted|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|minimumRequiredPatchVersion|String|Define the oldest required Android security patch level a user can have to gain secure access to the app.|
|minimumWarningPatchVersion|String|Define the oldest recommended Android security patch level a user can have for secure access to the app.|
|exemptedAppPackages|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|App packages in this list will be exempt from the policy and will be able to receive data from managed apps.|
|minimumWipePatchVersion|String|Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data.|
|allowedAndroidDeviceManufacturers|String|Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work.|
|appActionIfAndroidDeviceManufacturerNotAllowed|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, if the specified device manufacturer is not allowed. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|appActionIfAccountIsClockedOut|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time). Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|appActionIfSamsungKnoxAttestationRequired|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines the behavior of a managed app when Samsung Knox Attestation is required. Possible values are null, warn, block & wipe. If the admin does not set this action, the default is null, which indicates this setting is not configured. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|requiredAndroidSafetyNetDeviceAttestationType|[androidManagedAppSafetyNetDeviceAttestationType](../resources/intune-mam-androidmanagedappsafetynetdeviceattestationtype.md)|Defines the Android SafetyNet Device Attestation requirement for a managed app to work. Possible values are: `none`, `basicIntegrity`, `basicIntegrityAndDeviceCertification`.|
|appActionIfAndroidSafetyNetDeviceAttestationFailed|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either warn or block, if the specified Android SafetyNet Attestation requirement fails. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|requiredAndroidSafetyNetAppsVerificationType|[androidManagedAppSafetyNetAppsVerificationType](../resources/intune-mam-androidmanagedappsafetynetappsverificationtype.md)|Defines the Android SafetyNet Apps Verification requirement for a managed app to work. Possible values are: `none`, `enabled`.|
|appActionIfAndroidSafetyNetAppsVerificationFailed|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either warn or block, if the specified Android App Verification requirement fails. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|customBrowserPackageId|String|Unique identifier of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.|
|customBrowserDisplayName|String|Friendly name of the preferred custom browser to open weblink on Android. When this property is configured, ManagedBrowserToOpenLinksRequired should be true.|
|minimumRequiredCompanyPortalVersion|String|Minimum version of the Company portal that must be installed on the device or app access will be blocked|
|minimumWarningCompanyPortalVersion|String|Minimum version of the Company portal that must be installed on the device or the user will receive a warning|
|minimumWipeCompanyPortalVersion|String|Minimum version of the Company portal that must be installed on the device or the company data on the app will be wiped|
|keyboardsRestricted|Boolean|Indicates if keyboard restriction is enabled. If enabled list of approved keyboards must be provided as well.|
|approvedKeyboards|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|If Keyboard Restriction is enabled, only keyboards in this approved list will be allowed. A key should be Android package id for a keyboard and value should be a friendly name|
|allowedAndroidDeviceModels|String collection|List of device models allowed, as a string, for the managed app to work.|
|appActionIfAndroidDeviceModelNotAllowed|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, if the specified device model is not allowed. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|customDialerAppPackageId|String|PackageId of a custom dialer app to click-to-open a phone number on Android.|
|customDialerAppDisplayName|String|Friendly name of a custom dialer app to click-to-open a phone number on Android.|
|biometricAuthenticationBlocked|Boolean|Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True.|
|requiredAndroidSafetyNetEvaluationType|[androidManagedAppSafetyNetEvaluationType](../resources/intune-mam-androidmanagedappsafetynetevaluationtype.md)|Defines the Android SafetyNet evaluation type requirement for a managed app to work. Possible values are: `basic`, `hardwareBacked`.|
|blockAfterCompanyPortalUpdateDeferralInDays|Int32|Maximum number of days Company Portal update can be deferred on the device or app access will be blocked.|
|warnAfterCompanyPortalUpdateDeferralInDays|Int32|Maximum number of days Company Portal update can be deferred on the device or the user will receive the warning|
|wipeAfterCompanyPortalUpdateDeferralInDays|Int32|Maximum number of days Company Portal update can be deferred on the device or the company data on the app will be wiped|
|deviceLockRequired|Boolean|Defines if any kind of lock must be required on android device|
|appActionIfDeviceLockNotSet|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either warn, block or wipe, if the screen lock is required on android device but is not set. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|connectToVpnOnLaunch|Boolean|Whether the app should connect to the configured VPN on launch.|
|appActionIfDevicePasscodeComplexityLessThanLow|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If the device does not have a passcode of low complexity or higher, trigger the stored action. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|appActionIfDevicePasscodeComplexityLessThanMedium|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If the device does not have a passcode of medium complexity or higher, trigger the stored action. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|appActionIfDevicePasscodeComplexityLessThanHigh|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If the device does not have a passcode of high complexity or higher, trigger the stored action. Possible values are: `block`, `wipe`, `warn`, `blockWhenSettingIsSupported`.|
|requireClass3Biometrics|Boolean|Require user to apply Class 3 Biometrics on their Android device.|
|requirePinAfterBiometricChange|Boolean|A PIN prompt will override biometric prompts if class 3 biometrics are updated on the device.|
|fingerprintAndBiometricEnabled|Boolean|If null, this setting will be ignored. If false both fingerprints and biometrics will not be enabled. If true, both fingerprints and biometrics will be enabled.|
|messagingRedirectAppPackageId|String|When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app package id which is allowed to be used.|
|messagingRedirectAppDisplayName|String|When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app name which is allowed to be used.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) collection|Navigation property to list of inclusion and exclusion groups to which the policy is deployed. Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md)|
|apps|[managedMobileApp](../resources/intune-mam-managedmobileapp.md) collection|List of apps to which the policy is deployed.|
|deploymentSummary|[managedAppPolicyDeploymentSummary](../resources/intune-mam-managedapppolicydeploymentsummary.md)|Navigation property to deployment summary of the configuration.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidManagedAppProtection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidManagedAppProtection",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "id": "String (identifier)",
  "version": "String",
  "periodOfflineBeforeAccessCheck": "String (duration)",
  "periodOnlineBeforeAccessCheck": "String (duration)",
  "allowedInboundDataTransferSources": "String",
  "allowedOutboundDataTransferDestinations": "String",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "String",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "String (duration)",
  "pinRequired": true,
  "maximumPinRetries": 1024,
  "simplePinBlocked": true,
  "minimumPinLength": 1024,
  "pinCharacterSet": "String",
  "periodBeforePinReset": "String (duration)",
  "allowedDataStorageLocations": [
    "String"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "disableAppPinIfDevicePinIsSet": true,
  "maximumRequiredOsVersion": "String",
  "maximumWarningOsVersion": "String",
  "maximumWipeOsVersion": "String",
  "minimumRequiredOsVersion": "String",
  "minimumWarningOsVersion": "String",
  "minimumRequiredAppVersion": "String",
  "minimumWarningAppVersion": "String",
  "minimumWipeOsVersion": "String",
  "minimumWipeAppVersion": "String",
  "appActionIfDeviceComplianceRequired": "String",
  "appActionIfMaximumPinRetriesExceeded": "String",
  "pinRequiredInsteadOfBiometricTimeout": "String (duration)",
  "allowedOutboundClipboardSharingExceptionLength": 1024,
  "notificationRestriction": "String",
  "previousPinBlockCount": 1024,
  "managedBrowser": "String",
  "maximumAllowedDeviceThreatLevel": "String",
  "mobileThreatDefenseRemediationAction": "String",
  "mobileThreatDefensePartnerPriority": "String",
  "blockDataIngestionIntoOrganizationDocuments": true,
  "allowedDataIngestionLocations": [
    "String"
  ],
  "appActionIfUnableToAuthenticateUser": "String",
  "dialerRestrictionLevel": "String",
  "gracePeriodToBlockAppsDuringOffClockHours": "String (duration)",
  "protectedMessagingRedirectAppType": "String",
  "isAssigned": true,
  "targetedAppManagementLevels": "String",
  "appGroupType": "String",
  "screenCaptureBlocked": true,
  "disableAppEncryptionIfDeviceEncryptionIsEnabled": true,
  "encryptAppData": true,
  "deployedAppCount": 1024,
  "minimumRequiredPatchVersion": "String",
  "minimumWarningPatchVersion": "String",
  "exemptedAppPackages": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "minimumWipePatchVersion": "String",
  "allowedAndroidDeviceManufacturers": "String",
  "appActionIfAndroidDeviceManufacturerNotAllowed": "String",
  "appActionIfAccountIsClockedOut": "String",
  "appActionIfSamsungKnoxAttestationRequired": "String",
  "requiredAndroidSafetyNetDeviceAttestationType": "String",
  "appActionIfAndroidSafetyNetDeviceAttestationFailed": "String",
  "requiredAndroidSafetyNetAppsVerificationType": "String",
  "appActionIfAndroidSafetyNetAppsVerificationFailed": "String",
  "customBrowserPackageId": "String",
  "customBrowserDisplayName": "String",
  "minimumRequiredCompanyPortalVersion": "String",
  "minimumWarningCompanyPortalVersion": "String",
  "minimumWipeCompanyPortalVersion": "String",
  "keyboardsRestricted": true,
  "approvedKeyboards": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "allowedAndroidDeviceModels": [
    "String"
  ],
  "appActionIfAndroidDeviceModelNotAllowed": "String",
  "customDialerAppPackageId": "String",
  "customDialerAppDisplayName": "String",
  "biometricAuthenticationBlocked": true,
  "requiredAndroidSafetyNetEvaluationType": "String",
  "blockAfterCompanyPortalUpdateDeferralInDays": 1024,
  "warnAfterCompanyPortalUpdateDeferralInDays": 1024,
  "wipeAfterCompanyPortalUpdateDeferralInDays": 1024,
  "deviceLockRequired": true,
  "appActionIfDeviceLockNotSet": "String",
  "connectToVpnOnLaunch": true,
  "appActionIfDevicePasscodeComplexityLessThanLow": "String",
  "appActionIfDevicePasscodeComplexityLessThanMedium": "String",
  "appActionIfDevicePasscodeComplexityLessThanHigh": "String",
  "requireClass3Biometrics": true,
  "requirePinAfterBiometricChange": true,
  "fingerprintAndBiometricEnabled": true,
  "messagingRedirectAppPackageId": "String",
  "messagingRedirectAppDisplayName": "String"
}
```