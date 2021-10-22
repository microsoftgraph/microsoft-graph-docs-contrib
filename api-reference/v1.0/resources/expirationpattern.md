---
title: "expirationPattern resource type"
description: "The expiration pattern in a request schedule can be included in an access package assignment request and is present in an access package assignment."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# expirationPattern resource type

Namespace: microsoft.graph


In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment request is created by a user who wants to obtain an access package assignment. This request can include a schedule for when the user would like to have an assignment.  An access package assignment that results from such a request also has a schedule.  The expiration field of an [entitlementManagementSchedule](entitlementmanagementschedule.md) indicates when the access package assignment should expire.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|duration|Duration|The requestor's desired duration of access represented in ISO 8601 format for durations. For example, PT3H refers to three hours.  If specified in a request, **endDateTime** should not be present and the **type** property should be set to `afterDuration`.|
|endDateTime|DateTimeOffset|Timestamp of date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|type|expirationPatternType|The requestor's desired expiration pattern type.|

## Relationships
None.
### expirationPatternType values

| Member | Value| Description |
|:---------------|:--------|:----------|
|notSpecified|0|No expiration schedule was specified.|
|noExpiration|1|The requestor did not wish the access to expire.|
|afterDateTime|2|Access will expire after a specified date and time.|
|afterDuration|3|Access will expire after a specified duration relative to access being granted. Required when the **duration** property is specified.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.expirationPattern"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.expirationPattern",
  "endDateTime": "String (timestamp)",
  "duration": "String (duration)",
  "type": "String"
}
```


