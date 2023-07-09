---
title: "entitiesSummary resource type"
description: "A summary for Global Secure Access entities."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# entitiesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for Global Secure Access entities that's returned by the [entitiesSummaries](../api/networkaccess-reports-entitiessummaries.md) method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|Count of unique devices that were seen.|
|trafficType|microsoft.graph.networkaccess.trafficType|Traffic classification. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|
|userCount|Int64|Count of unique Azure Active Directoy users that were seen.|
|workloadCount|Int64|Count of unique target workloads or hosts that were seen.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.entitiesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.entitiesSummary",
  "trafficType": "String",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "workloadCount": "Integer"
}
```

