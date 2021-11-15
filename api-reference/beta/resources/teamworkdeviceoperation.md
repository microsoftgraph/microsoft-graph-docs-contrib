---
title: "teamworkDeviceOperation resource type"
description: "Device async operation details."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Any async operation executed on a device will result into a teamworkDeviceOperation getting created. The status of the operation can be retrieved via teamworkDeviceOperation object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDeviceOperations](../api/teamworkdeviceoperation-list.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get a list of the [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) objects and their properties.|
|[Get teamworkDeviceOperation](../api/teamworkdeviceoperation-get.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Read the properties and relationships of a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|Time at which the operation reached into final state: Successful/Failed/Canceled.|
|createdBy|[identitySet](../resources/intune-identityset.md)|CreatedBy.|
|createdDateTime|DateTimeOffset|Document create time.|
|error|[operationError](../resources/operationerror.md)|Error details available only in case of Failed Status.|
|id|String|Document identifier. Inherited from [entity](../resources/entity.md).|
|lastActionBy|[identitySet](../resources/intune-identityset.md)|Last modifiedby.|
|lastActionDateTime|DateTimeOffset|Last modified time.|
|operationType|teamworkDeviceOperationType|Type of async device operation. The possible values are: `deviceRestart`, `configUpdate`, `deviceDiagnostics`, `softwareUpdate`, `deviceManagementAgentConfigUpdate`, `remoteLogin`, `remoteLogout`, `unknownFutureValue`.|
|startedDateTime|DateTimeOffset|Time at which the operation was started.|
|status|String|NotStarted/Running/Succeeded/Failed etc.|


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

