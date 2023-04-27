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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ediscoveryCase](../resources/security-ediscoverycase.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoverycase"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoverycase-csharp-snippets.md)]
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

---

### Response
The following is an example of the response.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases",
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

