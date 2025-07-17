---
title: "requestSchedule resource type"
description: "A request schedule can be included in an access package assignment request and is present in an access package assignment. In Privileged identity Management (PIM), use this resource to define the schedule for when the principal has an eligible or active role assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# requestSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), users who want to get access package assignments create access package assignment requests. This request can include a schedule for when the user would like to have an assignment. An access package assignment that results from such a request also has a schedule.

In [PIM for Microsoft Entra roles](privilegedidentitymanagementv3-overview.md) and [PIM for Groups](privilegedidentitymanagement-for-groups-api-overview.md), use this resource to define the schedule for when the principal has an eligible or active role assignment.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. In PIM, when the  eligible or active assignment becomes active.|
|expiration|[expirationPattern](expirationpattern.md)|In entitlement management, when the access should expire.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|For recurring access, or eligible or active assignment. This property is currently unsupported in both PIM and entitlement management.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
