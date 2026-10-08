---
title: "deviceAndAppManagementRingAssignmentConfiguration resource type"
description: "A device and app management ring assignment configuration for deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementRingAssignmentConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A device and app management ring assignment configuration for deployment.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementRingAssignmentConfigurations](../api/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration-list.md)|[deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) collection|List properties and relationships of the [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) objects.|
|[Get deviceAndAppManagementRingAssignmentConfiguration](../api/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration-get.md)|[deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md)|Read properties and relationships of the [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) object.|
|[Create deviceAndAppManagementRingAssignmentConfiguration](../api/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration-create.md)|[deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md)|Create a new [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) object.|
|[Delete deviceAndAppManagementRingAssignmentConfiguration](../api/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration-delete.md)|None|Deletes a [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md).|
|[Update deviceAndAppManagementRingAssignmentConfiguration](../api/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration-update.md)|[deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md)|Update the properties of a [deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target assignment defined by the admin.|
|operation|[deviceAndAppManagementAssignmentOperationType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentoperationtype.md)|The target assignment operation. Possible values are: `add`, `unknownFutureValue`.|
|assignmentResults|[deviceAndAppManagementRingAssignmentResult](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentresult.md) collection|Individual assignment status tracking for each payload|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingAssignmentConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingAssignmentConfiguration",
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
  "operation": "String",
  "assignmentResults": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementRingAssignmentResult",
      "payloadId": "Guid",
      "status": "String",
      "message": "String"
    }
  ]
}
```