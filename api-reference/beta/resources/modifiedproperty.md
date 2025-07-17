---
title: "modifiedProperty resource type"
description: "Describes the changes performed in the target system."
ms.localizationpriority: medium
author: "keylimesoda"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# modifiedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the changes performed in the target system. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Name of property that was modified.|
|newValue|String|New property value.|
|oldValue|String|Old property value.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.modifiedProperty",
  "baseType": null
}-->

```json
{
  "displayName": "String",
  "newValue": "String",
  "oldValue": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "modifiedProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


