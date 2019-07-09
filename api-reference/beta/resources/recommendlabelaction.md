---
title: "recommendLabelAction resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# recommendLabelAction resource type

[!INCLUDE beta-disclaimer]

PROVIDE DESCRIPTION HERE

## Properties

| Property          | Type                                                                     | Description |
| :---------------- | :----------------------------------------------------------------------- | :---------- |
| actions           | [informationProtectionAction](informationprotectionaction.md) collection |             |
| classificationIds | Guid collection                                                          |             |
| labelId           | String                                                                   |             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recommendLabelAction",
  "baseType": "microsoft.informationProtection.informationProtectionAction"
}-->

```json
{
  "actions": [{"@odata.type": "microsoft.graph.informationProtectionAction"}],
  "classificationIds": ["Guid"],
  "labelId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recommendLabelAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->