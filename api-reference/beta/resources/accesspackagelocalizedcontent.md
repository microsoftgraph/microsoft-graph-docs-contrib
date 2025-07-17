---
title: "accessPackageLocalizedContent resource type"
description: "A complex type used to represent text in different locals, along with a default text.*"
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# accessPackageLocalizedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type used to represent a text in multiple localized forms. It includes a default text, which is used in any case where the requested localization isn't available.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultText|String|The fallback string, which is used when a requested localization isn't available. Required. |
|localizedTexts|[accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md) collection|Content represented in a format for a specific locale. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageLocalizedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageLocalizedContent",
  "defaultText": "String",
  "localizedTexts": [
    {
      "@odata.type": "microsoft.graph.accessPackageLocalizedText"
    }
  ]
}
```
