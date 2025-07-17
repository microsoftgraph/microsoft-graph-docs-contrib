---
title: "educationLinkedAssignmentResource resource type"
description: "A subclass of educationResource that represents a link to an educationAssignment."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# educationLinkedAssignmentResource resource type

Namespace: microsoft.graph

A subclass of [educationResource](educationresource.md) that represents a link to an [educationAssignment](educationassignment.md). Only assignments from the same class can be attached to the module.

## Properties

| Property | Type   | Description                   |
| :------- | :----- | :---------------------------- |
| url      | String | URL of the actual assignment. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationLinkedAssignmentResource"
}-->

```json
{
  "url": "String"
}
```
