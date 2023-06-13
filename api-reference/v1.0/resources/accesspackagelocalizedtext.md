---
title: "accessPackageLocalizedText resource type"
description: "Represents a question in a specific language."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageLocalizedText resource type

Namespace: microsoft.graph

Represents a question in a specific language.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageCode|String|The language code that **text** is in. For example, "en-us". The language component follows 2-letter codes as defined in [ISO 639-1](https://www.iso.org/iso-639-language-codes.html), and the country component follows 2-letter codes as defined in [ISO 3166-1 alpha-2](https://www.iso.org/iso-3166-country-codes.html). Required. |
|text|String|The question in the specific language. Required. |

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
