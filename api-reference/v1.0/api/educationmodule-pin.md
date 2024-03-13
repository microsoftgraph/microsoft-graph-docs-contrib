---
title: "educationModule: pin"
description: "Pin an educationModule in the class work list."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: apiPageType
---

# educationModule: pin

Namespace: microsoft.graph

Pin an [educationModule](../resources/educationmodule.md) in the class work list. This action sets the **isPinned** property to `true` for an [educationModule](../resources/educationmodule.md).

Only teachers can perform this action and only one module at a time can be pinned in the class work list.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_pin" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmodule-pin-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /education/classes/{id}/modules/{id}/pin
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [educationModule](../resources/educationmodule.md) object in the response body.

## Example

### Request

The following examples shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["37d99af7-cfc5-4e3b-8566-f7d40e4a2070","ba8e4215-4fb2-4dba-abe7-a8f2585177d3"],
  "name": "educationmodule_pin_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/pin
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/educationmodule-pin-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/educationmodule-pin-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/educationmodule-pin-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/educationmodule-pin-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/educationmodule-pin-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/educationmodule-pin-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/educationmodule-pin-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/educationmodule-pin-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following examples shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->

```http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayName": "Module 1",
    "description": "",
    "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZCBAPOCYIUORH3LR4TLRMAZBKM",
    "isPinned": true,
    "status": "published",
    "createdDateTime": "2023-04-25T23:30:08.1049633Z",
    "lastModifiedDateTime": "2024-01-17T17:50:15.2675344Z",
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
