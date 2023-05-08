---
title: "bookingQuestionAssignment resource type"
description: "Contains the set of custom questions associated with a particular service."
ms.localizationpriority: medium
author: "razortbone"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingQuestionAssignment resource type

Namespace: microsoft.graph

Contains the set of custom questions associated with a particular service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isRequired|Boolean|The ID of the custom question.|
|questionId|String|Indicates whether it is mandatory to answer the custom question.|

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
  "isRequired": "Boolean",
  "questionId": "String"
}
```

