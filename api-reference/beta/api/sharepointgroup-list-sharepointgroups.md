---
title: "sharePointGroup: list"
description: "List sharePointGroup objects."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: list  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [sharePointGroup](../resources/sharepointgroup.md) objects.

A collection of **sharePointGroup** objects that are local to the SharePointEmbedded container or SharePoint site is returned.

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
GET /storage/fileStorage/containers/{containerId}/sharePointGroups
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
No request body is supplied for this api.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the collection of retrieved group.

## Example 1 : Retrieve all the existing SharePointGroups that are local to a container
The following example retrieves all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups
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

The following example shows a sample response containing the collection of SharePointGroups that exist.

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
      "id": "7",
      "title": "sampleTitle1",
      "description": "sampleDescription1"
    },
    {
      "id": "9",
      "title": "sampleTitle2",
      "description": "sampleDescription2"
    }
  ]
}
```

## Example 2 : Attempt to retrieve all the existing SharePointGroups that are local to a container. The container has no SharePointGroups
The following example attempts to retrieve all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`. This container is new and has no SharePointGroups in it.

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups
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

The following example shows a sample response. As there are no SharePointGroups in the container, the response has an empty list.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers({containerId})/sharePointGroups",
  "value": []
}
```