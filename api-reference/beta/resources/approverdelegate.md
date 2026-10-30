---
title: "approverDelegate resource type"
description: "Represents the delegation of approval responsibilities from one user to another user or group, for a specified period of time."
author: "lnalepa"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/03/2026
---

# approverDelegate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the delegation of approval responsibilities from one user to another user or group, for a specified period of time.

An approver delegate applies across all [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md) access package assignment requests and all [access reviews](../resources/accessreviewsv2-overview.md) that are assigned to the user. While the delegation is in effect, the delegate can approve or deny on behalf of the user, and the user can still approve or deny their own pending items.

This resource is configured in the **approverDelegate** property of [identityGovernanceUserSettings](../resources/identitygovernanceusersettings.md), which is exposed through the **identityGovernance** property of the [user](../resources/user.md) resource. Users can manage their own approver delegate through the `/me/identityGovernance/approverDelegate` path, and administrators can manage the approver delegate of any user through the `/users/{user-id}/identityGovernance/approverDelegate` path.

## Methods

None.

To manage the approver delegate of a user, use the [Get approverDelegate](../api/approverdelegate-get.md) and [Update approverDelegate](../api/approverdelegate-update.md) methods on the [user](../resources/user.md) resource.

There's no delete operation. To stop a delegation, use the update operation to submit a schedule that has already expired.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| delegate | [userSet](../resources/userset.md) | The user or group that receives the approval delegation. Only the [singleUser](../resources/singleuser.md) and [groupMembers](../resources/groupmembers.md) subtypes are supported. |
| schedule | [requestSchedule](../resources/requestschedule.md) | The period during which the delegation is in effect, expressed as a start date and an expiration pattern. If you don't specify a schedule, the delegation starts immediately and doesn't expire. |

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
  "delegate": {
    "@odata.type": "microsoft.graph.userSet"
  },
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  }
}
```
