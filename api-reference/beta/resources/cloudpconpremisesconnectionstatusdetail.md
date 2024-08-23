---
title: "cloudPcOnPremisesConnectionStatusDetail resource type"
description: "Represents the status details of a Cloud PC Azure network connection."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionStatusDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status details of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The end time of the connection health check. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|healthChecks|[cloudPcOnPremisesConnectionHealthCheck](../resources/cloudpconpremisesconnectionhealthcheck.md) collection|All checks that are done on the connection.|
|startDateTime|DateTimeOffset|The start time of the connection health check. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetail"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionStatusDetail",
  "endDateTime": "String (timestamp)",
  "healthChecks": [{ "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck" }],
  "startDateTime": "String (timestamp)"
}
```
