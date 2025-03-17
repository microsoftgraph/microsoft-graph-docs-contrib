---
title: "entitlementManagementSchedule resource type"
description: "An entitlement management schedule can be included in an access package assignment request and is present in an access package assignment. It's also used for access reviews schedules in a policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# entitlementManagementSchedule resource type

Namespace: microsoft.graph

The entitlement management schedule is used in three scenarios in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). First, when a user creates an access package assignment request, the request can include a schedule for when the user wants an assignment. Second, an access package assignment that results from such a request also has a schedule. Third, the `entitlementManagementSchedule` is also used in the [accessPackageAssignmentReviewSettings](accesspackageassignmentreviewsettings.md) of an assignment policy, to specify when the first access review starts and how often access reviews should reoccur.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiration|[expirationPattern](../resources/expirationpattern.md)| When the access should expire. |
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurring access review pattern. Not used in access requests.|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entitlementManagementSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementManagementSchedule",
  "expiration": {
    "@odata.type": "microsoft.graph.expirationPattern"
  },
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "startDateTime": "String (timestamp)"
}
```
