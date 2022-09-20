---
title: "loginPageLayoutConfiguration resource type"
description: "Contains details of the organization's branding."
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
| layoutTemplateType | Microsoft.DirectoryServices.layoutTemplateType | A layout of the sign-in page which is applied to the page. Supported values are: 1. "default" for the default Microsoft layout with centered lightbox. 2. "verticalSplit" for the layout with backgound in left side and full-height lightbox to the right. |
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
  "layoutTemplateType": "layoutTemplateType",
  "isHeaderShown": "Boolean",
  "isFooterShown": "Boolean",
}
```
