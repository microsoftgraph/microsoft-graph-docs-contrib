---
title: "webCategoriesSummary resource type"
description: "A summary for web categories being accessed."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# webCategoriesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary for web categories being accessed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int32|The count of unique devices that were seen.|
|transactionCount|Int32|Count of transactions.|
|userCount|Int32|Count of unique Azure Active Directory users that were seen.|
|webCategory|[microsoft.graph.networkaccess.webCategory](../resources/networkaccess-webcategory.md)|Classification that categorizes websites or online content into specific groups.|

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

