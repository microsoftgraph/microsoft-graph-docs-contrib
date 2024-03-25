---
title: "List module resources"
description: "Get all the resources associated with a module."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
---

# List module resources

Namespace: microsoft.graph

Get all the [educationModuleResource](../resources/educationmoduleresource.md) objects associated with a [module](../resources/educationmodule.md). Only teachers, students, and applications with application permissions can perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationmodule_list_resources" } -->

[!INCLUDE [permissions-table](../includes/permissions/educationmodule-list-resources-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /education/classes/{id}/modules/{id}/resources
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationModuleResource](../resources/educationmoduleresource.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_moduleresources_1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/resources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-moduleresources-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-moduleresources-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-moduleresources-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-moduleresources-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-moduleresources-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-moduleresources-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-moduleresources-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-moduleresources-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModuleResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/modules('ba8e4215-4fb2-4dba-abe7-a8f2585177d3')/resources",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/modules('<guid>')/resources?$select=resource",
    "value": [
        {
            "id": "6257a14b-4e09-4af0-b013-cbb468e64f8f",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
                "createdDateTime": "2023-06-23T14:39:27.2137354Z",
                "lastModifiedDateTime": "2023-06-23T14:39:27.213885Z",
                "link": "https://wonderopolis.org/",
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
        },
        {
            "id": "445a73e6-a142-4681-87ff-beeff54cdce7",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "Where the Wonders of Learning Never Cease | Wonderopolis",
                "createdDateTime": "2023-06-23T14:40:41.0020471Z",
                "lastModifiedDateTime": "2023-06-23T14:40:41.002085Z",
                "link": "https://wonderopolis.org/",
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
        },
        {
            "id": "a920a29d-1f5c-48d6-b647-85b91dc1dbaf",
            "resource": {
                "@odata.type": "#microsoft.graph.educationLinkResource",
                "displayName": "2023-06-24T17_13_22_819Z",
                "createdDateTime": "2023-06-23T17:49:09.475663Z",
                "lastModifiedDateTime": "2023-06-23T17:49:09.4756658Z",
                "link": "https://www.bing.com",
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
        }
    ]
}
```
