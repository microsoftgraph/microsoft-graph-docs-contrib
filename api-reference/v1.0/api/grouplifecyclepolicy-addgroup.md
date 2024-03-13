---
title: "groupLifecyclePolicy: addGroup"
description: "Adds a group to a lifecycle policy."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: apiPageType
---

# groupLifecyclePolicy: addGroup

Namespace: microsoft.graph

Adds specific groups to a lifecycle policy. This action limits the group lifecycle policy to a set of groups only if the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) is set to `Selected`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "grouplifecyclepolicy_addgroup" } -->
[!INCLUDE [permissions-table](../includes/permissions/grouplifecyclepolicy-addgroup-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groupLifecyclePolicies/{id}/addGroup
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json          |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type   | Description                                       |
| :-------- | :----- | :------------------------------------------------ |
| groupId   | String | The identifier of the group to add to the policy. |

When the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) is set to `Selected`, you can add up to 500 groups to the list. If you need to add more than 500 groups, the **managedGroupTypes** property of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) must be set to `All`.

Only one group can be added per request.

## Response

If successful, this method returns `200 OK` response code. If the group is added to the policy, a `true` value is returned in the response body. Otherwise, a `false` value is returned in the response body.

## Example

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "grouplifecyclepolicy_addgroup"
} -->

```http
POST https://graph.microsoft.com/v1.0/groupLifecyclePolicies/{id}/addGroup
Content-type: application/json

{
  "groupId": "ffffffff-ffff-ffff-ffff-ffffffffffff"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/grouplifecyclepolicy-addgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/grouplifecyclepolicy-addgroup-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/grouplifecyclepolicy-addgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/grouplifecyclepolicy-addgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/grouplifecyclepolicy-addgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/grouplifecyclepolicy-addgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/grouplifecyclepolicy-addgroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/grouplifecyclepolicy-addgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy: addgroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
