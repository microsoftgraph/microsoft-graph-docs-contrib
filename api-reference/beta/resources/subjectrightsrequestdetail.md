---
title: "subjectRightsRequestDetail resource type"
description: "Represents the details of a subject rights request, including number of items found, number of items reviewed, and so on."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequestDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a subject rights request, including number of items found, number of items reviewed, and so on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludedItemCount|Int64|Count of items that are excluded from the request.|
|insightCounts|[keyValuePair](../resources/keyvaluepair.md) collection|Count of items per insight.|
|itemCount|Int64|Count of items found.|
|itemNeedReview|Int64|Count of item that need review.|
|productItemCounts|[keyValuePair](../resources/keyvaluepair.md) collection|Count of items per product, such as Exchange, SharePoint, OneDrive, and Teams.|
|signedOffItemCount|Int64|Count of items signed off by the administrator.|
|totalItemSize|Int64|Total item size in bytes.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestDetail",
      "itemCount": "Int64",
      "totalItemSize": "Int64",
      "itemNeedReview": "Int64",
      "signedOffItemCount": "Int64",
      "excludedItemCount": "Int64",
      "productItemCounts": [],
      "insightCounts": []
}
```

