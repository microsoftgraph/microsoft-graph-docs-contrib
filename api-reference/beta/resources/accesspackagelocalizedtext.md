---
title: "accessPackageLocalizedText resource type"
description: "A complex type used to represent a string in a specific language."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessPackageLocalizedText resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type used to represent a string in a specific language.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageCode|String|The ISO code for the intended language. Required. |
|text|String|The text in the specific language. Required. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageLocalizedText"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageLocalizedText",
  "text": "String",
  "languageCode": "String"
}
```
