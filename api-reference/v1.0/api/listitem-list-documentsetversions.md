---
title: "List documentSetVersions"
description: "Get a list of the versions of a document set item in a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# List documentSetVersions
Namespace: microsoft.graph

Get a list of the [versions of a document set](../resources/documentsetversion.md) item in a [list](../resources/list.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                  |
|:---------------------------------------|:---------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All                 |
| Delegated (personal Microsoft account) | Not supported.                                                                               |
| Application                            | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All, Sites.Selected |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{siteId}/lists/{listId}/items/{itemId}/documentSetVersions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [documentSetVersion](../resources/documentsetversion.md) objects in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_documentsetversion",
  "sampleKeys": ["root", "Documents", "1"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/sites/root/lists/Documents/items/1/documentSetVersions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-documentsetversion-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-documentsetversion-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-documentsetversion-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-documentsetversion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-documentsetversion-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-documentsetversion-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "list_documentsetversion",
  "truncated": true,
  "@odata.type": "microsoft.graph.documentSetVersion",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "2",
            "lastModifiedDateTime": "2022-04-05T04:55:29Z",
            "comment": "v2",
            "createdDateTime": "2022-04-05T04:55:29Z",
            "shouldCaptureMinorVersion": false,
            "lastModifiedBy": {
                "user": {
                    "displayName": "Tenant Admin User",
                    "email": "admin@contoso.sharepoint.com"
                }
            },
            "items": [
                {
                    "itemId": "a5d83ae7-8c3e-4a2c-bc3e-8f276db857bf",
                    "versionId": "1.0"
                },
                {
                    "itemId": "62d40672-befe-4017-934b-06372fd96022",
                    "versionId": "1.0"
                }
            ],
            "createdBy": {
                "user": {
                    "displayName": "Tenant Admin User",
                    "email": "admin@contoso.sharepoint.com"
                }
            }
        },
        {
            "id": "1",
            "lastModifiedDateTime": "2022-04-05T04:53:42Z",
            "comment": "v1",
            "createdDateTime": "2022-04-05T04:53:42Z",
            "shouldCaptureMinorVersion": false,
            "lastModifiedBy": {
                "user": {
                    "displayName": "Tenant Admin User",
                    "email": "admin@contoso.sharepoint.com"
                }
            },
            "items": [
                {
                    "itemId": "a5d83ae7-8c3e-4a2c-bc3e-8f276db857bf",
                    "versionId": "1.0"
                }
            ],
            "createdBy": {
                "user": {
                    "displayName": "Tenant Admin User",
                    "email": "admin@contoso.sharepoint.com"
                }
            }
        }
    ]
}
```

