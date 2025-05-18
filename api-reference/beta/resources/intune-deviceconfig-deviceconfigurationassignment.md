---
title: "deviceConfigurationAssignment resource type"
description: "The device configuration assignment entity assigns an AAD group to a specific device configuration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceConfigurationAssignment resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The device configuration assignment entity assigns an AAD group to a specific device configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceConfigurationAssignments](../api/intune-deviceconfig-deviceconfigurationassignment-list.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|List properties and relationships of the [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) objects.|
|[Get deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-get.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Read properties and relationships of the [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|
|[Create deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-create.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Create a new [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|
|[Delete deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-delete.md)|None|Deletes a [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md).|
|[Update deviceConfigurationAssignment](../api/intune-deviceconfig-deviceconfigurationassignment-update.md)|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md)|Update the properties of a [deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the assignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target for the device configuration.|
|source|[deviceAndAppManagementAssignmentSource](../resources/intune-shared-deviceandappmanagementassignmentsource.md)|The assignment source for the device configuration, direct or parcel/policySet. This property is read-only. Possible values are: `direct`, `policySets`.|
|sourceId|String|The identifier of the source of the assignment. This property is read-only.|
|intent|[deviceConfigAssignmentIntent](../resources/intune-deviceconfig-deviceconfigassignmentintent.md)|The admin intent to apply or remove the profile. Possible values are: `apply`, `remove`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationAssignment",
  "id": "String (identifier)",
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
  "source": "String",
  "sourceId": "String",
  "intent": "String"
}
```