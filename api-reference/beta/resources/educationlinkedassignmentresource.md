---
title: "educationLinkedAssignmentResource resource type"
description: "A subclass of educationResource that represents a link to an educationAssignment."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: resourcePageType
---

# educationLinkedAssignmentResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md) that represents a link to an [educationAssignment](educationassignment.md). Only assignments from the same class can be attached to the module.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|url|String|URL of the actual assignment.|

## JSON representation

The following is a JSON representation of the resource.

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
