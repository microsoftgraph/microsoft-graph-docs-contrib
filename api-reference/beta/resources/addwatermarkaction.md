---
title: "addWatermarkAction resource type (deprecated)"
description: "Represents an action that specifies the details on the content watermark to be added to the information, if applicable. Deprecated."
ms.localizationpriority: medium
author: "tommoser"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# addWatermarkAction resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Represents an action that specifies the details on the content watermark to be added to the information, if applicable.

## Properties

| Property      | Type   | Description                                                      |
| :------------ | :----- | :--------------------------------------------------------------- |
| fontColor     | String | Color of the font to use for the watermark.                      |
| fontName      | String | Name of the font to use for the watermark.                       |
| fontSize      | Int32  | Font size to use for the watermark.                              |
| layout        | String | Possible values are: `horizontal`, `diagonal`.                   |
| text          | String | The contents of the watermark itself.                            |
| uiElementName | String | The name of the UI element where the watermark should be placed. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addWatermarkAction",
  "baseType": "microsoft.graph.informationProtectionAction"
}-->

```json
{
  "fontColor": "String",
  "fontName": "String",
  "fontSize": 1024,
  "layout": "String",
  "text": "String",
  "uiElementName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "addWatermarkAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

