---
title: "dataSubjectRequestDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSubjectRequestDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludedItemCount|Int64|**TODO: Add Description**|
|insightCounts|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description**|
|itemCount|Int64|**TODO: Add Description**|
|itemNeedReview|Int64|**TODO: Add Description**|
|productItemCounts|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description**|
|signedOffItemCount|Int64|**TODO: Add Description**|
|totalItemSize|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSubjectRequestDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubjectRequestDetail",
  "excludedItemCount": "Integer",
  "insightCounts": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "itemCount": "Integer",
  "itemNeedReview": "Integer",
  "productItemCounts": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "signedOffItemCount": "Integer",
  "totalItemSize": "Integer"
}
```

