---
title: "deviceAndAppManagementAssignment resource type"
description: "Represents the assignment of a payload to a specific target, used to manage and track the details of payload assignments within the system."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the assignment of a payload to a specific target, used to manage and track the details of payload assignments within the system.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementAssignments](../api/intune-gntgraphservice-deviceandappmanagementassignment-list.md)|[deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) collection|List properties and relationships of the [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) objects.|
|[Get deviceAndAppManagementAssignment](../api/intune-gntgraphservice-deviceandappmanagementassignment-get.md)|[deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md)|Read properties and relationships of the [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object.|
|[Create deviceAndAppManagementAssignment](../api/intune-gntgraphservice-deviceandappmanagementassignment-create.md)|[deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md)|Create a new [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object.|
|[Delete deviceAndAppManagementAssignment](../api/intune-gntgraphservice-deviceandappmanagementassignment-delete.md)|None|Deletes a [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md).|
|[Update deviceAndAppManagementAssignment](../api/intune-gntgraphservice-deviceandappmanagementassignment-update.md)|[deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md)|Update the properties of a [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object.|
|[assignments function](../api/intune-gntgraphservice-deviceandappmanagementassignment-assignments.md)|[deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) collection||
|[reassignPayloadConflictsSetting action](../api/intune-gntgraphservice-deviceandappmanagementassignment-reassignpayloadconflictssetting.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique system generated identifier for the assignment. Read-Only.|
|payloadId|String|Indicates the identifier of a payload assigned to a target. Read-Only.|
|payloadDisplayName|String|Indicates the display name of a payload assigned to a target. Read-Only.|
|payloadDescription|String|Indicates the description of a payload assigned to a target. Read-Only.|
|assignmentFilterDisplayName|String|Indicates the display name of an assignment filter assigned to a target. Read-Only.|
|payloadTypeName|[deviceAndAppManagementPayloadType](../resources/intune-gntgraphservice-deviceandappmanagementpayloadtype.md)|Indicates the type of payload being returned. For instance, SettingCatalog, SecurityBaseline, Antivirus and others. Read-Only. Possible values are: `unknown`, `settingsCatalog`, `securityBaseline`, `antivirus`, `diskEncryption`, `attackSurfaceReduction`, `firewall`, `endpointDetectionAndResponse`, `compliancePolicy`, `deviceRestrictions`, `unknownFutureValue`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Indicates the target for a payload. A payload can be directly assigned to a target or can be inherited. Read-Only.|
|assignmentLinkType|[deviceAndAppManagementAssignmentLinkType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentlinktype.md)|Default is unknown. Indicates if a payload is directly assigned to a target or is an inherited one. Read-Only. Possible values are: `unknown`, `direct`, `inherited`, `unknownFutureValue`.|
|managementArea|[deviceAndAppManagementArea](../resources/intune-gntgraphservice-deviceandappmanagementarea.md)|Default is unknown. Indicates group of related payloads. These payloads can conflict when applied to a target settings. Conflict settings are used to prioritize payloads in such scenarios. Read-Only. Possible values are: `unknown`, `deviceConfiguration`, `app`, `compliance`, `unknownFutureValue`.|
|platformType|[devicePlatformType](../resources/intune-gntgraphservice-deviceplatformtype.md)|Indicates the platform on which a payload is targeted to. Possible values are android, androidForWork, iOS, macOS, windowsPhone81, windows81AndLater, windows10AndLater, androidWorkProfile, androidAOSP, androidMobileApplicationManagement, iOSMobileApplicationManagement, windowsMobileApplicationManagement. Read-Only. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignment",
  "id": "String (identifier)",
  "payloadId": "String",
  "payloadDisplayName": "String",
  "payloadDescription": "String",
  "assignmentFilterDisplayName": "String",
  "payloadTypeName": "String",
  "target": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String",
    "organizationalUnitId": "String",
    "assignmentConflictSetting": {
      "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
      "assignmentOverride": "String",
      "versionNumber": 1024
    }
  },
  "assignmentLinkType": "String",
  "managementArea": "String",
  "platformType": "String"
}
```