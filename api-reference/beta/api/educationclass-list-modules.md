---
title: "List class modules"
description: "Retrieve a list of module objects."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List class modules

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [module](../resources/educationmodule.md) objects. Only teachers, students, and applications with application permissions can perform this operation.

A teacher or an application with application permissions can see all module objects for the class. Students can only see published modules.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationclass_list_modules" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationclass-list-modules-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/modules
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

The available `$expand` option for this method is: `resources`.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationModule](../resources/educationmodule.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_modules_for_classID"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-modules-for-classid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-modules-for-classid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-modules-for-classid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-modules-for-classid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-modules-for-classid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-modules-for-classid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-modules-for-classid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-modules-for-classid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules",
    "value": [
        {
            "displayName": "Module 1",
            "description": "<div style=\"font-family: inherit; font-size: inherit; color: inherit; background-color: inherit;\">Description for module 1 updated</div>",
            "resourcesFolderUrl": "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZUN7H5IXZPURF3DDZKOAEHN6ZW",
            "isPinned": false,
            "status": "draft",
            "createdDateTime": "2023-07-19T22:18:24.0753841Z",
            "lastModifiedDateTime": "2023-07-19T22:38:03.8575605Z",
            "id": "5955f965-99aa-4fba-ad88-e291afeaf81d",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            }
        },
        {
            "displayName": "Module 4",
            "description": "<div style=\"font-family: inherit; font-size: inherit; color: inherit; background-color: inherit;\">description for module 4</div>",
            "resourcesFolderUrl": null,
            "isPinned": false,
            "status": "published",
            "createdDateTime": "2023-07-20T17:24:54.6405196Z",
            "lastModifiedDateTime": "2023-07-20T17:32:25.4635665Z",
            "id": "4ae4afc7-af22-45c1-9f11-cee40a60c967",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
                    "displayName": null
                }
            }
        }
    ]
}
```
