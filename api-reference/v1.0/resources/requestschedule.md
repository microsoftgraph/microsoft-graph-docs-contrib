---
title: "requestSchedule resource type"
description: "In PIM, use this resource to define the schedule for when the principal has an eligible or active role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# requestSchedule resource type

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), users who want to get access package assignments create access package assignment requests. This request can include a schedule for when the user would like to have an assignment. An access package assignment that results from such a request also has a schedule.

In [PIM for Microsoft Entra roles](../resources/privilegedidentitymanagementv3-overview.md) and [PIM for Groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), use this resource to define the schedule for when the principal will have an eligible or active role assignment.

In entitlement management, this object is configured in the **schedule** property of:
- [accessPackageAssignment](../resources/accesspackageassignment.md)
- [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md)
- [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiration|[expirationPattern](../resources/expirationpattern.md)|When the eligible or active assignment expires.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The frequency of the  eligible or active assignment. This property is currently unsupported in PIM.|
|startDateTime|DateTimeOffset|When the  eligible or active assignment becomes active.|

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
