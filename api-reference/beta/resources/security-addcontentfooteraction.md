---
title: "addContentFooterAction resource type"
description: "Represents an action that specifies the details on the content footer to be added to the information, if applicable."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# addContentFooterAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that specifies the details on the content footer to be added to the information, if applicable.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties
| Property      | Type   | Description                                                   |
| :------------ | :----- | :------------------------------------------------------------ |
| alignment     | String | The horizontal alignment of the footer.                       |
| fontColor     | String | Color of the font to use for the footer.                      |
| fontName      | String | Name of the font to use for the footer.                       |
| fontSize      | Int32  | Font size to use for the footer.                              |
| margin        | Int32  | The margin of the header from the bottom of the document.     |
| text          | String | The contents of the footer itself.                            |
| uiElementName | String | The name of the UI element where the footer should be placed. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.addContentFooterAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.addContentFooterAction",
  "alignment": "String",
  "fontColor": "String",
  "fontName": "String",
  "fontSize": "Integer",
  "margin": "Integer",
  "text": "String",
  "uiElementName": "String"
}
```

