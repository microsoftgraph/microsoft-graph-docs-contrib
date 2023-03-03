---
title: "expirationPattern resource type"
description: "The expiration pattern defines when a request or assignment expires."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# expirationPattern resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package assignment request is created by a user who wants to obtain an access package assignment. This request can include a schedule for when the user would like to have an assignment. An access package assignment that results from such a request also has a schedule. The expiration field of an [entitlementManagementSchedule](entitlementmanagementschedule.md) indicates when the access package assignment should expire.

In PIM, use this resource to define when a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) or [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md) object expires. The settings allowed for this object are dependent on the [settings for the Azure AD role](../api/unifiedrolemanagementpolicy-list-rules.md). For example, if the settings of the Azure AD role specifies that permanent eligible assignments aren't allowed, specifying `noExpiration` for the **type** property returns an error.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|duration|Duration|The requestor's desired duration of access represented in ISO 8601 format for durations. For example, PT3H refers to three hours.  If specified in a request, **endDateTime** should not be present and the **type** property should be set to `afterDuration`.|
|endDateTime|DateTimeOffset|Timestamp of date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|type|[expirationPatternType](#expirationpatterntype-values)|The requestor's desired expiration pattern type. The possible values are: `notSpecified`, `noExpiration`, `afterDateTime`, `afterDuration`. |

### expirationPatternType values

| Member | Description |
|:---------------|:--------|
|notSpecified|No expiration schedule was specified.|
|noExpiration|The requestor did not wish the access to expire.|
|afterDateTime|Access will expire after a specified date and time.|
|afterDuration|Access will expire after a specified duration relative to access being granted. Required when the **duration** property is specified.|

## Relationships
None.

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
  "duration": "String (duration)",
  "endDateTime": "String (timestamp)",
  "type": "String"
}
```


