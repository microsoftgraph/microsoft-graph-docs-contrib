---
title: "accessPackageLocalizedText resource type"
description: "A complex type used to represent a string in a specific language."
author: "saylee-dharne-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageLocalizedText resource type

Namespace: microsoft.graph

A complex type used to represent a string in a specific language.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageCode|String|The ISO code for the intended language. Required. |
|text|String|The text in the specific language. Required. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
