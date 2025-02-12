---
title: "sharePointGroupMember: create"
description: "Create a sharePointGroupMember object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroupMember: create  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [sharePointGroupMember](../resources/sharepointgroupmember.md) object.

A **sharePointGroupMember** object is created by invoking this api.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Applications calling this API must have permissions to add containers permissions of containers of type identified by `containerTypeId`.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{containerId}/sharePointGroups/members
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [sharePointGroupMember](../resources/sharepointgroupmember.md) resource  that includes a [sharePointIdentitySet](../resources/sharepointidentityset.md) to refer to the identity that is to be added to the [sharePointGroup](../resources/sharepointgroup.md).

Said `sharePointIdentitySet` may only contain one and only one of "user" or "group". 

If the `sharePointIdentitySet` contains "user", it should have one and only one of "id" or "upn" to refer to the user identity.

If the `sharePointIdentitySet` contains "group", it should have one and only one of "id" or "email" to refer to the group identity. This group identity can only refer to an m365 group.

|Property|Type|Description|
|:---|:---|:---|
|identity|{"@odata.type": "microsoft.graph.sharePointIdentitySet"}|The identity of the **sharePointGroupMember**. Required.|

## Response

If successful, this action returns a `201 Created` response code with a json representation of the created **sharePointGroupMember**.

## Example 1: Create a sharePointGroupMember using their upn

The following adds a member to a sharePointGroup identified by `{sharePointGroupId}` that is under a container identified by `{containerId}`. We add the member via the member's UPN.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sharepointgroupmember"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}/members
{
    "identity":
    {
        "user":
        {
            "userPrincipalName" : "user0@contoso.com"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/activate-filestoragecontainer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/activate-filestoragecontainer-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/activate-filestoragecontainer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/activate-filestoragecontainer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/activate-filestoragecontainer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/activate-filestoragecontainer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/activate-filestoragecontainer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows a sample response with a json object representing the created member.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
{
  "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
  "identity": {
    "user": {
      "displayName": "TestUser",
      "email": TestUser@testTenant.onmicrosoft.com
      }
    }
}
```