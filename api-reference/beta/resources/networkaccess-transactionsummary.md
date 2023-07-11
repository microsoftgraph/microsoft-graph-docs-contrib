---
title: "transactionSummary resource type"
description: "A summary for network transactions traffic."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# transactionSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for network transcations traffic that's returned by the [transactionSummaries](../api/networkaccess-reports-transactionsummaries.md) method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockedCount|Int32|Count of transactions that were blocked.|
|totalCount|Int32|Count of transactions.|
|trafficType|microsoft.graph.networkaccess.trafficType|Traffic classification. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

