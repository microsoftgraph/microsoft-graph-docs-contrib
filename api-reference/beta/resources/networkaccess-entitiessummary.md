---
title: "entitiesSummary resource type"
description: "Contains information about unique connectivity entities."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# entitiesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about unique connectivity entities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|The number of unique devices that were seen.|
|trafficType|microsoft.graph.networkaccess.trafficType|The traffic classification. The possible values are: `internet`, `private`, `microsoft365`, `all`.|
|userCount|Int64|The number of unique Microsoft Entra ID users that were seen.|
|workloadCount|Int64|The number of unique target workloads/hosts that were seen.|



## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
