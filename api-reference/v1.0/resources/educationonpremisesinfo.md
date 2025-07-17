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

| Property    | Type   | Description                                                |
| :---------- | :----- | :--------------------------------------------------------- |
| immutableId | String | Unique identifier for the user object in Active Directory. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationOnPremisesInfo"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationOnPremisesInfo",
  "immutableId": "String"
}
```
