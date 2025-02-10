---
title: "sharePointGroupMember: get"
description: "Get a sharePointGroupMember object."
author: "tmarwendo-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroupMember: get  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a [sharePointGroupMember](../resources/sharepointgroupmember.md) object from a [sharePointGroup](../resources/sharepointgroup.md).

A **sharePointGroupMember** object is retrieved by invoking this api.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This api only supports application only permissions.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{id}/sharePointGroups/{sharePointGroupId}/members
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
No request body is supplied to this api.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the retrieved **sharePointGroupMember**.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroupmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}/members/{groupMemberId}
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

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
    "id" : "dsfadjlfaksdjfswerasdfw",
    "identity":
    {
        "user":
        {
            "displayName: "User 0",
            "email" : "user0@contoso.com"
        }
    }
}
```