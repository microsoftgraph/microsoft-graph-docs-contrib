---
title: "List ediscoveryHoldPolicies"
description: "Get a list of the ediscoveryHoldPolicy objects and their properties."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# List ediscoveryHoldPolicies
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects and their properties.

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
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoveryholdpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalHolds
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoveryholdpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-ediscoveryholdpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-ediscoveryholdpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ediscoveryholdpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-ediscoveryholdpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-ediscoveryholdpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryHoldPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/legalHolds",
    "@odata.count": 2,
    "value": [
        {
            "isEnabled": false,
            "errors": [],
            "contentQuery": "",
            "description": null,
            "createdDateTime": "2022-05-23T01:09:53Z",
            "lastModifiedDateTime": "2022-05-23T02:36:26Z",
            "status": "pending",
            "id": "783c3ea4-d474-4051-9c13-08707ce8c8b6",
            "displayName": "CustodianHold-b0073e4e-4184-41c6-9eb7-8c8cc3e2288b",
            "createdBy": {
                "application": null,
                "user": {
                    "id": "MOD Administrator",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "user": {
                    "id": "MOD Administrator",
                    "displayName": null
                }
            }
        },
        {
            "isEnabled": false,
            "errors": [],
            "contentQuery": "",
            "description": null,
            "createdDateTime": "2022-05-23T02:09:27Z",
            "lastModifiedDateTime": "2022-05-23T02:41:26Z",
            "status": "pending",
            "id": "ff7e8841-b1ac-41f0-87c5-fa00da045ae0",
            "displayName": "NCDSHold-b0073e4e-4184-41c6-9eb7-8c8cc3e2288b",
            "createdBy": {
                "application": null,
                "user": {
                    "id": "MOD Administrator",
                    "displayName": null
                }
            },
            "lastModifiedBy": {
                "application": null,
                "user": {
                    "id": "MOD Administrator",
                    "displayName": null
                }
            }
        }
    ]
}
```

