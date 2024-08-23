---
title: "additionalClassGroupOptions resource type"
description: "The different management choices for the class groups to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# additionalClassGroupOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different management choices for the class groups to be provisioned.

## Properties

| Property                     | Type    | Description                                                            |
| :--------------------------- | :------ | :--------------------------------------------------------------------- |
| createTeam                   | Boolean | Indicates whether a team should be created for the class group.        |
| writeDisplayNameOnCreateOnly | Boolean | Indicates whether the class group display name should be set on create. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.additionalClassGroupOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.additionalClassGroupOptions",
  "createTeam": "Boolean",
  "writeDisplayNameOnCreateOnly": "Boolean"
}
```
