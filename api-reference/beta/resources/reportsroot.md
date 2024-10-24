---
title: "reportsRoot resource type"
description: "Represents a container for Microsoft Entra ID and Microsoft 365 reporting resources."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for Microsoft Entra ID and Microsoft 365 reporting resources.

## Methods

None.

## Properties

None.

## Relationships

| Relationship                      | Type                                                                                  | Description                                                                                                                              |
| :-------------------------------- | :------------------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------- |
| readingAssignmentSubmission       | [readingAssignmentSubmission](../resources/readingassignmentsubmission.md) collection | Represents the submission details of the reading assignment associated with this data.                                                   |
| reflectCheckInResponse            | [reflectCheckInResponse](../resources/reflectcheckinresponse.md) collection           | Represents the response to the Microsoft Reflect check-in associated with this data.                                                     |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.reportsRoot"
}
```
