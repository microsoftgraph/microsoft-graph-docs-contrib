---
title: "List ediscoveryCases"
description: "Get a list of the eDiscovery cases"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: apiPageType
---

# List ediscoveryCases
Namespace: microsoft.graph.security



Get a list of the [ediscoveryCase](../resources/security-ediscoverycase.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casesroot_list_ediscoverycases" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casesroot-list-ediscoverycases-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoverycase"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoverycase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-ediscoverycase-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-ediscoverycase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-ediscoverycase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ediscoverycase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-ediscoverycase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-ediscoverycase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-ediscoverycase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryCase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases",
    "@odata.count": 22,
    "value": [
        {
            "description": "",
            "lastModifiedDateTime": "2022-05-19T23:30:41.23Z",
            "status": "active",
            "closedDateTime": null,
            "externalId": "",
            "id": "60f86305-ac3e-408b-baa2-ea585dd8b0c0",
            "displayName": "My case 1",
            "createdDateTime": "2022-05-19T23:30:41.23Z",
            "lastModifiedBy": {
                "application": null,
                "user": {
                    "id": null,
                    "displayName": "MOD Administrator"
                }
            },
            "closedBy": {
                "application": null,
                "user": {
                    "id": null,
                    "displayName": ""
                }
            }
        },
        {
            "description": "",
            "lastModifiedDateTime": "2022-05-18T23:05:07.82Z",
            "status": "active",
            "closedDateTime": null,
            "externalId": "",
            "id": "7acdda75-3559-4f93-9827-cbd4c89db033",
            "displayName": "My case 2",
            "createdDateTime": "2022-05-18T23:05:07.82Z",
            "lastModifiedBy": {
                "application": null,
                "user": {
                    "id": null,
                    "displayName": "MOD Administrator"
                }
            },
            "closedBy": {
                "application": null,
                "user": {
                    "id": null,
                    "displayName": ""
                }
            }
        }
    ]
}
```

