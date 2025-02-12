---
title: "sharePointGroupMember: list"
description: "List sharePointGroupMember objects."
author: "tmarwendo-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroupMember: list  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lists a [sharePointGroupMember](../resources/sharepointgroupmember.md) objects from a [sharePointGroup](../resources/sharepointgroup.md).

**SharePointGroupMember** objects are retrieved by invoking this api.

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
GET /storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}/members
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
No request body is supplied to this api.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the collection of **sharePointGroupMember**.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroupmembers"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}/members
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
  "value": [
    {
      "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
      "identity": {
        "user": {
        "displayName": "TestUser",
        "email": TestUser@testTenant.onmicrosoft.com
        }
      }
    },
    {
      "id": "YzowdC5jfHRlbmFudHxiODg5YmFkMy1lMTBlLTQ5M2MtYWY3MC1mMDdlZGJkMDcyZWM",
      "identity": {
        "user": {
        "displayName": "TestUser2",
        "email": TestUser2@testTenant.onmicrosoft.com
        }
      }
    }
  ]
}
```