---
title: "entitlementManagementSchedule resource type"
description: "An entitlement management schedule can be included in an access package assignment request and is present in an access package assignment, and is also used for access reviews schedules in a policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# entitlementManagementSchedule complex type

Namespace: microsoft.graph

The entitlement management schedule is used in three scenarios in [Azure AD entitlement management](entitlementmanagement-overview.md). First, when an access package assignment request is created by a user who wants to obtain an access package assignment, this request can include a schedule for when the user would like to have an assignment. Second, an access package assignment that results from such a request also has a schedule.  Third, the `entitlementManagementSchedule` is also used in the [accessPackageAssignmentReviewSettings](accesspackageassignmentreviewsettings.md) of an assignment policy, to specify when the first access review will start and how often access reviews should reoccur.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiration|[expirationPattern](../resources/expirationpattern.md)|When the access should expire.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|For recurring access reviews.  Not used in access requests.|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
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


