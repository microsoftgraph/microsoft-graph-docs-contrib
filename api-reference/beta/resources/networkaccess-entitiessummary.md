---
title: "entitiesSummary resource type"
description: "entitiesSummary provides key information about unique connectivity entities."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# entitiesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

entitiesSummary provides key information about unique connectivity entities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|Count of unique devices that were seen.|
|trafficType|microsoft.graph.networkaccess.trafficType|Traffic classification. The possible values are: `internet`, `private`, `microsoft365`, `all`.|
|userCount|Int64|Count of unique Azure Active Directoy users that were seen.|
|workloadCount|Int64|Count of unique target workloads/hosts that were seen.|



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
