---
title: "Create iosManagedAppProtection"
description: "Create a new iosManagedAppProtection object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "Intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create iosManagedAppProtection

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) object.

        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Mobile app management (MAM)** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Policy Set** | DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Mobile app management (MAM)** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Policy Set** | DeviceManagementApps.ReadWrite.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/iosManagedAppProtections
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the iosManagedAppProtection object.

The following table shows the properties that are required when you create the iosManagedAppProtection.

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
|managedBrowserToOpenLinksRequired|Boolean|Indicates whether internet links should be opened in the managed browser app. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|saveAsBlocked|Boolean|Indicates whether users may use the "Save As" menu item to save a copy of protected files. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|pinRequired|Boolean|Indicates whether an app-level pin is required. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|maximumPinRetries|Int32|Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|simplePinBlocked|Boolean|Indicates whether simplePin is blocked. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumPinLength|Int32|Minimum pin length required for an app-level pin if PinRequired is set to True Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|pinCharacterSet|[managedAppPinCharacterSet](../resources/intune-mam-managedapppincharacterset.md)|Character set which may be used for an app-level pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `numeric`, `alphanumericAndSymbol`.|
|periodBeforePinReset|Duration|TimePeriod before the all-level pin must be reset if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedDataStorageLocations|[managedAppDataStorageLocation](../resources/intune-mam-managedappdatastoragelocation.md) collection|Data storage locations where a user may store managed data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `oneDriveForBusiness`, `sharePoint`, `localStorage`.|
|contactSyncBlocked|Boolean|Indicates whether contacts can be synced to the user's device. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|printBlocked|Boolean|Indicates whether printing is allowed from managed apps. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|fingerprintBlocked|Boolean|Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|disableAppPinIfDevicePinIsSet|Boolean|Indicates whether use of the app pin is required if the device pin is set. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumRequiredOsVersion|String|Versions less than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWarningOsVersion|String|Versions less than the specified version will result in warning message on the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumRequiredAppVersion|String|Versions less than the specified version will block the managed app from accessing company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWarningAppVersion|String|Versions less than the specified version will result in warning message on the managed app. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWipeOsVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|minimumWipeAppVersion|String|Versions less than or equal to the specified version will wipe the managed app and the associated company data. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|appActionIfDeviceComplianceRequired|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, when the device is either rooted or jailbroken, if DeviceComplianceRequired is set to true. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`.|
|appActionIfMaximumPinRetriesExceeded|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, based on maximum number of incorrect pin retry attempts. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `block`, `wipe`, `warn`.|
|pinRequiredInsteadOfBiometricTimeout|Duration|Timeout in minutes for an app pin instead of non biometrics passcode Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|allowedOutboundClipboardSharingExceptionLength|Int32|Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed. Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md)|
|notificationRestriction|[managedAppNotificationRestriction](../resources/intune-mam-managedappnotificationrestriction.md)|Specify app notification restriction Inherited from [managedAppProtection](../resources/intune-mam-managedappprotection.md). Possible values are: `allow`, `blockOrganizationalData`, `block`.|
|isAssigned|Boolean|Indicates if the policy is deployed to any inclusion groups or not. Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md)|
|targetedAppManagementLevels|[appManagementLevel](../resources/intune-mam-appmanagementlevel.md)|The intended app management levels for this policy Inherited from [targetedManagedAppProtection](../resources/intune-mam-targetedmanagedappprotection.md). Possible values are: `unspecified`, `unmanaged`, `mdm`, `androidEnterprise`.|
|appDataEncryptionType|[managedAppDataEncryptionType](../resources/intune-mam-managedappdataencryptiontype.md)|Type of encryption which should be used for data in a managed app. Possible values are: `useDeviceSettings`, `afterDeviceRestart`, `whenDeviceLockedExceptOpenFiles`, `whenDeviceLocked`.|
|minimumRequiredSdkVersion|String|Versions less than the specified version will block the managed app from accessing company data.|
|deployedAppCount|Int32|Count of apps to which the current policy is deployed.|
|faceIdBlocked|Boolean|Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.|
|exemptedAppProtocols|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Apps in this list will be exempt from the policy and will be able to receive data from managed apps.|
|minimumWipeSdkVersion|String|Versions less than the specified version will block the managed app from accessing company data.|
|allowedIosDeviceModels|String|Semicolon seperated list of device models allowed, as a string, for the managed app to work.|
|appActionIfIosDeviceModelNotAllowed|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Defines a managed app behavior, either block or wipe, if the specified device model is not allowed. Possible values are: `block`, `wipe`, `warn`.|
|filterOpenInToOnlyManagedApps|Boolean|Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False.|
|disableProtectionOfManagedOutboundOpenInData|Boolean|Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps.|
|protectInboundDataFromUnknownSources|Boolean|Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps.|
|customBrowserProtocol|String|A custom browser protocol to open weblink on iOS.|



## Response
If successful, this method returns a `201 Created` response code and a [iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections
Content-type: application/json
Content-length: 2623

{
  "@odata.type": "#microsoft.graph.iosManagedAppProtection",
  "displayName": "Display Name value",
  "description": "Description value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "version": "Version value",
  "periodOfflineBeforeAccessCheck": "-PT17.1357909S",
  "periodOnlineBeforeAccessCheck": "PT35.0018757S",
  "allowedInboundDataTransferSources": "managedApps",
  "allowedOutboundDataTransferDestinations": "managedApps",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",
  "pinRequired": true,
  "maximumPinRetries": 1,
  "simplePinBlocked": true,
  "minimumPinLength": 0,
  "pinCharacterSet": "alphanumericAndSymbol",
  "periodBeforePinReset": "PT3M29.6631862S",
  "allowedDataStorageLocations": [
    "sharePoint"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "disableAppPinIfDevicePinIsSet": true,
  "minimumRequiredOsVersion": "Minimum Required Os Version value",
  "minimumWarningOsVersion": "Minimum Warning Os Version value",
  "minimumRequiredAppVersion": "Minimum Required App Version value",
  "minimumWarningAppVersion": "Minimum Warning App Version value",
  "minimumWipeOsVersion": "Minimum Wipe Os Version value",
  "minimumWipeAppVersion": "Minimum Wipe App Version value",
  "appActionIfDeviceComplianceRequired": "wipe",
  "appActionIfMaximumPinRetriesExceeded": "wipe",
  "pinRequiredInsteadOfBiometricTimeout": "-PT3M9.8396734S",
  "allowedOutboundClipboardSharingExceptionLength": 14,
  "notificationRestriction": "blockOrganizationalData",
  "isAssigned": true,
  "targetedAppManagementLevels": "unmanaged",
  "appDataEncryptionType": "afterDeviceRestart",
  "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",
  "deployedAppCount": 0,
  "faceIdBlocked": true,
  "exemptedAppProtocols": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ],
  "minimumWipeSdkVersion": "Minimum Wipe Sdk Version value",
  "allowedIosDeviceModels": "Allowed Ios Device Models value",
  "appActionIfIosDeviceModelNotAllowed": "wipe",
  "filterOpenInToOnlyManagedApps": true,
  "disableProtectionOfManagedOutboundOpenInData": true,
  "protectInboundDataFromUnknownSources": true,
  "customBrowserProtocol": "Custom Browser Protocol value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 2795

{
  "@odata.type": "#microsoft.graph.iosManagedAppProtection",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "id": "5bc789cb-89cb-5bc7-cb89-c75bcb89c75b",
  "version": "Version value",
  "periodOfflineBeforeAccessCheck": "-PT17.1357909S",
  "periodOnlineBeforeAccessCheck": "PT35.0018757S",
  "allowedInboundDataTransferSources": "managedApps",
  "allowedOutboundDataTransferDestinations": "managedApps",
  "organizationalCredentialsRequired": true,
  "allowedOutboundClipboardSharingLevel": "managedAppsWithPasteIn",
  "dataBackupBlocked": true,
  "deviceComplianceRequired": true,
  "managedBrowserToOpenLinksRequired": true,
  "saveAsBlocked": true,
  "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",
  "pinRequired": true,
  "maximumPinRetries": 1,
  "simplePinBlocked": true,
  "minimumPinLength": 0,
  "pinCharacterSet": "alphanumericAndSymbol",
  "periodBeforePinReset": "PT3M29.6631862S",
  "allowedDataStorageLocations": [
    "sharePoint"
  ],
  "contactSyncBlocked": true,
  "printBlocked": true,
  "fingerprintBlocked": true,
  "disableAppPinIfDevicePinIsSet": true,
  "minimumRequiredOsVersion": "Minimum Required Os Version value",
  "minimumWarningOsVersion": "Minimum Warning Os Version value",
  "minimumRequiredAppVersion": "Minimum Required App Version value",
  "minimumWarningAppVersion": "Minimum Warning App Version value",
  "minimumWipeOsVersion": "Minimum Wipe Os Version value",
  "minimumWipeAppVersion": "Minimum Wipe App Version value",
  "appActionIfDeviceComplianceRequired": "wipe",
  "appActionIfMaximumPinRetriesExceeded": "wipe",
  "pinRequiredInsteadOfBiometricTimeout": "-PT3M9.8396734S",
  "allowedOutboundClipboardSharingExceptionLength": 14,
  "notificationRestriction": "blockOrganizationalData",
  "isAssigned": true,
  "targetedAppManagementLevels": "unmanaged",
  "appDataEncryptionType": "afterDeviceRestart",
  "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",
  "deployedAppCount": 0,
  "faceIdBlocked": true,
  "exemptedAppProtocols": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "Name value",
      "value": "Value value"
    }
  ],
  "minimumWipeSdkVersion": "Minimum Wipe Sdk Version value",
  "allowedIosDeviceModels": "Allowed Ios Device Models value",
  "appActionIfIosDeviceModelNotAllowed": "wipe",
  "filterOpenInToOnlyManagedApps": true,
  "disableProtectionOfManagedOutboundOpenInData": true,
  "protectInboundDataFromUnknownSources": true,
  "customBrowserProtocol": "Custom Browser Protocol value"
}
```
