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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the various text strings that can be hidden on the sign-in page for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| layoutTemplateType | [layoutTemplateType](layoutTemplateType.md) | Represents the layout template to be displayed on the login page for a tenant. |
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
