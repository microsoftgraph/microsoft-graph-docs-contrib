---
title: "bookingQuestionAssignment resource type"
description: "Contains the set of custom questions associated with a particular service."
ms.localizationpriority: medium
author: "razortbone"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
---

# bookingQuestionAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the set of custom questions associated with a particular service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isRequired|Boolean|Indicates whether it's mandatory to answer the custom question. |
|questionId|String|If it's mandatory to answer the custom question. |

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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

