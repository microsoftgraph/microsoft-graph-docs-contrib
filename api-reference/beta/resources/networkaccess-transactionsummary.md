---
title: "transactionSummary resource type"
description: "Contains information about network transactions."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# transactionSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about network transactions.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockedCount|Int32|The number of transactions that were blocked.|
|totalCount|Int32|The total number of transactions.|
|trafficType|microsoft.graph.networkaccess.trafficType|The trraffic classification. The possible values are `internet`, `private`, `microsoft365`, and `all`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.transactionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.transactionSummary",
  "trafficType": "String",
  "totalCount": "Integer",
  "blockedCount": "Integer"
}
```

