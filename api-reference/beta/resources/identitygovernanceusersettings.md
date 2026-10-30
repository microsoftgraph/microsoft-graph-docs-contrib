---
title: "identityGovernanceUserSettings resource type"
description: "Represents the identity governance settings of a user."
author: "lnalepa"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/03/2026
---

# identityGovernanceUserSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity governance settings of a [user](../resources/user.md).

This resource is configured in the **identityGovernance** property of the [user](../resources/user.md) resource. To retrieve these settings, include `$select=identityGovernance` when you [get a user](../api/user-get.md).

## Methods

None. To manage the approver delegate of a user, use the [Get approverDelegate](../api/approverdelegate-get.md) and [Update approverDelegate](../api/approverdelegate-update.md) methods.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| approverDelegate | [approverDelegate](../resources/approverdelegate.md) | The user or group that approves Microsoft Entra entitlement management access package assignment requests and access reviews on behalf of the user, and the period during which the delegation is in effect. Nullable. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernanceUserSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernanceUserSettings",
  "approverDelegate": {
    "@odata.type": "microsoft.graph.approverDelegate"
  }
}
```
