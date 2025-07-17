---
title: "cloudPcSnapshot resource type"
description: "Represents a Cloud PC snapshot."
author: "xintaozMS"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/30/2024
---

# cloudPcSnapshot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of the device settings of a Cloud PC that can be used to restore the device system.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Retrieve snapshots](../api/cloudpc-retrievesnapshots.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Get a list of [cloudPcSnapshot](../resources/cloudpcsnapshot.md) resources for a Cloud PC.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The unique identifier for the Cloud PC.|
|createdDateTime|DateTimeOffset|The date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|expirationDateTime|DateTimeOffset| The date and time when the snapshot expires. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|healthCheckStatus|[cloudPcSnapshotHealthCheckStatus](#cloudpcsnapshothealthcheckstatus-values)|Indicates the health check status of the Cloud PC snapshot. Possible values are, `unknown`, `healthy`, `unhealthy`, `unknownFutureValue`. The default value is `unknown`. Read-only. Nullable.|
|id|String|The unique identifier for the snapshot of the Cloud PC device at a specific point in time. Inherited from [entity](../resources/entity.md).|
|lastRestoredDateTime|DateTimeOffset|The date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|snapshotType| [cloudPcSnapshotType](#cloudpcsnapshottype-values)   | The type of snapshot that indicates how to create the snapshot. Possible values are `automatic`, `manual`. Default value is `automatic`.|
|status|[cloudPcSnapshotStatus](#cloudpcsnapshotstatus-values)|The status of the Cloud PC snapshot. The possible values are: `ready`, `unknownFutureValue`.|

### cloudPcSnapshotHealthCheckStatus values

|Member|Description|
|:---|:---|
| unknown            | Default. Indicates that both the session host and virtual machine agent connectivity statuses are unknown. |
| healthy            | Indicates that the Cloud PC snapshot is healthy to use. For example, the Cloud PC snapshot is healthy if either the connectivity status of the session host or the virtual machine agent is healthy, or if the virtual machine itself is unreachable due to shutdown or deallocation. |
| unhealthy          | Indicates that the Cloud PC snapshot is unhealthy to use. For example, the Cloud PC snapshot is unhealthy if both the connectivity status of the session host and the virtual machine agent are unhealthy. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### cloudPcSnapshotStatus values

|Member|Description|
|:---|:---|
|ready|The snapshot is ready to restore the Cloud PC device.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcSnapshotType values

|Member|Description|
|:---|:---|
| automatic          | The snapshot is created automatically.           |
| manual             | The snapshot is created manually.               |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.     |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "healthCheckStatus": "String",
  "id": "String (identifier)",
  "lastRestoredDateTime": "String (timestamp)",
  "snapshotType": "String",
  "status": "String"
}
```

