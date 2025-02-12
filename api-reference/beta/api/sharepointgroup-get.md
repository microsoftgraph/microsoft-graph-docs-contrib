---
title: "sharePointGroup: get"
description: "Get a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: get  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [sharePointGroup](../resources/sharepointgroup.md) object.

A **sharePointGroup** object is retrieved by invoking this api.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Applications calling this API must have permissions to get containers permissions of containers of type identified by `containerTypeId`.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
No request body is supplied for this api.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the retrieved group.

## Example 1: Get a SharePointGroup using id 
The following example retrieves a SharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`.

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
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

The following example shows s sample response with a json object representing the SharePointGroup

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
  "id" : "4",
  "title": "Sample Group",
  "description": "This is sample description"
}
```

## Example 2: Attempt to get a SharePointGroup using id 
The following example attempts to get a SharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`. There is no such group in the container.

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroup_item_not_found"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
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

The following example shows a sample response detailing the non-existence of the group.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 404 Not Found
{
  "error": {
    "code": "itemNotFound",
    "message": "Item not found"
  }
}
```