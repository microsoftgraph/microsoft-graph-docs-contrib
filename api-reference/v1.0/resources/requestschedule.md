---
title: "requestSchedule resource type"
description: "In PIM, use this resource to define the schedule for when the principal has an eligible or active role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# requestSchedule resource type

Namespace: microsoft.graph

In [PIM for Microsoft Entra roles](privilegedidentitymanagementv3-overview.md) and [PIM for Groups](privilegedidentitymanagement-for-groups-api-overview.md), use this resource to define the schedule for when the principal will have an eligible or active role assignment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiration|[expirationPattern](../resources/expirationpattern.md)|When the eligible or active assignment expires.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The frequency of the  eligible or active assignment. This property is currently unsupported in PIM.|
|startDateTime|DateTimeOffset|When the  eligible or active assignment becomes active.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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
