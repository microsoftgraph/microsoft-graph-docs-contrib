---
title: "cloudPcSnapshot resource type"
description: "Represents the details of the Cloud PC snapshot."
author: "xintaozMS"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSnapshot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Cloud PC snapshot.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSnapshots](../api/virtualendpoint-list-snapshots.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Get a list of the [cloudPcSnapshot](../resources/cloudpcsnapshot.md) objects and their properties.|
|[Get cloudPcSnapshot](../api/cloudpcsnapshot-get.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md)|Read the properties and relationships of a [cloudPcSnapshot](../resources/cloudpcsnapshot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The Cloud PC id.|
|createdDateTime|DateTimeOffset|The date and time at which the snapshot was taken. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|id|String|The snapshot id of Cloud PC previous point-in-time state. Inherited from [entity](../resources/entity.md).|
|lastRestoredDateTime|DateTimeOffset|The date and time that snapshot has been used for restore. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|
|status|[cloudPcSnapshotStatus](#cloudpcsnapshotstatus-values)|Status of the Cloud PC snapshot. Possible values include "ready". The possible values are: `ready`, `unknownFutureValue`.|

### cloudPcSnapshotStatus values 

|Member|Description|
|:---|:---|
|ready|The snapshot is ready to be used for restore.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
  "id": "String (identifier)",
  "cloudPcId": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastRestoredDateTime": "String (timestamp)"
}
```

