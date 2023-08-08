---
title: "loginPageLayoutConfiguration resource type"
description: "Contains details of the layout of the sign-in page for a tenant."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# loginPageLayoutConfiguration resource type

Namespace: microsoft.graph

Contains details of the layout of the sign-in page for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| layoutTemplateType | layoutTemplateType | Represents the layout template to be displayed on the login page for a tenant. The possible values are <ul><li> `default` - Represents the default Microsoft layout with a centered lightbox. <li> `verticalSplit` - Represents a layout with a backgound on the left side and a full-height lightbox to the right. <li> `unknownFutureValue` - Evolvable enumeration sentinel value. Do not use. </ul>  |
| isHeaderShown | Boolean | Option to show the header on the sign-in page. |
| isFooterShown | Boolean | Option to show the footer on the sign-in page. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
