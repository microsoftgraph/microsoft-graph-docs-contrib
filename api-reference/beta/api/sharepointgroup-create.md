---
title: "sharePointGroup: create"
description: "Create a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: create  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [sharePointGroup](../resources/sharepointgroup.md) object.

A **sharePointGroup** object is created by invoking this api.

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
POST /storage/fileStorage/containers/{containerId}/sharePointGroups/
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
In the request body, supply the values for the title and description of the **sharePointGroup**

|Property|Type|Description|
|:---|:---|:---|
|title|string|The title of the **sharePointGroup**. The title cannot be more than 255 characters long and cannot have the document library GUID embedded within it. Required.|
|description|string|A user-visible description of the **sharePointGroup**. Description cannot be longer than 512 characters. Optional.|

## Response

If successful, this action returns a `201 Created` response code with a json representation of the created group.

## Example 1: Create a new SharePointGroup that is local to a SharePointEmbedded container

The following example creates a new SharePointGroup under the container identified by `{containerId}`. The title and description of the SharePointGroup are shown in the request body.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sharepointgroup"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups
{
    "title": "Sample Group",
    "description": "This is a sample description"
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

The following example shows a sample response. The group is successfully created with a newly assigned id that acts as an identifier.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
{
    "id" : "4",
    "title": "Sample Group",
    "description": "This is sample description"
}
```