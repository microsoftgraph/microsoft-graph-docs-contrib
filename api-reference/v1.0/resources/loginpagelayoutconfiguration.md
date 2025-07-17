---
title: "loginPageLayoutConfiguration resource type"
description: "Contains details of the layout of the sign-in page for a tenant."
author: nanguil
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# loginPageLayoutConfiguration resource type

Namespace: microsoft.graph

Contains details of the layout of the sign-in page for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| layoutTemplateType | layoutTemplateType | Represents the layout template to be displayed on the login page for a tenant. The possible values are <ul><li> `default` - Represents the default Microsoft layout with a centered lightbox. <li> `verticalSplit` - Represents a layout with a background on the left side and a full-height lightbox to the right. <li> `unknownFutureValue` - Evolvable enumeration sentinel value. Don't use. </ul>  |
| isHeaderShown | Boolean | Option to show the header on the sign-in page. |
| isFooterShown | Boolean | Option to show the footer on the sign-in page. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loginPageLayoutConfiguration",
  "layoutTemplateType": "String",
  "isHeaderShown": "Boolean",
  "isFooterShown": "Boolean",
}
```
