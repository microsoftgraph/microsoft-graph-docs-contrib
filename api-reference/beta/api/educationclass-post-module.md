---
title: "Create educationModule"
description: "Create a draft classwork module."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Create educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [module](../resources/educationmodule.md) in a [class](../resources/educationclass.md).

Only teachers in a class can create a module. Modules start in the `draft` state, which means that students won't see the modules until publication.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_post_module" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-post-module-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/modules
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [educationModule](../resources/educationmodule.md) object.

## Response
If successful, this method returns a `201 Created` response code and an [educationModule](../resources/educationmodule.md) object in the request body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationmodule_from_educationclass"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules
Content-type: application/json

{ 
  "displayName":"Module 2",
  "languageTag": "en-GB",
  "description": "Description for Module 2"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationmodule-from-educationclass-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-educationmodule-from-educationclass-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-educationmodule-from-educationclass-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationmodule-from-educationclass-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-educationmodule-from-educationclass-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-educationmodule-from-educationclass-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-educationmodule-from-educationclass-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules/$entity",
    "displayName": "Module 2",
    "description": "Description for Module 2",
    "resourcesFolderUrl": null,
    "isPinned": false,
    "status": "draft",
    "createdDateTime": "2025-05-16T20:23:47.0119173Z",
    "lastModifiedDateTime": "2025-05-16T20:23:47.0641043Z",
    "languageTag": "en-GB",
    "id": "1516df94-6817-405f-877f-d440ed32ca06",
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
