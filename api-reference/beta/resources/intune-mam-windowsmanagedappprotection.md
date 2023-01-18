---
title: "windowsManagedAppProtection resource type"
description: "Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on a Windows device"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsManagedAppProtection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on a Windows device


Inherits from [managedAppPolicy](../resources/intune-mam-managedapppolicy.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsManagedAppProtections](../api/intune-mam-windowsmanagedappprotection-list.md)|[windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) collection|List properties and relationships of the [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) objects.|
|[Get windowsManagedAppProtection](../api/intune-mam-windowsmanagedappprotection-get.md)|[windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md)|Read properties and relationships of the [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) object.|
|[Create windowsManagedAppProtection](../api/intune-mam-windowsmanagedappprotection-create.md)|[windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md)|Create a new [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) object.|
|[Delete windowsManagedAppProtection](../api/intune-mam-windowsmanagedappprotection-delete.md)|None|Deletes a [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md).|
|[Update windowsManagedAppProtection](../api/intune-mam-windowsmanagedappprotection-update.md)|[windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md)|Update the properties of a [windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) object.|
|[targetApps action](../api/intune-mam-windowsmanagedappprotection-targetapps.md)|None|Not yet documented|
|[assign action](../api/intune-mam-windowsmanagedappprotection-assign.md)|None|Not yet documented|

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

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[targetedManagedAppPolicyAssignment](../resources/intune-mam-targetedmanagedapppolicyassignment.md) collection|Navigation property to list of inclusion and exclusion groups to which the policy is deployed.|
|apps|[managedMobileApp](../resources/intune-mam-managedmobileapp.md) collection|List of apps to which the policy is deployed.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagedAppProtection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagedAppProtection",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "id": "String (identifier)",
  "version": "String",
  "isAssigned": true,
  "deployedAppCount": 1024,
  "printBlocked": true,
  "allowedInboundDataTransferSources": "String",
  "allowedOutboundClipboardSharingLevel": "String",
  "allowedOutboundDataTransferDestinations": "String",
  "appActionIfUnableToAuthenticateUser": "String",
  "maximumAllowedDeviceThreatLevel": "String",
  "mobileThreatDefenseRemediationAction": "String",
  "minimumRequiredSdkVersion": "String",
  "minimumWipeSdkVersion": "String",
  "minimumRequiredOsVersion": "String",
  "minimumWarningOsVersion": "String",
  "minimumWipeOsVersion": "String",
  "minimumRequiredAppVersion": "String",
  "minimumWarningAppVersion": "String",
  "minimumWipeAppVersion": "String",
  "maximumRequiredOsVersion": "String",
  "maximumWarningOsVersion": "String",
  "maximumWipeOsVersion": "String",
  "periodOfflineBeforeWipeIsEnforced": "String (duration)",
  "periodOfflineBeforeAccessCheck": "String (duration)"
}
```
