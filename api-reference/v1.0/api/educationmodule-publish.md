---
title: "educationModule: publish"
description: "Change the state of an educationModule from its original draft status to the published status."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: apiPageType
---

# educationModule: publish

Namespace: microsoft.graph

Change the state of an [educationModule](../resources/educationmodule.md) from its original `draft` status to the `published` status.

Only teachers in the class can perform this operation. When a module is in draft status, students can't see the module. When you call this API, the module appears in the student's class work list.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_publish" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmodule-publish-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/classes/{id}/modules/{id}/publish

```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 Ok` response code and an [educationModule](../resources/educationmodule.md) object in the response body.

## Example

The following example shows how to call this API.

### Request

Here's an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","24eda3bf-32e5-4c70-a14d-831e606a2e4f"],
  "name": "educationmodule_publish_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/24eda3bf-32e5-4c70-a14d-831e606a2e4f/publish
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationmodule-publish-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/educationmodule-publish-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationmodule-publish-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationmodule-publish-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationmodule-publish-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationmodule-publish-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationmodule-publish-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/educationmodule-publish-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of a response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayName": "Module 1",
    "description": "",
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZCBAPOCYIUORH3LR4TLRMAZBKM",
    "isPinned": true,
    "status": "published",
    "createdDateTime": "2023-04-25T23:30:08.1049633Z",
    "lastModifiedDateTime": "2024-01-17T17:51:45.2043182Z",
    "id": "24eda3bf-32e5-4c70-a14d-831e606a2e4f",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    }
}
```
