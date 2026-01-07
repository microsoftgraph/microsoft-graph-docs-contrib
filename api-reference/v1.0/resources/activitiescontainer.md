---
title: "activitiesContainer resource type"
description: "Represents a container for different types of activity logs related to Microsoft Purview data security and governance, such as content activities."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activitiesContainer resource type

Namespace: microsoft.graph

Represents a container for different types of activity logs related to Microsoft Purview data security and governance, such as content activities.

## Properties

| Property | Type   | Description                         |
| :------- | :----- | :---------------------------------- |
| id       | String | The unique identifier for the container. |

## Relationships

| Relationship    | Type                                                                                   | Description                                               |
| :-------------- | :------------------------------------------------------------------------------------- | :-------------------------------------------------------- |
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
