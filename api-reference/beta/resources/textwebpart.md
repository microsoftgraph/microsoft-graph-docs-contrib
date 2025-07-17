---
title: 'textWebPart resource type'
description: Represents a text web part instance on a SharePoint page.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 03/21/2024
---

# textWebPart resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a text web part instance on a SharePoint page.

Inherits from [webPart](../resources/webpart.md).

## Properties

| Property  | Type   | Description                                                                          |
| :-------- | :----- | :----------------------------------------------------------------------------------- |
| id        | String | Instance identifier of the web part. Inherited from [entity](../resources/entity.md). |
| innerHtml | String | The HTML string in text web part.                                                     |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.textWebPart",
  "baseType": "microsoft.graph.webPart",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.textWebPart",
  "id": "String (identifier)",
  "innerHtml": "String"
}
```
