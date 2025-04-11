---
title: "protectedContent complex type"
description: "Represents input content details for computing rights and inheritance, including label ID and format."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# protectedContent complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the input details for a piece of content when requesting the computation of applicable user rights and label inheritance using the `computeRightsAndInheritance` action.

## Properties

| Property | Type   | Description                                                     |
| :------- | :----- | :-------------------------------------------------------------- |
| cid      | String | An optional content identifier provided by the caller.          |
| format   | String | The format of the content (e.g., "Email", "File", "Pdf").     |
| labelId  | String | The unique identifier of the sensitivity label applied to this content. |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedContent",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.protectedContent",
  "labelId": "String",
  "cid": "String",
  "format": "String"
}
```
