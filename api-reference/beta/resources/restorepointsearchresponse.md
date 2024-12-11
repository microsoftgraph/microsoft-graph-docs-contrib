---
title: "restorePointSearchResponse resource type"
description: "Contains a collection of protection units for which no restore point is found and a collection of restore points for the protectionUnit objects with a protection history in the specified time period."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/30/2024
---

# restorePointSearchResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Contains a collection of protection units for which no [restorePoint](../resources/restorepoint.md) is found and a collection of restore points for the [protectionUnit](../resources/protectionunitbase.md) objects with a protection history in the specified time period.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|noResultProtectionUnitIds|String collection|Contains  alist of protection units with no restore points.|
|searchResponseId|String|The unique identifier of the search response.|
|searchResults|[restorePointSearchResult](../resources/restorepointsearchresult.md) collection|Contains a collection of restore points.|

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

