---
title: "educationAssignmentPointsGrade resource type"
description: "When an assignment is set to a points grade type, each submission will have this object associated with the **submission.grade** property. This creates a subclass from educationAssignmentGrade,"
ms.localizationpriority: medium
author: "dipakboyed"
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignmentPointsGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When an assignment is set to a points grade type, each submission will have this object associated with the **submission.grade** property. This creates a subclass from [educationAssignmentGrade](educationassignmentgrade.md),
which will add the who data to this property. The max points is stored in the **assignments.grading** property.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|points|Single|Number of points a teacher is giving this submission object.|
|gradedBy|[identitySet](identityset.md)| User who did the grading. |
|gradedDateTime|DateTimeOffset| Moment in time when the grade was applied to this submission object. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignmentPointsGrade"
}-->

```json
{
  "points": "Double",
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


