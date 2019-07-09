---
title: "downgradeJustification resource type"
description: "User input on why downgrade was performed."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# downgradeJustification resource type

Downgrade justification may be required based on label policy configuration in Office Security and Compliance Center.

## Properties

| Property             | Type    | Description                                                                                          |
| :------------------- | :------ | :--------------------------------------------------------------------------------------------------- |
| isDowngradeJustified | Boolean | Set to indicate that downgrade is or is not justified.                                               |
| justificationMessage | String  | Message to provide to API on why downgrade is justified. Message will appear in administrative logs. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.downgradeJustification",
  "baseType": null
}-->

```json
{
  "isDowngradeJustified": true,
  "justificationMessage": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "downgradeJustification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->