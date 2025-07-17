---
title: "educationOnPremisesInfo resource type"
description: "Additional information used to associate an on-premises Active Directory user account to their Microsoft Entra user object."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# educationOnPremisesInfo resource type

Namespace: microsoft.graph

Additional information used to associate an on-premises Active Directory user account to their Microsoft Entra user object.

## Properties

| Property    | Type   | Description                                               |
| :---------- | :----- | :-------------------------------------------------------- |
| immutableId | String | Unique identifier for the user object in Active Directory. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOnPremisesInfo"
}-->

```json
{
  "immutableId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationOnPremisesInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
