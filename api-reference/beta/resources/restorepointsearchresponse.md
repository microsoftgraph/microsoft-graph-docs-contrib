---
title: "restorePointSearchResponse resource type"
description: "Contains collection of Protection Unit for which no Restore Point found and a collection of Restore Point for Protection Units with protection history in specified time period."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restorePointSearchResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Contains collection of Protection Unit for which no [restorePoints](../resources/restorepoint.md) found and a collection of Restore Point for [protectionUnits](../resources/protectionunitbase.md) with protection history in specified time period.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|noResultProtectionUnitIds|String collection|Contains list of protection unit with restore points.|
|searchResponseId|String|Unique identifier of the search response.|
|searchResults|[restorePointSearchResult](../resources/restorepointsearchresult.md) collection|Collection of restore points.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restorePointSearchResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restorePointSearchResponse",
  "searchResponseId": "String",
  "searchResults": [
    {
      "@odata.type": "microsoft.graph.restorePointSearchResult"
    }
  ],
  "noResultProtectionUnitIds": [
    "String"
  ]
}
```

