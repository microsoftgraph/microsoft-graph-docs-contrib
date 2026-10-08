---
title: "approverDelegate resource type"
description: "Represents an approver delegate configuration that consists of a delegate identity and a schedule."
author: "lnalepa"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/03/2026
---

# approverDelegate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an approver delegate configuration that consists of a delegate (subject set) and a schedule. When set, the delegate can approve or deny Entitlement Management access package requests and Access Review decisions on behalf of the primary approver. The delegation applies across all Entitlement Management access package requests and Access Reviews assigned to the user. Only [singleUser](singleuser.md) and [groupMembers](groupmembers.md) implementations of [subjectSet](subjectset.md) are currently supported as delegate targets.

## Methods

None. Use the operations on the parent resource [identityGovernanceUserSettings](identitygovernanceusersettings.md) to manage the approver delegate.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| delegate | [subjectSet](subjectset.md) | The identity that receives the approval delegation. Only [singleUser](singleuser.md) and [groupMembers](groupmembers.md) are currently supported. |
| schedule | [requestSchedule](requestschedule.md) | The schedule for the delegation, including start date and expiration pattern (duration, end date, or no expiration). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.approverDelegate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approverDelegate",
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "delegate": {
    "@odata.type": "microsoft.graph.subjectSet"
  }
}
```
