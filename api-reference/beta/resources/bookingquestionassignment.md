---
title: "bookingQuestionAssignment resource type"
description: "Contains set of custom questions associated with a particular service."
ms.localizationpriority: medium
author: "razortbone"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingQuestionAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains set of custom questions associated with a particular service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isRequired|Boolean|The id of the custom question |
|questionId|String|If it is mandatory to answer the custom question |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingQuestionAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingQuestionAssignment",
  "questionId": "String",
  "isRequired": "Boolean"
}
```

