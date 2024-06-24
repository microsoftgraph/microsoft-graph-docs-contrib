---
title: "groupLifecyclePolicy: removeGroup"
description: "Removes a group from a lifecycle policy."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: apiPageType
---

# groupLifecyclePolicy: removeGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Removes a group from a lifecycle policy.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "grouplifecyclepolicy_removegroup" } -->
[!INCLUDE [permissions-table](../includes/permissions/grouplifecyclepolicy-removegroup-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groupLifecyclePolicies/{id}/removeGroup
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json          |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type   | Description                                            |
| :-------- | :----- | :----------------------------------------------------- |
| groupId   | String | The identifier of the group to remove from the policy. |

## Response

If successful, this method returns `200 OK` response code. If the group is removed from the policy, a `true` value is returned in the response body. Otherwise, a `false` value is returned in the response body.

## Example

##### Request

<!-- {
  "blockType": "ignored",
  "name": "grouplifecyclepolicy_removegroup"
} -->

```http
POST https://graph.microsoft.com/beta/groupLifecyclePolicies/{id}/removeGroup
Content-type: application/json

{
  "groupId": "ffffffff-ffff-ffff-ffff-ffffffffffff"
}
```

##### Response

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy: removegroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
