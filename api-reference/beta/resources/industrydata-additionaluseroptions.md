---
title: "additionalUserOptions resource type"
description: "The different management choices for the users to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# additionalUserOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different management choices for the users to be provisioned.

## Properties

| Property                       | Type    | Description                                                     |
| :----------------------------- | :------ | :-------------------------------------------------------------- |
| allowStudentContactAssociation | Boolean | Indicates whether student contact association should be allowed |
| markAllStudentsAsMinors        | Boolean | Indicates whether all students should be marked as minors       |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.additionalUserOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.additionalUserOptions",
  "markAllStudentsAsMinors": "Boolean",
  "allowStudentContactAssociation": "Boolean"
}
```
