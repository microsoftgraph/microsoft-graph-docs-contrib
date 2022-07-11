---
title: "cloudPcHealthCheckItem resource type"
description: "Represents the details of the Cloud PC connectivity health check item."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
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
|result|[cloudPcConnectivityEventResult](../resources/cloudpcconnectivityevent.md#cloudpcconnectivityeventresult-values)|The result of this health check item. Possible values are: `unknown`, `success`, `failure`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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