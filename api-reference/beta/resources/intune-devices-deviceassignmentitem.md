---
title: "deviceAssignmentItem resource type"
description: "Represents the application or configuration included in the ChangeAssignments action execution or result. For action execution, it represents the application or configuration intended to be uninstalled or removed on the managed device. For action result, it represents the live reporting data for this application or configuration regarding its removal or restoration process."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAssignmentItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the application or configuration included in the ChangeAssignments action execution or result. For action execution, it represents the application or configuration intended to be uninstalled or removed on the managed device. For action result, it represents the live reporting data for this application or configuration regarding its removal or restoration process.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|itemId|String|The unique identifier for the application or configuration. ItemId is required property which needs to be set in the action POST request parameter for the DeviceAssignmentItem intended to remove. Max length is 40|
|itemType|[deviceAssignmentItemType](../resources/intune-devices-deviceassignmentitemtype.md)|Indicates the application or configuration type. ItemType is required property which needs to be set in the action POST request parameter for the DeviceAssignmentItem intended to remove. Possible values are: application, deviceConfiguration, deviceManagementConfigurationPolicy. application itemType is default value. Possible values are: `application`, `deviceConfiguration`, `deviceManagementConfigurationPolicy`, `unknownFutureValue`.|
|itemSubTypeDisplayName|String|Indicates the specific type for the application or configuration. For example, unknown, application, exploitProtection, bitLocker, deviceControl, microsoftEdgeBaseline, attackSurfaceReductionRulesConfigMgr, endpointDetectionandResponse, windowsUpdateforBusiness, microsoftDefenderFirewallRules, applicationControl, microsoftDefenderAntivirusexclusions, microsoftDefenderAntivirus, wiredNetwork, derivedPersonalIdentityVerificationCredential, windowsHealthMonitoring, extensions, mxProfileZebraOnly, deviceFirmwareConfigurationInterface, deliveryOptimization, identityProtection, kiosk, overrideGroupPolicy, domainJoinPreview, pkcsImportedCertificate, networkBoundary, endpointProtection, microsoftDefenderAtpWindows10Desktop, sharedMultiUserDevice, deviceFeatures, secureAssessmentEducation, wiFiImport, editionUpgradeAndModeSwitch, vpn, custom, softwareUpdates, deviceRestrictionsWindows10Team, email, trustedCertificate, scepCertificate, emailSamsungKnoxOnly, pkcsCertificate, deviceRestrictions, wiFi, settingsCatalog. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.|
|itemDisplayName|String|The item displayName name for the application or configuration. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.|
|assignmentItemActionIntent|[deviceAssignmentItemIntent](../resources/intune-devices-deviceassignmentitemintent.md)|Indicates the IT Admin's intent on the application or configuration when executing this action on the managed device. Intent needs to be set as default value remove in the action POST request parameter. For the application or configuration intended to remove through previous actions but not included in current action, its intent will be reported as restore in the action result. Possible values are: remove, restore. remove intent is default value. This property is read-only. Possible values are: `remove`, `restore`, `unknownFutureValue`.|
|assignmentItemActionStatus|[deviceAssignmentItemStatus](../resources/intune-devices-deviceassignmentitemstatus.md)|Indicates the live status for the application or configuration regarding the executed action on the managed device. Read-Only. Returned in the action result. Possible values are: initiated, inProgress, removed, error, succeeded. initiated status is default value. This property is read-only. Possible values are: `initiated`, `inProgress`, `removed`, `error`, `succeeded`, `unknownFutureValue`.|
|intentActionMessage|String|The intent action message for the application or configuration regarding the executed action on the managed device. When the action is on error, this property provides message on the reason of failure. When the action is in progress, this property provides message on what's being processed on the device. Read-Only. Returned in the action result. Can be null. Max length is 1500. This property is read-only.|
|errorCode|Int64|The error code for the application or configuration regarding the failed executed action on the managed device. Read-Only. Returned in the action result. 0 is default value and indicates no failure. Valid values -9.22337203685478E+18 to 9.22337203685478E+18. This property is read-only.|
|lastActionDateTime|DateTimeOffset|The date and time when the application or configuration was initiated an action execution. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the application or configuration was last modified because of either action execution or status change. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated or the device has a status change. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAssignmentItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAssignmentItem",
  "itemId": "String",
  "itemType": "String",
  "itemSubTypeDisplayName": "String",
  "itemDisplayName": "String",
  "assignmentItemActionIntent": "String",
  "assignmentItemActionStatus": "String",
  "intentActionMessage": "String",
  "errorCode": 1024,
  "lastActionDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
