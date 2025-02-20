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
|[Get](../api/cloudpcsnapshot-get.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md)|Read the properties and relationships of a [cloudPcSnapshot](../resources/cloudpcsnapshot.md) object.|
|[List (deprecated)](../api/virtualendpoint-list-snapshots.md)|None|Get a list of the [cloudPcSnapshot](../resources/cloudpcsnapshot.md) objects and their properties. This API is deprecated and will stop returning data on February 28, 2025. Going forward, use the [cloudPcRetrieveSnapshots](../api/cloudpc-retrievesnapshots.md) API.|

## Properties

 |Property|Type|Description|
 |:---|:---|:---|
|cloudPcId|String|Indicates the unique identifier for the Cloud PC.|
|createdDateTime|DateTimeOffset|Indicates the date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|Indicates the unique identifier for the snapshot of the Cloud PC device at a specific point in time. Inherited from [entity](../resources/entity.md).|
|lastRestoredDateTime|DateTimeOffset|Indicates the date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|snapshotType| [cloudPcSnapshotType](#cloudpcsnapshottype-values)   | Indicates the type of snapshot that indicates how to create the snapshot. Possible values are `automatic`, `manual`. Default value is `automatic`.|
|status|[cloudPcSnapshotStatus](#cloudpcsnapshotstatus-values)| Indicates the status of the Cloud PC snapshot. The possible values are: `ready`, `unknownFutureValue`.|
|expirationDateTime|DateTimeOffset| Indicates the date and time when the snapshot expires. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
| healthCheckStatus               |[cloudPcSnapshotHealthCheckStatus](#cloudPcSnapshotHealthCheckStatus-values) | Indicates the health check status of the Cloud PC's snapshot. Possible values are, `unknown`, `healthy`, and `unhealthy`. Default value is `unknown`. Read-only. Nullable.                                                                                                                                     | No  | No       | Yes      |

### cloudPcSnapshotStatus values

|Member|Description|
|:---|:---|
|ready|The snapshot is ready to restore the Cloud PC device.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcSnapshotHealthCheckStatus values

Indicates the health check status of a snapshot for a Cloud PC device. Default value is unknown. Possible values are unknown, healthy and unhealthy.

| Member name          | Value | Description                                           |
| -------------------- | ----- | ----------------------------------------------------- |
| unknown             | 0 | Default. Set to unknown if both session host and virtual machine agent connectivity status are unknown.   |
| healthy              | 1   | Indicates the Cloud PC's snapshot is healthy to use. For example, Cloud PC's snapshot is healthy if either the connectivity status of session host or virtual machine agent is healthy, or virtual machine itself is unreachable due to either shut-down or deallocated.      |
| unhealthy              | 2   | Indicates the Cloud PC's snapshot is unhealthy to use. For example, Cloud PC's snapshot is unhealthy if both the connectivity status of session host or virtual machine agent are unhealthy.         |
| unknownFutureValue | 3 | Evolvable enumeration sentinel value. Do not use. |


### cloudPcSnapshotType values

| Member               | Description                                           |
| -------------------- | ----------------------------------------------------- |
| `automatic`          | The snapshot is created automatically.           |
| `manual`             | The snapshot is created manually.               |
| `unknownFutureValue` | Evolvable enumeration sentinel value. Don't use.     |

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
  "id": "String (identifier)",
  "lastRestoredDateTime": "String (timestamp)",
  "snapshotType": "String",
  "status": "String",
  "healthCheckStatus": "String"
}
```

