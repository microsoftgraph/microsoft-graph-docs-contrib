---
title: "addWatermarkAction resource type"
description: "Represents an action that specifies the details on the content watermark to be added to the information, if applicable."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# addWatermarkAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that specifies the details on the content watermark to be added to the information, if applicable.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property      | Type   | Description                                                                 |
| :------------ | :----- | :-------------------------------------------------------------------------- |
| fontColor     | String | Color of the font to use for the watermark.                                 |
| fontName      | String | Name of the font to use for the watermark.                                  |
| fontSize      | Int32  | Font size to use for the watermark.                                         |
| layout        | String | The layout of the watermark. Possible values are: `horizontal`, `diagonal`. |
| text          | String | The contents of the watermark itself.                                       |
| uiElementName | String | The name of the UI element where the watermark should be placed.            |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.addWatermarkAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.addWatermarkAction",
  "fontColor": "String",
  "fontName": "String",
  "fontSize": "Integer",
  "layout": "String",
  "text": "String",
  "uiElementName": "String"
}
```

