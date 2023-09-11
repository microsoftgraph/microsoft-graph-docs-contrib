---
title: "Create windowsManagedAppProtection"
description: "Create a new windowsManagedAppProtection object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create windowsManagedAppProtection

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/windowsManagedAppProtections
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windowsManagedAppProtection object.

The following table shows the properties that are required when you create the windowsManagedAppProtection.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Policy display name. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|description|String|The policy's description. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|createdDateTime|DateTimeOffset|The date and time the policy was created. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|lastModifiedDateTime|DateTimeOffset|Last time the policy was modified. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|id|String|Key of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|version|String|Version of the entity. Inherited from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)|
|isAssigned|Boolean|When TRUE, indicates that the policy is deployed to some inclusion groups. When FALSE, indicates that the policy is not deployed to any inclusion groups. Default value is FALSE.|
|deployedAppCount|Int32|Indicates the total number of applications for which the current policy is deployed.|
|printBlocked|Boolean|When TRUE, indicates that printing is blocked from managed apps. When FALSE, indicates that printing is allowed from managed apps. Default value is FALSE.|
|allowedInboundDataTransferSources|[windowsManagedAppDataTransferLevel](../resources/intune-mam-windowsmanagedappdatatransferlevel.md)|Indicates the sources from which data is allowed to be transferred. Some possible values are allApps or none. Possible values are: `allApps`, `none`.|
|allowedOutboundClipboardSharingLevel|[windowsManagedAppClipboardSharingLevel](../resources/intune-mam-windowsmanagedappclipboardsharinglevel.md)|Indicates the level to which the clipboard may be shared across org & non-org resources. Some possible values are anyDestinationAnySource or none. Possible values are: `anyDestinationAnySource`, `none`.|
|allowedOutboundDataTransferDestinations|[windowsManagedAppDataTransferLevel](../resources/intune-mam-windowsmanagedappdatatransferlevel.md)|Indicates the destinations to which data is allowed to be transferred. Some possible values are allApps or none. Possible values are: `allApps`, `none`.|
|appActionIfUnableToAuthenticateUser|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Some possible values are block or wipe. If this property is not set, no action will be taken. Possible values are: `block`, `wipe`, `warn`.|
|maximumAllowedDeviceThreatLevel|[managedAppDeviceThreatLevel](../resources/intune-mam-managedappdevicethreatlevel.md)|Maximum allowed device threat level, as reported by the Mobile Threat Defense app. Possible values are: `notConfigured`, `secured`, `low`, `medium`, `high`.|
|mobileThreatDefenseRemediationAction|[managedAppRemediationAction](../resources/intune-mam-managedappremediationaction.md)|Determines what action to take if the mobile threat defense threat threshold isn't met. Some possible values are block or wipe. Warn isn't a supported value for this property. Possible values are: `block`, `wipe`, `warn`.|
|minimumRequiredSdkVersion|String|Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|minimumWipeSdkVersion|String|Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.|
|minimumRequiredOsVersion|String|Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|minimumWarningOsVersion|String|Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|minimumWipeOsVersion|String|Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.|
|minimumRequiredAppVersion|String|Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|minimumWarningAppVersion|String|Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|minimumWipeAppVersion|String|Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.|
|maximumRequiredOsVersion|String|Versions bigger than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|maximumWarningOsVersion|String|Versions bigger than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.|
|maximumWipeOsVersion|String|Versions bigger than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.|
|periodOfflineBeforeWipeIsEnforced|Duration|The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. For example, P5D indicates that the interval is 5 days in duration. A timespan value of PT0S indicates that managed data will never be wiped when the device is not connected to the internet.|
|periodOfflineBeforeAccessCheck|Duration|The period after which access is checked when the device is not connected to the internet. For example, PT5M indicates that the interval is 5 minutes in duration. A timespan value of PT0S indicates that access will be blocked immediately when the device is not connected to the internet.|



## Response
If successful, this method returns a `201 Created` response code and a [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/windowsManagedAppProtections
Content-type: application/json
Content-length: 1453

{
  "@odata.type": "#microsoft.graph.windowsManagedAppProtection",
  "displayName": "Display Name value",
  "description": "Description value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "version": "Version value",
  "isAssigned": true,
  "deployedAppCount": 0,
  "printBlocked": true,
  "allowedInboundDataTransferSources": "none",
  "allowedOutboundClipboardSharingLevel": "none",
  "allowedOutboundDataTransferDestinations": "none",
  "appActionIfUnableToAuthenticateUser": "wipe",
  "maximumAllowedDeviceThreatLevel": "secured",
  "mobileThreatDefenseRemediationAction": "wipe",
  "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",
  "minimumWipeSdkVersion": "Minimum Wipe Sdk Version value",
  "minimumRequiredOsVersion": "Minimum Required Os Version value",
  "minimumWarningOsVersion": "Minimum Warning Os Version value",
  "minimumWipeOsVersion": "Minimum Wipe Os Version value",
  "minimumRequiredAppVersion": "Minimum Required App Version value",
  "minimumWarningAppVersion": "Minimum Warning App Version value",
  "minimumWipeAppVersion": "Minimum Wipe App Version value",
  "maximumRequiredOsVersion": "Maximum Required Os Version value",
  "maximumWarningOsVersion": "Maximum Warning Os Version value",
  "maximumWipeOsVersion": "Maximum Wipe Os Version value",
  "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",
  "periodOfflineBeforeAccessCheck": "-PT17.1357909S"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1625

{
  "@odata.type": "#microsoft.graph.windowsManagedAppProtection",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "id": "c7894cd1-4cd1-c789-d14c-89c7d14c89c7",
  "version": "Version value",
  "isAssigned": true,
  "deployedAppCount": 0,
  "printBlocked": true,
  "allowedInboundDataTransferSources": "none",
  "allowedOutboundClipboardSharingLevel": "none",
  "allowedOutboundDataTransferDestinations": "none",
  "appActionIfUnableToAuthenticateUser": "wipe",
  "maximumAllowedDeviceThreatLevel": "secured",
  "mobileThreatDefenseRemediationAction": "wipe",
  "minimumRequiredSdkVersion": "Minimum Required Sdk Version value",
  "minimumWipeSdkVersion": "Minimum Wipe Sdk Version value",
  "minimumRequiredOsVersion": "Minimum Required Os Version value",
  "minimumWarningOsVersion": "Minimum Warning Os Version value",
  "minimumWipeOsVersion": "Minimum Wipe Os Version value",
  "minimumRequiredAppVersion": "Minimum Required App Version value",
  "minimumWarningAppVersion": "Minimum Warning App Version value",
  "minimumWipeAppVersion": "Minimum Wipe App Version value",
  "maximumRequiredOsVersion": "Maximum Required Os Version value",
  "maximumWarningOsVersion": "Maximum Warning Os Version value",
  "maximumWipeOsVersion": "Maximum Wipe Os Version value",
  "periodOfflineBeforeWipeIsEnforced": "-PT3M22.1587532S",
  "periodOfflineBeforeAccessCheck": "-PT17.1357909S"
}
```
