---
title: "windowsDefenderApplicationControlSupplementalPolicyAssignment resource type"
description: "A class containing the properties used for assignment of a WindowsDefenderApplicationControl supplemental policy to a group."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsDefenderApplicationControlSupplementalPolicyAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for assignment of a WindowsDefenderApplicationControl supplemental policy to a group.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDefenderApplicationControlSupplementalPolicyAssignments](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment-list.md)|[windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) collection|List properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) objects.|
|[Get windowsDefenderApplicationControlSupplementalPolicyAssignment](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment-get.md)|[windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md)|Read properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) object.|
|[Create windowsDefenderApplicationControlSupplementalPolicyAssignment](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment-create.md)|[windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md)|Create a new [windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) object.|
|[Delete windowsDefenderApplicationControlSupplementalPolicyAssignment](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment-delete.md)|None|Deletes a [windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md).|
|[Update windowsDefenderApplicationControlSupplementalPolicyAssignment](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment-update.md)|[windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md)|Update the properties of a [windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group assignment defined by the admin.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDefenderApplicationControlSupplementalPolicyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDefenderApplicationControlSupplementalPolicyAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String"
  }
}
```