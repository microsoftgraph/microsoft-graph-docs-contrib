---
title: "connectionSummary resource type"
description: "Represents a summary of connections grouped by traffic type."
author: "miritsadon"
ms.date: 04/20/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# connectionSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of connections grouped by traffic type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalCount|Int32|Total number of connections for the specified traffic type.|
|trafficType|microsoft.graph.networkaccess.trafficType|The type of network traffic these connections represent. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.connectionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.connectionSummary",
  "trafficType": "String",
  "totalCount": "Integer"
}
