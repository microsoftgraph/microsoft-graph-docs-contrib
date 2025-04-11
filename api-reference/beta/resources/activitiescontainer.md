---
title: "activities"
toc.title: "activities (preview)"
description: "Container for different types of activity logs related to data security and governance, such as content activities and audit activities."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activitiesContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container entity holding collections of different types of activity logs related to data security and governance.

## Properties

| Property | Type   | Description                         |
| :------- | :----- | :---------------------------------- |
| id       | String | The unique identifier for the container. |

## Relationships

| Relationship    | Type                                                                                   | Description                                               |
| :-------------- | :------------------------------------------------------------------------------------- | :-------------------------------------------------------- |
| auditActivities | [auditActivity](../resources/auditactivity.md) collection | Collection of standard audit activity logs for the user.   |
| contentActivities | [contentActivity](../resources/contentactivity.md) collection | Collection of activity logs related to content processing. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activitiesContainer",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.activitiesContainer",
  "id": "String (identifier)"
}
```
