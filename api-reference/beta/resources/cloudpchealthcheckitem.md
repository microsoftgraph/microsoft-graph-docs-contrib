---
title: "cloudPcHealthCheckItem resource type"
description: "Represents the details of the Cloud PC connectivity health check item."
author: "yayang3"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcHealthCheckItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Cloud PC connectivity health check item.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalDetails|string|Additional message for this health check.|
|displayName|string|The connectivity health check item name.|
|lastHealthCheckDateTime|DateTimeOffset|Timestamp when the last check occurs. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`. |
|result|[cloudPcConnectivityEventResult](../resources/cloudpcconnectivityevent.md#cloudpcconnectivityeventresult-values)|The result of this health check item. The possible values are: `unknown`, `success`, `failure`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcHealthCheckItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcHealthCheckItem",
  "additionalDetails": "String",
  "displayName": "String",
  "lastHealthCheckDateTime": "String (timestamp)",
  "result": "String"
}
```
