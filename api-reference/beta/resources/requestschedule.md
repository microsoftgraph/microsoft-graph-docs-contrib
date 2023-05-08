---
title: "requestSchedule resource type"
description: "An request schedule can be included in an access package assignment request and is present in an access package assignment. In PIM, use this resource to define the schedule for when the principal will have an eligible or active role assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# requestSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package assignment request is created by a user who wants to obtain an access package assignment. This request can include a schedule for when the user would like to have an assignment.  An access package assignment that results from such a request also has a schedule.

In [PIM for Azure AD roles](privilegedidentitymanagementv3-overview.md) and [PIM for Groups](privilegedidentitymanagement-for-groups-api-overview.md), use this resource to define the schedule for when the principal will have an eligible or active role assignment.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. In PIM, when the  eligible or active assignment becomes active.|
|expiration|[expirationPattern](expirationpattern.md)|In entitlement management, when the access should expire.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|For recurring access, or eligible or active assignment. This property is currently unsupported in both PIM and entitlement management.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.requestSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.requestSchedule",
  "startDateTime": "String (timestamp)",
  "expiration": {
    "@odata.type": "microsoft.graph.expirationPattern"
  },
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requestSchedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


