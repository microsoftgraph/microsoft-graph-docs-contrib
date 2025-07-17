---
title: "deviceManagementSettings resource type"
description: "Intune Deviceconfig Devicemanagementsettings Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceComplianceCheckinThresholdDays|Int32|The number of days a device is allowed to go without checking in to remain compliant.|
|isScheduledActionEnabled|Boolean|Is feature enabled or not for scheduled action for rule.|
|secureByDefault|Boolean|Device should be noncompliant when there is no compliance policy targeted when this is true|
|enhancedJailBreak|Boolean|Is feature enabled or not for enhanced jailbreak detection.|
|deviceInactivityBeforeRetirementInDay|Int32|When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270|
|derivedCredentialProvider|[derivedCredentialProviderType](../resources/intune-deviceconfig-derivedcredentialprovidertype.md)|The Derived Credential Provider to use for this account. Possible values are: `notConfigured`, `entrustDataCard`, `purebred`, `xTec`, `intercede`.|
|derivedCredentialUrl|String|The Derived Credential Provider self-service URI.|
|androidDeviceAdministratorEnrollmentEnabled|Boolean|The property to determine if Android device administrator enrollment is enabled for this account.|
|ignoreDevicesForUnsupportedSettingsEnabled|Boolean|The property to determine whether to ignore unsupported compliance settings on certian models of devices.|
|enableLogCollection|Boolean|Determines whether the log collection feature should be available for use.|
|enableAutopilotDiagnostics|Boolean|Determines whether the autopilot diagnostic feature is enabled or not.|
|enableEnhancedTroubleshootingExperience|Boolean|Determines whether the enhanced troubleshooting UX is enabled or not.|
|enableDeviceGroupMembershipReport|Boolean|Determines whether the device group membership report feature is enabled or not.|
|m365AppDiagnosticsEnabled|Boolean|The property to determine if M365 App log collection is enabled for account. When TRUE it indicates that M365 app log collection is enabled for account.  When FALSE it indicates that M365 app log collection is disabled for account. Default value is FALSE|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettings",
  "deviceComplianceCheckinThresholdDays": 1024,
  "isScheduledActionEnabled": true,
  "secureByDefault": true,
  "enhancedJailBreak": true,
  "deviceInactivityBeforeRetirementInDay": 1024,
  "derivedCredentialProvider": "String",
  "derivedCredentialUrl": "String",
  "androidDeviceAdministratorEnrollmentEnabled": true,
  "ignoreDevicesForUnsupportedSettingsEnabled": true,
  "enableLogCollection": true,
  "enableAutopilotDiagnostics": true,
  "enableEnhancedTroubleshootingExperience": true,
  "enableDeviceGroupMembershipReport": true,
  "m365AppDiagnosticsEnabled": true
}
```