---
title: "addWatermarkAction resource type"
description: "Action specifies the details on the watermark to be added to the information, if applicable."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# addWatermarkAction resource type

[!INCLUDE beta-disclaimer]

The applyLabel or applyLabelFromClassification APIs may return addWatermarkAction. The action instructs the consuming application about if a watermark is required and, if so, what are the properties of that watermark.

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

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addWatermarkAction",
  "baseType": "microsoft.informationProtection.informationProtectionAction"
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