---
title: "deviceCompliancePolicyAssignment resource type"
description: "Device compliance policy assignment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceCompliancePolicyAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device compliance policy assignment.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceCompliancePolicyAssignments](../api/intune-deviceconfig-devicecompliancepolicyassignment-list.md)|[deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) collection|List properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) objects.|
|[Get deviceCompliancePolicyAssignment](../api/intune-deviceconfig-devicecompliancepolicyassignment-get.md)|[deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md)|Read properties and relationships of the [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) object.|
|[Create deviceCompliancePolicyAssignment](../api/intune-deviceconfig-devicecompliancepolicyassignment-create.md)|[deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md)|Create a new [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) object.|
|[Delete deviceCompliancePolicyAssignment](../api/intune-deviceconfig-devicecompliancepolicyassignment-delete.md)|None|Deletes a [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md).|
|[Update deviceCompliancePolicyAssignment](../api/intune-deviceconfig-devicecompliancepolicyassignment-update.md)|[deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md)|Update the properties of a [deviceCompliancePolicyAssignment](../resources/intune-deviceconfig-devicecompliancepolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Target for the compliance policy assignment.|
|source|[deviceAndAppManagementAssignmentSource](../resources/intune-shared-deviceandappmanagementassignmentsource.md)|The assignment source for the device compliance policy, direct or parcel/policySet. The possible values are: `direct`, `policySets`.|
|sourceId|String|The identifier of the source of the assignment.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCompliancePolicyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
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
  "sourceId": "String"
}
```