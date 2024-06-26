---
title: "webCategoriesSummary resource type"
description: "A summary of the users, devices, and transactions that recently accessed a web category."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# webCategoriesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary of the users, devices, and transactions that recently accessed a web category.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int32|The number of unique devices that were seen.|
|transactionCount|Int32|The number of transactions that were seen.|
|userCount|Int32|The number of unique Microsoft Entra ID users that were seen.|
|webCategory|[microsoft.graph.networkaccess.webCategory](../resources/networkaccess-webcategory.md)|The website category.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webCategoriesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webCategoriesSummary",
  "webCategory": {
    "@odata.type": "microsoft.graph.networkaccess.webCategory"
  },
  "userCount": "Integer",
  "deviceCount": "Integer",
  "transactionCount": "Integer"
}
```

