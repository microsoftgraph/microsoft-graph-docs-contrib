---
title: "addContentHeaderAction resource type"
description: "Represents an action that specifies the details on the content header to be added to the information, if applicable."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# addContentHeaderAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that specifies the details on the content header to be added to the information, if applicable.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties

| Property      | Type   | Description                                                   |
| :------------ | :----- | :------------------------------------------------------------ |
| alignment     | String | The horizontal alignment of the header.                       |
| fontColor     | String | Color of the font to use for the header.                      |
| fontName      | String | Name of the font to use for the header.                       |
| fontSize      | Int32  | Font size to use for the header.                              |
| margin        | Int32  | The margin of the header from the top of the document.        |
| text          | String | The contents of the header itself.                            |
| uiElementName | String | The name of the UI element where the header should be placed. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.addContentHeaderAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.addContentHeaderAction",
  "alignment": "String",
  "fontColor": "String",
  "fontName": "String",
  "fontSize": "Integer",
  "margin": "Integer",
  "text": "String",
  "uiElementName": "String"
}
```

