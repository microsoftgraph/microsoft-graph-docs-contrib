---
title: 'webPartPosition resource type'
description: Represents the position information of the given WebPart to the current page.
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# webPartPosition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the position information of the given WebPart to the current page.

## Properties

| Property            | Type    | Description                                                                              |
| :------------------ | :------ | :--------------------------------------------------------------------------------------- |
| columnId            | Double  | Indicates the identifier of the column where the webPart located in.                      |
| horizontalSectionId | Double  | Indicates the horizontal section where the webPart located in.                            |
| isInVerticalSection | boolean | Indicates whether the webPart located in the vertical section.                            |
| webPartIndex        | Double  | Index of the current webPart. Represents the order of webPart in this column or section. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webPartPosition"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.webPartPosition",
  "webPartIndex": "Double",
  "horizontalSectionId": "Double",
  "isInVerticalSection": "Boolean",
  "columnId": "Double"
}
```
