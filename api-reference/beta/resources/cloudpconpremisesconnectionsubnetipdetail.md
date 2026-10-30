---
title: "cloudPcOnPremisesConnectionSubnetIpDetail resource type"
description: "Describes the subnet IP details of a Cloud PC on-premises connection."
author: "shijun2026-3"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/05/2026
---

# cloudPcOnPremisesConnectionSubnetIpDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the subnet IP details of a [Cloud PC on-premises connection](../resources/cloudpconpremisesconnection.md).

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|subnetAvailableIpCount|Int32|The number of available private IP addresses within the subnet.|
|subnetAvailableIpCountLastSyncDateTime|DateTimeOffset|Indicates the date and time at which the subnet available IP count was synced with Azure. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionSubnetIpDetail"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionSubnetIpDetail",
  "subnetAvailableIpCount": "Int32",
  "subnetAvailableIpCountLastSyncDateTime": "String (timestamp)"
}
```
