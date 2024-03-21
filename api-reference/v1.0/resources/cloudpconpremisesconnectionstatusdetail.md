---
title: "cloudPcOnPremisesConnectionStatusDetail resource type"
description: "The status details of a Cloud PC Azure network connection."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionStatusDetail resource type

Namespace: microsoft.graph

The status details of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The end time of the connection health check. The Timestamp  is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`. Read-Only.|
|healthChecks|[cloudPcOnPremisesConnectionHealthCheck](../resources/cloudpconpremisesconnectionhealthcheck.md) collection|A list of all checks that have been run on the connection. Read-Only.|
|startDateTime|DateTimeOffset|The start time of the health check. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appear as `2014-01-01T00:00:00Z`. Read-Only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetail"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionStatusDetail",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "healthChecks": [
    {
      "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
      "displayName": "String",
      "status": "String",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "errorType": "String",
      "recommendedAction": "String",
      "additionalDetail": "String",
      "correlationId": "String"
    }
  ]
}
```
