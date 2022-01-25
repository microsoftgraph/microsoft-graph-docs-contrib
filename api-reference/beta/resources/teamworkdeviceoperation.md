---
title: "teamworkDeviceOperation resource type"
description: "Represents details about async operations running on a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDeviceOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about async operations running on a Microsoft Teams-enabled [device](../resources/teamworkdevice.md), including operation status. Any async operation running on a device creates a **teamworkDeviceOperation** object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDeviceOperations](../api/teamworkdeviceoperation-list.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get a list of the [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) objects and their properties.|
|[Get teamworkDeviceOperation](../api/teamworkdeviceoperation-get.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Read the properties and relationships of a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|Time at which the operation reached a final state (for example, `Successful`, `Failed`, and `Cancelled`).|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user who created the device operation.|
|createdDateTime|DateTimeOffset|The UTC date and time when the device operation was created.|
|error|[operationError](../resources/operationerror.md)|Error details are available only in case of a failed status.|
|id|String|Document identifier. Inherited from [entity](../resources/entity.md).|
|lastActionBy|[identitySet](../resources/identityset.md)|Identity of the user who last modified the device operation.|
|lastActionDateTime|DateTimeOffset|The UTC date and time when the device operation was last modified.|
|operationType|teamworkDeviceOperationType|Type of async operation on a device. The possible values are: `deviceRestart`, `configUpdate`, `deviceDiagnostics`, `softwareUpdate`, `deviceManagementAgentConfigUpdate`, `remoteLogin`, `remoteLogout`, `unknownFutureValue`.|
|startedDateTime|DateTimeOffset|Time at which the operation was started.|
|status|String|The current status of the async operation, for example, `Queued`, `Scheduled`, `InProgress`,  `Successful`, `Cancelled`, and `Failed`.|


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
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  },
  "id": "String (identifier)",
  "lastActionBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastActionDateTime": "String (timestamp)",
  "operationType": "String",
  "startedDateTime": "String (timestamp)",
  "status": "String"
}
```

