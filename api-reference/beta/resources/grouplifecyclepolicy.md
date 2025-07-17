---
title: "groupLifecyclePolicy resource type"
description: "Represents a lifecycle policy for a Microsoft 365 group."
ms.localizationpriority: medium
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# groupLifecyclePolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy for a Microsoft 365 group. A group lifecycle policy allows administrators to set an expiration period for groups. For example, after 180 days, a group expires. When a group reaches its expiration, owners of the group are required to renew their group within a time interval defined by the administrator. 

- Once renewed, the group expiration is extended by the number of days defined in the policy and the group's **expirationDateTime** property defines the new expiration date.
- If the group is not renewed, it expires and is deleted. The group can be restored within a period of 30 days from deletion.

For more information, see [Manage the lifecycle of Microsoft 365 groups in your tenant](/entra/identity/users/groups-lifecycle).

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [List](../api/grouplifecyclepolicy-list.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | List all the groupLifecyclePolicies. Only one policy exists in a tenant. |
| [Create](../api/grouplifecyclepolicy-post-grouplifecyclepolicies.md) | [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) | Create a new groupLifecyclePolicy object. |
| [Get](../api/grouplifecyclepolicy-get.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) | Read properties and relationships of a groupLifecyclePolicy object. |
| [Update](../api/grouplifecyclepolicy-update.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) | Update a groupLifecyclePolicy object. |
| [Delete](../api/grouplifecyclepolicy-delete.md) | None | Delete a groupLifecyclePolicy object. |
| [Add group](../api/grouplifecyclepolicy-addgroup.md) | None | Add a group to a lifecycle policy |
| [Remove group](../api/grouplifecyclepolicy-removegroup.md) | None | Remove a group from a lifecycle policy. |
| [Renew group](../api/grouplifecyclepolicy-renewgroup.md) | None | Renew a group's expiration date. |

## Properties

| Property                    | Type   | Description                                                                                                                                                |
| :-------------------------- | :----- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- |
| alternateNotificationEmails | String | List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon. |
| groupLifetimeInDays         | Int32  | Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined.               |
| id                          | String | A unique identifier for a policy. Read-only.                                                                                                               |
| managedGroupTypes           | String | The group type for which the expiration policy applies. Possible values are **All**, **Selected** or **None**.                                             |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupLifecyclePolicy"
}-->

```json
{
  "alternateNotificationEmails": "String",
  "groupLifetimeInDays": 180,
  "id": "String (identifier)",
  "managedGroupTypes": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
