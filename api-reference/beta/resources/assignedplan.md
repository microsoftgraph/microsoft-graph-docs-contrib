---
title: "assignedPlan resource type"
description: "The **assignedPlans** property of both the user entity and the organization entity is a collection of **assignedPlan**."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "frank-masuelli"
ms.date: 03/21/2024
---

# assignedPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **assignedPlans** property of both the [user](user.md) entity and the [organization](organization.md) entity is a collection of **assignedPlan**.


## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedDateTime|DateTimeOffset|The date and time at which the plan was assigned; for example: 2013-01-02T19:32:30Z. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|capabilityStatus|[capabilityStatus](#capabilitystatus-values)|Condition of the capability assignment. The possible values are `Enabled`, `Warning`, `Suspended`, `Deleted`, `LockedOut`.|
|service|String|The name of the service; for example, `exchange`.|
|servicePlanId|Guid|A GUID that identifies the service plan. For a complete list of GUIDs and their equivalent friendly service names, see [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference).|


### capabilityStatus values

The following table describes the possible statuses for the **capabilityStatus** of a subscription. The members are listed in the order of their transition if the license isn't renewed.

| Member | Description	|
|:---------------|:--------|
| Enabled | Available for normal use and assignment. |
| Warning | Available for normal use and assignment but is in a grace period. |
| Suspended | Unavailable for assignment but any data associated with the capability must be preserved. |
| LockedOut | Unavailable for all administrators and users for assignment but any data associated with the capability must be preserved. This is the state after `Suspended` and if the license isn't renewed, it is the final state before the plan is `Deleted`. |
| Deleted | Unavailable and any data associated with the capability may be deleted. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignedPlan"
}-->

```json
{
  "assignedDateTime": "String (timestamp)",
  "capabilityStatus": "String",
  "service": "String",
  "servicePlanId": "Guid"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "assignedPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


