---
title: "requestSchedule resource type"
description: "In PIM, use this resource to define the schedule for when the principal will have an eligible or active role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# requestSchedule resource type

Namespace: microsoft.graph

In PIM when creating or updating a [unifiedRoleAssignmentScheduleRequest](unifiedroleassignmentschedulerequest.md) or [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md) object, use this resource to define the schedule for when the principal will have an eligible or active role assignment. The settings allowed for this object are dependent on the [settings for the Azure AD role](../api/unifiedrolemanagementpolicy-list-rules.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiration|[expirationPattern](../resources/expirationpattern.md)|When the eligible or active assignment expires.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The frequency of the  eligible or active assignment. This property is currently unsupported in PIM.|
|startDateTime|DateTimeOffset|When the  eligible or active assignment becomes active.|

## Relationships
None.

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

