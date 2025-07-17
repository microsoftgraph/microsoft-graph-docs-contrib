---
title: "educationAssignmentPointsGrade resource type"
description: "When an assignment is set to a points grade type, each submission has this object associated with the **submission.grade** property. This creates a subclass from educationAssignmentGrade,"
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationAssignmentPointsGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When an assignment is set to a points grade type, each submission has this object associated with the **submission.grade** property. This creates a subclass from [educationAssignmentGrade](educationassignmentgrade.md),
which will add the who data to this property. The max points are stored in the **assignments.grading** property.

Inherits from [educationAssignmentGrade](../resources/educationassignmentgrade.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|points|Double|Number of points a teacher gives to this submission object.|
|grade|String|The grade letter from the [grading scheme](../resources/educationgradingscheme.md) that corresponds to the given number of points.|
|gradedBy|[identitySet](identityset.md)| User who did the grading. Inherited from [educationAssignmentGrade](../resources/educationassignmentgrade.md). |
|gradedDateTime|DateTimeOffset| Moment in time when the grade was applied to this submission object. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [educationAssignmentGrade](../resources/educationassignmentgrade.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentPointsGrade"
}-->

```json
{
  "points": "Double",
  "grade": "String",
  "gradedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "gradedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignmentPointsGrade resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


