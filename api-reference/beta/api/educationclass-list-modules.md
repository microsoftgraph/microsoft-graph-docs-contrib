---
title: "List class modules"
description: "Retrieve a list of module objects."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 04/05/2024
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
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules?$select=createdBy,createdDateTime",
    "value": [
        {
            "displayName": "Module 1",
            "description": "Description for Module 1",
            "resourcesFolderUrl": null,
            "isPinned": false,
            "status": "draft",
            "createdDateTime": "2024-01-17T17:41:42.8815952Z",
            "lastModifiedDateTime": "2025-04-29T14:52:48.3049056Z",
            "languageTag": null,
            "id": "1b9a03b6-dcc5-4ff1-8226-b92e25072f43",
            "createdBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "device": null,
                "user": {
                    "id": "fadaae59-b18c-44d1-993f-fe8a281bd69c",
                    "displayName": null
                }
            }
        }
    ]
}
```
