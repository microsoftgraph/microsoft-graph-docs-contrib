---
title: "patternedRecurrence resource type"
description: "The recurrence pattern and range."
ms.localizationpriority: medium
author: "iamgirishck"
ms.prod: "governance"
doc_type: resourcePageType
---

# patternedRecurrence resource type

Namespace: microsoft.graph

The recurrence pattern and range. This shared object is used to define the recurrence of the following objects:
+ [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) objects in Azure AD access reviews APIs
+ [event](event.md) objects in the calendar API
+ [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) and [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md) objects in PIM
+ [accessPackageAssignment](accesspackageassignment.md) objects in Azure AD entitlement management.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|pattern|[recurrencePattern](recurrencepattern.md)|The frequency of an event. <br/><br/> For access reviews: <li>Do not specify this property for a one-time access review. <li> Only **interval**, **dayOfMonth**, and **type** (`weekly`, `absoluteMonthly`) properties of [recurrencePattern](recurrencepattern.md) are supported.|
|range|[recurrenceRange](recurrencerange.md)|The duration of an event.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.patternedRecurrence"
}-->

```json
{
  "pattern": {"@odata.type": "microsoft.graph.recurrencePattern"},
  "range": {"@odata.type": "microsoft.graph.recurrenceRange"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patternedRecurrence resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

