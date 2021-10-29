---
title: "teamworkDeviceOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkDeviceOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDeviceOperations](../api/teamworkdeviceoperation-list.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get a list of the [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) objects and their properties.|
|[Create teamworkDeviceOperation](../api/teamworkdevice-post-operations.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Create a new [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|
|[Get teamworkDeviceOperation](../api/teamworkdeviceoperation-get.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Read the properties and relationships of a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|
|[Update teamworkDeviceOperation](../api/teamworkdeviceoperation-update.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Update the properties of a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|
|[Delete teamworkDeviceOperation](../api/teamworkdeviceoperation-delete.md)|None|Deletes a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|error|[operationError](../resources/operationerror.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActionBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|operationType|teamworkDeviceOperationType|**TODO: Add Description**. The possible values are: `deviceRestart`, `configUpdate`, `deviceDiagnostics`, `softwareUpdate`, `deviceManagementAgentConfigUpdate`, `remoteLogin`, `remoteLogout`, `unknownFutureValue`.|
|startedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDeviceOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDeviceOperation",
  "id": "String (identifier)",
  "status": "String",
  "operationType": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  },
  "startedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastActionDateTime": "String (timestamp)",
  "lastActionBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

