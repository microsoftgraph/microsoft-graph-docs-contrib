---
title: "cloudPcSnapshot resource type"
description: "Represents a Cloud PC snapshot."
author: "xintaozMS"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSnapshot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of the device settings of a Cloud PC that can be used to restore the device system.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List snapshots](../api/virtualendpoint-list-snapshots.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Get a list of the [cloudPcSnapshot](../resources/cloudpcsnapshot.md) objects and their properties.|
|[Get cloudPcSnapshot](../api/cloudpcsnapshot-get.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md)|Read the properties and relationships of a [cloudPcSnapshot](../resources/cloudpcsnapshot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The unique identifier for the Cloud PC.|
|createdDateTime|DateTimeOffset|The date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the snapshot of the Cloud PC device at a specific point in time. Inherited from [entity](../resources/entity.md).|
|lastRestoredDateTime|DateTimeOffset|The date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|snapshotType| [cloudPcSnapshotType](#cloudpcsnapshottype-values)   | The type of snapshot that indicates how to create the snapshot. Possible values are `automatic`, `manual`. Default value is `automatic`.|
|status|[cloudPcSnapshotStatus](#cloudpcsnapshotstatus-values)|The status of the Cloud PC snapshot. The possible values are: `ready`, `unknownFutureValue`.|
|expirationDateTime|DateTimeOffset| The date and time when the snapshot expires. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

### cloudPcSnapshotStatus values

|Member|Description|
|:---|:---|
|ready|The snapshot is ready to restore the Cloud PC device.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcSnapshotType values

| Member               | Description                                           |
| -------------------- | ----------------------------------------------------- |
| `automatic`          | The snapshot is created automaticaly.           |
| `manual`             | The snapshot is created manually.               |
| `unknownFutureValue` | Evolvable enumeration sentinel value. Do not use.     |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSnapshot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSnapshot",
  "cloudPcId": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastRestoredDateTime": "String (timestamp)",
  "snapshotType": "String",
  "status": "String"
}
```

